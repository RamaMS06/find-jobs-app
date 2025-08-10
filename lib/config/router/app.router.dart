part of 'provider.dart';

typedef GoRouterRedirect = FutureOr<String?> Function(
  BuildContext context,
  GoRouterState state,
);

final routerProvider = Provider<GoRouter>((ref) {
  final authUser = ref.read(currentUserProvider);
  final authRole = ref.read(currentRoleProvider);
  return _routeConfig(redirect: (context, state) {
    final isUserReady = authUser?.name != null;
    final isGuest = authRole?.role == UserRoleEnum.guest;
    final location = state.uri.toString();

    if (isUserReady && !isGuest && location == '/') {
      return '/home';
    }
    if (isGuest) {
      null;
    }
    return null;
  });
});

GoRouter _routeConfig({GoRouterRedirect? redirect}) => GoRouter(
      redirect: redirect,
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const LoginPage(),
        ),
        GoRoute(
          path: '/home',
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: '/detail-job',
          builder: (context, state) => const DetailJobPage(),
        ),
      ],
      errorBuilder: (context, state) => Scaffold(
        appBar: AppBar(title: const RText("404")),
        body: Center(child: RText("Page not found: ${state.uri}")),
      ),
    );
