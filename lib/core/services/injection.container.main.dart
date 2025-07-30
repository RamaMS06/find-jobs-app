part of 'injection.container.dart';

GetIt sl = GetIt.instance;

Future<void> init() async {
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: FirebaseEnv.apiKey,
      appId: Platform.isIOS ? FirebaseEnv.appIdIos : FirebaseEnv.appIdAndroid,
      messagingSenderId: FirebaseEnv.messagingSenderId,
      projectId: FirebaseEnv.projectId,
    ),
  );
  final prefs = await SharedPreferences.getInstance();
  sl.registerSingleton(prefs);
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
    ..registerLazySingleton<GetRoleUserUseCase>(
      () => GetRoleUserUseCase(sl()),
    )
    ..registerLazySingleton<SaveRoleUserUseCase>(
      () => SaveRoleUserUseCase(sl()),
    )
    ..registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(sl()))
    ..registerLazySingleton<AuthDataSource>(() => AuthDataSourceImpl(sl()))
    ..registerLazySingleton<GoogleSignIn>(() => GoogleSignIn());
}
