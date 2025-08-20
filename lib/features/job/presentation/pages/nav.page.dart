part of 'page.dart';

class NavigationPage extends ConsumerStatefulWidget {
  const NavigationPage({super.key});

  @override
  ConsumerState<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends ConsumerState<NavigationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controllerTop;

  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _controllerTop = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );

    _controllerTop.forward();
  }

  @override
  void dispose() {
    _controllerTop.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(authControllerProvider, (previous, next) {
      next.maybeWhen(
        signOutSuccess: () {
          context.go('/');
        },
        orElse: () {
          return;
        },
      );
    });

    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: RColor.background.dark.withOpacity(0.1),
              offset: const Offset(0, -4),
              blurRadius: 8,
            )
          ],
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(10),
          ),
        ),
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: ref.watch(homeIndexPageProvider),
            selectedItemColor: RColor.background.info,
            selectedLabelStyle: RFont.body.copyWith(
              color: RColor.background.info,
            ),
            unselectedLabelStyle: RFont.body.copyWith(
              color: RColor.background.dark,
            ),
            onTap: (index) {
              _pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
              ref.read(homeIndexPageProvider.notifier).state = index;
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(EvaIcons.briefcaseOutline),
                activeIcon: Icon(EvaIcons.briefcase),
                label: 'Jobs',
              ),
              BottomNavigationBarItem(
                icon: Icon(EvaIcons.clipboardOutline),
                activeIcon: Icon(EvaIcons.clipboard),
                label: 'Tasks',
              ),
            ]),
      ),
      body: SafeArea(
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: const [
            HomePage(
              key: PageStorageKey('job'),
            ),
            TaskPage(
              key: PageStorageKey('task'),
            )
          ],
        ),
      ),
    );
  }
}