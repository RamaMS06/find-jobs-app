import 'package:find_job_app/core/common/common.dart';
import 'package:find_job_app/core/common/components/text/text.vertical.widget.dart';
import 'package:find_job_app/core/shared_data/auth/presentation/controller/auth.controller.dart';
import 'package:find_job_app/features/home/presentation/controller/home.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controllerTop;

  @override
  void initState() {
    super.initState();
    _controllerTop = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );
    // Text animates in first (0.0 - 0.5 of controller)

    // For left animation, use a different interval for duration effect

    _controllerTop.forward();

    Future.microtask(() {
      ref.read(homeControllerProvider.notifier).findJobs();
    });
  }

  @override
  void dispose() {
    _controllerTop.dispose();
    super.dispose();
  }

  Future<Widget> _buildHeader() async {
    final user = ref.watch(authControllerProvider.notifier).currentUser;
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
                text: user?.name ?? 'Workaholic!',
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
          child: user?.photoUrl == null
              ? Lottie.asset('assets/lottie/person.json', repeat: false)
              : Image.network(user?.photoUrl ?? ''),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(authControllerProvider, (previous, next) {
      if (next is SignOutSuccess) {
        context.go('/');
      }
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
                FutureBuilder(
                  future: _buildHeader(),
                  builder: (context, snapshot) {
                    return snapshot.data ?? const SizedBox.shrink();
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                const RMSearchField(),
                const SizedBox(
                  height: 16,
                ),
                const _HomePageBody(),
                RMButton(
                  text: 'Sign Out',
                  onPressed: () {
                    ref.read(authControllerProvider.notifier).signOut();
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _HomePageBody extends ConsumerStatefulWidget {
  const _HomePageBody({super.key});

  @override
  ConsumerState<_HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends ConsumerState<_HomePageBody> {
  @override
  Widget build(BuildContext context) {
    final jobs = ref.watch(homeControllerProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        jobs.when(success: (value) {
          return Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              RMText(
                'There are ',
                style: RMFont.subheading.h6,
              ),
              RMCountingText(
                from: 0,
                to: 100,
                textStyle: RMFont.subheading.h6.copyWith(
                  color: RMColor.background.info,
                ),
                duration: const Duration(seconds: 4),
                decimalPlaces: 0,
              ),
              RMText(
                ' jobs in the world',
                style: RMFont.subheading.h6,
              ),
            ],
          );
        }, loading: () {
          return const SizedBox(
            height: 24,
            width: 24,
            child: CircularProgressIndicator(),
          );
        }, failed: (message) {
          return Text(message);
        }, initial: () {
          return const SizedBox.shrink();
        }),
        const SizedBox(
          height: 16,
        ),
        jobs.when(success: (value) {
          return Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: RMColor.background.white,
              border: Border.all(color: RMColor.background.dark, width: 1),
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: RMColor.background.dark,
                  offset: const Offset(4, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                        height: 40,
                        width: 40,
                        child: Image.network(
                            'https://remotive.com/job/1919265/logo')),
                  ],
                )
              ],
            ),
          );
        }, loading: () {
          return const SizedBox.shrink();
        }, failed: (message) {
          return Text(message);
        }, initial: () {
          return const SizedBox.shrink();
        }),
      ],
    );
  }
}
