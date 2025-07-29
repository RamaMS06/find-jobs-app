part of 'injection.container.dart';

GetIt sl = GetIt.instance;

Future<void> init() async {
  await _authInit();
}

Future<void> _authInit() async {
  sl
    ..registerLazySingleton(
      () => SignInUseCase(sl()),
    )
    ..registerLazySingleton(
      () => SignOutUseCase(sl()),
    )
    ..registerLazySingleton<CurrentUserUseCase>(
      () => CurrentUserUseCase(sl()),
    )
    ..registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(sl()))
    ..registerLazySingleton<AuthDataSource>(() => AuthDataSourceImpl(sl()))
    ..registerLazySingleton<GoogleSignIn>(() => GoogleSignIn());
}
