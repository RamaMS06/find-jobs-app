import 'dart:developer';

import 'package:find_job_app/core/services/injection.container.dart';
import 'package:find_job_app/core/services/result.dart';
import 'package:find_job_app/core/shared_data/auth/data/datasources/auth.datasource.dart';
import 'package:find_job_app/core/shared_data/auth/data/models/user.model.dart';
import 'package:find_job_app/core/shared_data/auth/data/models/user.role.model.dart';
import 'package:find_job_app/core/shared_data/auth/domain/entities/user.role.entitiy.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final _googleSignIn = sl<GoogleSignIn>();
  final _firebaseAuth = sl<FirebaseAuth>();

  @override
  Future<Result<UserModel>> signInWithGoogle() async {
    try {
      final account = await _googleSignIn.signIn();
      if (account == null) {
        return const Result.failed('User cancelled');
      }
      final auth = await account.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: auth.accessToken,
        idToken: auth.idToken,
      );

      final user = await _firebaseAuth.signInWithCredential(credential);
      if (user.user == null || user.user?.uid == null || user.user?.uid == '') {
        // Defensive: Ensure user id is not empty, as this can cause Firestore/other doc path errors
        return const Result.failed('No valid user returned from Firebase');
      }
      return Result.success(UserModel(
        id: user.user?.uid,
        name: user.user?.displayName,
        email: user.user?.email,
        photoUrl: user.user?.photoURL,
      ));
    } catch (e) {
      // Always return failed, but never throw
      return const Result.failed('Sign in failed');
    }
  }

  @override
  UserModel? get currentUser {
    final user = _firebaseAuth.currentUser;
    if (user == null || user.uid.isEmpty) {
      // Defensive: Prevent returning a user with empty uid, which can cause doc path errors
      return null;
    }
    return UserModel(
      id: user.uid,
      name: user.displayName,
      email: user.email,
      photoUrl: user.photoURL,
    );
  }

  @override
  Future<Result<UserModel?>> signOut() async {
    await _firebaseAuth.signOut();
    await _googleSignIn.signOut();
    await _googleSignIn.disconnect();
    inspect(currentUser);
    sl<SharedPreferences>().clear();

    return const Result.success(null);
  }

  @override
  UserRoleModel? get currentRole {
    final role = sl<SharedPreferences>().getString('user_role');
    try {
      return UserRoleModel(
        role: UserRoleEnum.values.byName(role ?? UserRoleEnum.guest.name),
      );
    } catch (_) {
      // Defensive: If role string is invalid, fallback to guest
      return const UserRoleModel(role: UserRoleEnum.guest);
    }
  }

  @override
  void saveRole(UserRoleModel role) {
    sl<SharedPreferences>().setString('user_role', role.role.name);
  }
}
