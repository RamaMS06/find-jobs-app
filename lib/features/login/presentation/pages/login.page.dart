import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:find_job_app/core/common/common.dart';
import 'package:find_job_app/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';
import '../../../../core/shared_data/auth/presentation/controller/auth.controller.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginController = ref.read(authControllerProvider.notifier);
    final loginState = ref.watch(authControllerProvider);

    ref.listen(authControllerProvider, (previous, next) {
      if (next is AuthSuccess) {
        context.go('/home');
      } else if (next is AuthFailed) {
        RMAlert.showAlert(context, next.message, type: RMAlertType.error);
      }
    });

    // The problem is that the Positioned widget is being returned inside the TweenAnimationBuilder's builder,
    // but the builder is not a child of Stack, so the Positioned is not being interpreted correctly.
    // Instead, you should use the 'child' parameter of TweenAnimationBuilder and only animate the position.
    // Let's fix this by moving the Positioned outside and only animating the left property.

    return Scaffold(
      body: Stack(
        children: [
          // Animated wave background
          TweenAnimationBuilder<double>(
            tween: Tween<double>(
                begin: -MediaQuery.of(context).size.height * 0.7, end: 0),
            duration: const Duration(milliseconds: 1000),
            curve: Curves.easeInOutCubicEmphasized,
            builder: (context, value, child) {
              return Positioned(
                top: value,
                left: 0,
                right: 0,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.85,
                  child: RotatedBox(
                    quarterTurns: 2,
                    child: WaveWidget(
                      config: CustomConfig(
                        gradients: [
                          [RMColor.background.white, RMColor.shades.blue[400]!],
                          [
                            RMColor.shades.blue[200]!,
                            RMColor.shades.blue[400]!
                          ],
                          [
                            RMColor.shades.blue[100]!,
                            RMColor.shades.blue[300]!
                          ],
                          [RMColor.background.white, RMColor.shades.blue[200]!]
                        ],
                        durations: [35000, 19440, 10800, 6000],
                        heightPercentages: [0.20, 0.23, 0.25, 0.30],
                        gradientBegin: Alignment.bottomLeft,
                        gradientEnd: Alignment.topRight,
                      ),
                      size: Size(
                        double.infinity,
                        MediaQuery.of(context).size.height * 0.9,
                      ),
                      waveAmplitude: 15,
                      waveFrequency: 1.6,
                    ),
                  ),
                ),
              );
            },
          ),
          // Animated login form
          TweenAnimationBuilder<double>(
            tween: Tween<double>(
                begin: -MediaQuery.of(context).size.width,
                end: MediaQuery.of(context).size.height * 0.15),
            duration: const Duration(milliseconds: 1200),
            curve: Curves.easeInOutCubicEmphasized,
            builder: (context, value, child) {
              return Positioned(
                left: 16,
                right: 16,
                bottom: value,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RMText(
                        'Sign Up',
                        style: RMFont.heading.h3,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      RMText(
                        'It\'s free and only takes a minute',
                        style: RMFont.subheading.h7.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: loginState is Loading
                            ? const CircularProgressIndicator()
                            : RMButton(
                                text: 'Sign up with Google',
                                textColor: RMColor.text.dark,
                                bgColor: RMColor.background.white,
                                onPressed: () async {
                                  await loginController.signIn();
                                },
                                trailingIcon: Image.asset(
                                  'assets/images/google.png',
                                  width: 18,
                                  height: 18,
                                ),
                              ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: loginState is Loading
                            ? const CircularProgressIndicator()
                            : RMButton(
                                text: 'Sign up as a guest',
                                textColor: RMColor.text.white,
                                bgColor: RMColor.shades.blue[400],
                                onPressed: () async {
                                  context.go('/home');
                                },
                                trailingIcon: Icon(
                                  EvaIcons.person,
                                  size: 18,
                                  color: RMColor.text.white,
                                )),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
