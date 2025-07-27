import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:find_job_app/features/home/home.dart';
import 'package:find_job_app/features/login/login.dart';

final GoRouter router = GoRouter(
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
    // GoRoute(
    //   path: '/user/:id',
    //   builder: (context, state) {
    //     final userId = state.pathParameters['id']!;
    //     return UserDetailPage(userId: userId);
    //   },
    // ),
  ],
  errorBuilder: (context, state) => Scaffold(
    appBar: AppBar(title: const Text("404")),
    body: Center(child: Text("Page not found: ${state.uri}")),
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
