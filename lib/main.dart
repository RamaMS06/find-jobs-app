import 'package:find_job_app/config/router/provider.dart';
import 'package:find_job_app/core/common/common.dart';
import 'package:find_job_app/core/services/injection.container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  await init();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: false,
        scaffoldBackgroundColor: RColor.background.white,
        appBarTheme: AppBarTheme(
          foregroundColor: RColor.background.dark,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: RColor.background.white,
        ),
      ),
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
