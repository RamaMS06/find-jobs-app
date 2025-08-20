part of 'injection.container.dart';

GetIt sl = GetIt.instance;

Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();
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
    // Usecase
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
    ..registerLazySingleton<SearchJobUseCase>(
      () => SearchJobUseCase(sl()),
    )
    ..registerLazySingleton<GetCountryUseCase>(
      () => GetCountryUseCase(sl()),
    )
    ..registerLazySingleton<SearchCountryUseCase>(
      () => SearchCountryUseCase(sl()),
    )
    ..registerLazySingleton<GetTaskUseCase>(
      () => GetTaskUseCase(sl()),
    )
    ..registerLazySingleton<AddTaskUseCase>(
      () => AddTaskUseCase(sl()),
    )

    // Repository
    ..registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(sl()),
    )
    ..registerLazySingleton<JobRepository>(
      () => JobRepositoryImpl(sl()),
    )
    ..registerLazySingleton<CountryRepository>(
      () => CountryRepositoryImpl(sl()),
    )
    ..registerLazySingleton<TaskRepository>(
      () => TaskRepositoryImpl(sl()),
    )

    // Data Source
    ..registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(),
    )
    ..registerLazySingleton<JobRemoteDataSource>(
      () => JobRemoteDataSourceImpl(),
    )
    ..registerLazySingleton<CountryDatasource>(
      () => CountryDatasourceImpl(),
    )
    ..registerLazySingleton<TaskDataSource>(
      () => TaskDataSourceImpl(),
    )

    // Authentication
    ..registerLazySingleton<GoogleSignIn>(
      () => GoogleSignIn(),
    )
    ..registerLazySingleton<FirebaseAuth>(
      () => FirebaseAuth.instance,
    )
    ..registerLazySingleton<FirebaseFirestore>(
      () => FirebaseFirestore.instance,
    )

    // Package
    ..registerSingleton<Dio>(Dio());
}
