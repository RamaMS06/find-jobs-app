// ignore_for_file: use_build_context_synchronously

part of 'page.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginController = ref.read(authControllerProvider.notifier);
    final loginState = ref.watch(authControllerProvider);

    ref.listen(authControllerProvider, (previous, next) {
      next.maybeWhen(
        signUpSuccess: (data) {
          context.go('/home');
        },
        authFailed: (message) {
          RAlert.showAlert(context, message, type: RAlertType.error);
        },
        orElse: () {
          return;
        },
      );
    });

    return Scaffold(
      backgroundColor: RColor.background.white,
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
                child: Stack(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.85,
                      child: RotatedBox(
                        quarterTurns: 2,
                        child: WaveWidget(
                          config: CustomConfig(
                            gradients: [
                              [
                                RColor.background.white,
                                RColor.shades.blue[400]!
                              ],
                              [
                                RColor.shades.blue[200]!,
                                RColor.shades.blue[400]!
                              ],
                              [
                                RColor.shades.blue[100]!,
                                RColor.shades.blue[300]!
                              ],
                              [
                                RColor.background.white,
                                RColor.shades.blue[150]!
                              ]
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
                    const Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Center(
                        child: RLogo(),
                      ),
                    )
                  ],
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
                      RText(
                        'Sign Up',
                        style: RFont.heading.h3,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      RText(
                        'It\'s free and only takes a minute',
                        style: RFont.subheading.h7.copyWith(
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
                            : RButton(
                                text: 'Sign up with Google',
                                border: Border.all(
                                  color: RColor.background.dark.withOpacity(0.8),
                                  width: 0.25,
                                ),
                                textColor: RColor.text.dark,
                                bgColor: RColor.background.white,
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
                            : RButton(
                                text: 'Sign up as a guest',
                                textColor: RColor.text.white,
                                bgColor: RColor.shades.blue[400],
                                onPressed: () async {
                                  await loginController
                                      .saveRole(UserRoleEntity(
                                    role: UserRoleEnum.guest,
                                  ))
                                      .whenComplete(() {
                                    context.go('/home');
                                  });
                                },
                                trailingIcon: Icon(
                                  EvaIcons.person,
                                  size: 18,
                                  color: RColor.text.white,
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
