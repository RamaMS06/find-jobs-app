part of 'injection.container.dart';

GetIt sl = GetIt.instance;

Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  if (Firebase.apps.isEmpty) {
    try {
      await Firebase.initializeApp();
    } catch (e) {
      await Firebase.initializeApp(
        options: FirebaseOptions(
          apiKey: FirebaseEnv.apiKey,
          appId: Platform.isIOS ? FirebaseEnv.appIdIos : FirebaseEnv.appIdAndroid,
          messagingSenderId: FirebaseEnv.messagingSenderId,
          projectId: FirebaseEnv.projectId,
          databaseURL: FirebaseEnv.databaseURL,
        ),
      );
    }
  } else {
  }
  
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
    ..registerLazySingleton<GetDatesUseCase>(
      () => GetDatesUseCase(sl()),
    )
    ..registerLazySingleton<CheckedTaskUseCase>(
      () => CheckedTaskUseCase(sl()),
    )
    ..registerLazySingleton<DeleteTaskUseCase>(
      () => DeleteTaskUseCase(sl()),
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
    ..registerLazySingleton<FirebaseDatabase>(
      () {
        // Configure Firebase Database with the correct URL
        final database = FirebaseDatabase.instanceFor(
          app: Firebase.app(),
          databaseURL: FirebaseEnv.databaseURL,
        );
        return database;
      },
    )

    // Package
    ..registerSingleton<Dio>(Dio());
}
