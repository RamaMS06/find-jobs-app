import 'package:find_job_app/core/services/result.dart';
import 'package:find_job_app/core/shared_data/auth/data/models/user.model.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class AuthDataSource {
  Future<Result<UserModel>> signInWithGoogle();

  UserModel? get currentUser;

  Future<Result<UserModel?>> signOut();
}
