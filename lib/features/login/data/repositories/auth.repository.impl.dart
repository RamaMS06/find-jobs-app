import 'package:find_job_app/core/network/result.dart';
import 'package:find_job_app/features/login/domain/repositories/auth.repository.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../domain/entities/user.entity.dart';

class AuthRepositoryImpl implements AuthRepository {
  final GoogleSignIn _googleSignIn;

  AuthRepositoryImpl(this._googleSignIn);

  @override
  Future<Result<UserEntity?>> signInWithGoogle() async {
    final account = await _googleSignIn.signIn();
    if (account == null) {
      return const Result.failure('User cancelled');
    }
    return Result.success(UserEntity(
      id: account.id,
      name: account.displayName,
      email: account.email,
      photoUrl: account.photoUrl,
    ));
  }

  @override
  UserEntity? get currentUser {
    final user = _googleSignIn.currentUser;
    return UserEntity(
      id: user?.id,
      name: user?.displayName,
      email: user?.email,
      photoUrl: user?.photoUrl,
    );
  }

  @override
  Future<Result<UserEntity?>> signOut() async {
    await _googleSignIn.disconnect();
    
    return const Result.success(null);
  }
}
