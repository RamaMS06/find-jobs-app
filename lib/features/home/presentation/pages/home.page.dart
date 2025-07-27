import 'package:find_job_app/core/common/common.dart';
import 'package:find_job_app/core/shared_data/session/controller/session.controller.dart';
import 'package:find_job_app/features/login/data/providers/google.signin.provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controllerTop;
  late Animation<Offset> _slideTopAnimation;
  late Animation<Offset> _slideLeftAnimation;

  @override
  void initState() {
    super.initState();
    _controllerTop = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );
    // Text animates in first (0.0 - 0.5 of controller)
    _slideTopAnimation = Tween<Offset>(
      begin: const Offset(0, -1.5),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controllerTop,
        curve: Curves.easeOutCubic,
      ),
    );

    // For left animation, use a different interval for duration effect
    _slideLeftAnimation = Tween<Offset>(
      begin: const Offset(-1.5, 0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controllerTop,
        curve: const Interval(
          0.0,
          0.7, // Adjust this for different duration relative to controller
          curve: Curves.easeOutCubic,
        ),
      ),
    );

    _controllerTop.forward();
  }

  @override
  void dispose() {
    _controllerTop.dispose();
    super.dispose();
  }

  Widget _buildHeader() {
    final user = ref.watch(currentUserGoogleProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              RMText(
                'Hello!',
                style: RMFont.subheading.h6,
                color: RMColor.text.dark,
              ),
              const SizedBox(
                height: 6,
              ),
              RMTypewriterText(
                text: user?.name ?? '',
                textStyle: RMFont.heading.h3,
                loop: false,
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 24,
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(999),
            boxShadow: [
              BoxShadow(
                color: RMColor.background.dark,
                offset: const Offset(2, 3),
              ),
            ],
          ),
          width: 40,
          height: 40,
          child: Image.network(user?.photoUrl ?? ''),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(signOutControllerProvider, (previous, next) {
      next.when(
          success: (value) {
            context.go('/');
          },
          loading: () {},
          failed: (message) {
            RMAlert.showAlert(context, message, type: RMAlertType.error);
          });
    });
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildHeader(),
                const SizedBox(
                  height: 24,
                ),
                const RMSearchField(),
                const SizedBox(
                  height: 16,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'There are ',
                        style: RMFont.subheading.h6,
                      ),
                      TextSpan(
                        text: '1200+',
                        style: RMFont.subheading.h6.copyWith(
                          fontWeight: FontWeight.w700,
                          color: RMColor.text.info,
                        ),
                      ),
                      TextSpan(
                        text: ' jobs available',
                        style: RMFont.subheading.h6,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                // RMButton(
                //   text: 'Sign Out',
                //   onPressed: () {
                //     ref.read(signOutControllerProvider.notifier).signOut();
                //   },
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
