part of 'widget.dart';

class BottomSheetHome extends ConsumerStatefulWidget {
  final ValueChanged<CountryEntity> onSelected;
  const BottomSheetHome({super.key, required this.onSelected});

  @override
  ConsumerState<BottomSheetHome> createState() => __BottomSheetFilterState();
}

class __BottomSheetFilterState extends ConsumerState<BottomSheetHome>
    with TickerProviderStateMixin {
  Widget _buildHeader() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Stack(
            children: [
              Center(
                child: RText(
                  'Filter & Settings Jobs',
                  style: RFont.subheading.h5.copyWith(
                    fontSize: 18,
                  ),
                ),
              ),
              Positioned(
                right: 16,
                child: InkWell(
                  borderRadius: BorderRadius.circular(999),
                  onTap: () => context.pop(),
                  child: const Icon(
                    EvaIcons.close,
                    size: 24,
                  ),
                ),
              )
            ],
          ),
        ),
        Divider(
          color: RColor.background.dark,
          height: 1,
          thickness: 0.5,
        ),
      ],
    );
  }

  late final PageController _pageController;

  late final TabController _tabController;

  @override
  void initState() {
    _pageController = PageController(
        initialPage: ref.read(
      indexBottomSheetHome,
    ));
    _tabController = TabController(
        length: 2, vsync: this, initialIndex: ref.read(indexBottomSheetHome));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.8,
      minChildSize: 0.4,
      maxChildSize: 0.9,
      snap: true,
      builder: (context, scrollController) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildHeader(),
            Expanded(
              child: DefaultTabController(
                length: 2,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TabBar(
                      controller: _tabController,
                      onTap: (index) {
                        ref.read(indexBottomSheetHome.notifier).state = index;
                        _pageController.animateToPage(
                            ref.watch(indexBottomSheetHome.notifier).state,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut);
                      },
                      tabs: [
                        Tab(
                          child: RText(
                            'Country',
                            style: RFont.subheading.h6,
                          ),
                        ),
                        Tab(
                          child: RText(
                            'Settings',
                            style: RFont.subheading.h6,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 1,
                      color: RColor.background.dark.withOpacity(0.15),
                    ),
                    Expanded(
                      child: PageView(
                        controller: _pageController,
                        onPageChanged: (index) {
                          ref.read(indexBottomSheetHome.notifier).state = index;
                          _tabController.index =
                              ref.watch(indexBottomSheetHome.notifier).state;
                        },
                        children: [
                          BottomSheetCountry(
                            scrollController: scrollController,
                            onSelected: (value) {
                              widget.onSelected(value);
                            },
                          ),
                          BottomSheetSettings(
                            scrollController: scrollController,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
