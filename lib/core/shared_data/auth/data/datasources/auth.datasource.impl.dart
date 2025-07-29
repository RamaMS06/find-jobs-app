import 'package:find_job_app/core/services/injection.container.dart';
import 'package:find_job_app/core/services/result.dart';
import 'package:find_job_app/core/shared_data/auth/data/datasources/auth.datasource.dart';
import 'package:find_job_app/core/shared_data/auth/data/models/user.model.dart';
import 'package:find_job_app/core/shared_data/auth/data/models/user.role.model.dart';
import 'package:find_job_app/core/shared_data/auth/domain/entities/user.role.entitiy.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  Future<UserModel?> get currentUser async {
    final user = await _googleSignIn.signInSilently();
    return UserModel(
      id: user?.id,
      name: user?.displayName,
      email: user?.email,
      photoUrl: user?.photoUrl,
    );
  }

  @override
  Future<Result<UserModel?>> signOut() async {
    await _googleSignIn.signOut();

    return const Result.success(null);
  }

  @override
  UserRoleModel? get currentRole  {
    final role = sl<SharedPreferences>().getString('user_role');
    return UserRoleModel(role: UserRoleEnum.values.byName(role ?? UserRoleEnum.guest.name));
  }

  @override
  void saveRole(UserRoleModel role) {
    sl<SharedPreferences>().setString('user_role', role.role.name);
  }
}
