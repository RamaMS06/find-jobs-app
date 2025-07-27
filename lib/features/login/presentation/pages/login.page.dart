import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:find_job_app/core/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../controller/login.controller.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginController = ref.read(signInControllerProvider.notifier);
    final loginState = ref.watch(signInControllerProvider);

    ref.listen(signInControllerProvider, (previous, next) {
      next.when(
        success: (value) {
          context.go('/home');
        },
        failed: (message) {},
      );
    });

    return Scaffold(
        body: Center(
      child: loginState.isLoading
          ? const CircularProgressIndicator()
          : RMButton(
              text: 'Sign In with Google',
              textColor: RMColor.text.dark,
              bgColor: RMColor.background.white,
              onPressed: () async {
                await loginController.signIn();
                // await sessionController.getCurrentUser();
                // RMAlert.showAlert(context, 'Sign In with Google', type: RMAlertType.success, reverseColor: true,);
              },
              trailingIcon: Icon(
                EvaIcons.google,
                size: 18,
                color: RMColor.background.dark,
              ),
            ),
    ));
  }
}
