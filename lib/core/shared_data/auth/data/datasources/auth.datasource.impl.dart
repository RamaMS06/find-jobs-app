
import 'package:find_job_app/core/services/injection.container.dart';
import 'package:find_job_app/core/services/result.dart';
import 'package:find_job_app/core/shared_data/auth/data/datasources/auth.datasource.dart';
import 'package:find_job_app/core/shared_data/auth/data/models/user.model.dart';
import 'package:find_job_app/core/shared_data/auth/data/models/user.role.model.dart';
import 'package:find_job_app/core/shared_data/auth/domain/entities/user.role.entitiy.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthDataSourceImpl implements AuthDataSource {
  final GoogleSignIn _googleSignIn;
  final FirebaseAuth _firebaseAuth;

  AuthDataSourceImpl(this._googleSignIn, this._firebaseAuth);

  @override
  Future<Result<UserModel>> signInWithGoogle() async {
    final account = await _googleSignIn.signIn();
    if (account == null) {
      return const Result.failure('User cancelled');
    }

    final auth = await account.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: auth.accessToken,
      idToken: auth.idToken,
    );

    final user = await _firebaseAuth.signInWithCredential(credential);
    return Result.success(UserModel(
      id: user.user?.uid,
      name: user.user?.displayName,
      email: user.user?.email,
      photoUrl: user.user?.photoURL,
    ));
  }

  @override
  UserModel? get currentUser {
    final user = _firebaseAuth.currentUser;
    return UserModel(
      id: user?.uid,
      name: user?.displayName,
      email: user?.email,
      photoUrl: user?.photoURL,
    );
  }

  @override
  Future<Result<UserModel?>> signOut() async {
    await _firebaseAuth.signOut();
    await _googleSignIn.signOut();
    sl<SharedPreferences>().clear();

    return const Result.success(null);
  }

  @override
  UserRoleModel? get currentRole {
    final role = sl<SharedPreferences>().getString('user_role');
    return UserRoleModel(
        role: UserRoleEnum.values.byName(role ?? UserRoleEnum.guest.name));
  }

  @override
  void saveRole(UserRoleModel role) {
    sl<SharedPreferences>().setString('user_role', role.role.name);
  }
}
