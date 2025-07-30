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
    inspect(authUser);
    if (isUserReady && !isGuest) {
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
          pageBuilder: (context, state) => _buildFadeTransitionPage(
            key: state.pageKey,
            child: const HomePage(),
          ),
        ),
      ],
      errorBuilder: (context, state) => Scaffold(
        appBar: AppBar(title: const RMText("404")),
        body: Center(child: RMText("Page not found: ${state.uri}")),
      ),
    );

CustomTransitionPage _buildFadeTransitionPage({
  required LocalKey key,
  required Widget child,
}) {
  return CustomTransitionPage(
    key: key,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      final tween = Tween(begin: begin, end: end).chain(
        CurveTween(
          curve: Curves.easeInOut,
        ),
      );
      final offsetAnimation = animation.drive(tween);
      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}
