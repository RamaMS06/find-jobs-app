import 'package:find_job_app/core/services/result.dart';
import 'package:find_job_app/core/shared_data/auth/data/datasources/auth.datasource.dart';
import 'package:find_job_app/core/shared_data/auth/data/models/user.model.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthDataSourceImpl implements AuthDataSource {
  final GoogleSignIn _googleSignIn;

  AuthDataSourceImpl(this._googleSignIn);

  @override
  Future<Result<UserModel>> signInWithGoogle() async {
    final account = await _googleSignIn.signIn();
    if (account == null) {
      return const Result.failure('User cancelled');
    }
    return Result.success(UserModel(
      id: account.id,
      name: account.displayName,
      email: account.email,
      photoUrl: account.photoUrl,
    ));
  }

  @override
  UserModel? get currentUser {
    final user = _googleSignIn.currentUser;
    return UserModel(
      id: user?.id,
      name: user?.displayName,
      email: user?.email,
      photoUrl: user?.photoUrl,
    );
  }

  @override
  Future<Result<UserModel?>> signOut() async {
    await _googleSignIn.disconnect();

    return const Result.success(null);
  }
}
