part of 'page.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controllerTop;

  final ScrollController _scrollController = ScrollController();

  bool _showSearchBarShadow = false;

  final _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controllerTop = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );

    _controllerTop.forward();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(homeControllerProvider.notifier).findJobs();
      if (_scrollController.hasClients) {
        _scrollController.addListener(() {
          if (_scrollController.offset > 0) {
            setState(() {
              _showSearchBarShadow = true;
            });
          }
          if (_scrollController.offset < 10) {
            setState(() {
              _showSearchBarShadow = false;
            });
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _controllerTop.dispose();
    super.dispose();
  }

  Widget _buildHeader() {
    final user = ref.watch(authControllerProvider.notifier).currentUser;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            RText(
              'Hello!',
              style: RFont.subheading.h6,
              color: RColor.text.dark,
            ),
            const SizedBox(
              height: 6,
            ),
            RTypewriterText(
              text: user?.name ?? 'Workaholic!',
              textStyle: RFont.heading.h3,
              loop: false,
            ),
          ],
        ),
        const SizedBox(
          width: 24,
        ),
        RContainerShadow(
          width: 40,
          height: 40,
          child: user?.photoUrl == null
              ? Lottie.asset('assets/lottie/person.json', repeat: false)
              : CachedNetworkImage(
                  imageUrl: user?.photoUrl ?? '',
                  placeholder: (context, url) => Skeletonizer(
                    enabled: true,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(999),
                      ),
                    ),
                  ),
                  errorWidget: (context, url, error) => const SizedBox.shrink(),
                ),
        ),
      ],
    );
  }

  // Convert to SliverList for better integration with CustomScrollView
  Widget _buildJobCard(BuildContext context, job,
      {bool isGrid = false, double? height}) {
    return RContainerStack(
      onTap: () {
        ref.read(selectedJobProvider.notifier).state = job;
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          backgroundColor: RColor.background.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(10),
            ),
          ),
          builder: (context) => const BottomSheetDetailHome(),
        );
      },
      width: MediaQuery.of(context).size.width,
      height: height ?? 55,
      frontColor: RColor.background.white,
      backColor: RColor.background.white,
      backBorderColor: RColor.background.dark,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: isGrid
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      width: double.infinity,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: RColor.background.info,
                        border: Border.all(
                          color: RColor.background.dark,
                          width: 1,
                        ),
                      ),
                      child: Center(
                        child: RText(
                          (job.company ?? ''),
                          textAlign: TextAlign.center,
                          color: RColor.background.white,
                          style: GoogleFonts.aBeeZee(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLength: 5,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 8,
                        bottom: 8,
                        left: 8,
                        right: 8,
                      ),
                      child: _buildJobCardDetails(job),
                    ),
                  ),
                ],
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: RColor.background.info,
                        border: Border.all(
                          color: RColor.background.dark,
                          width: 1,
                        ),
                      ),
                      child: Center(
                        child: RText(
                          job.company ?? '',
                          textAlign: TextAlign.center,
                          color: RColor.background.white,
                          style: GoogleFonts.aBeeZee(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLength: 5,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 8,
                        bottom: 8,
                      ),
                      child: _buildJobCardDetails(job, maxLines: 1),
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  Widget _buildJobCardDetails(job, {int? maxLines}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        RText(
          job.title ?? '',
          style: RFont.subheading.h6,
          overflow: TextOverflow.ellipsis,
          maxLines: maxLines ?? 2,
          color: RColor.background.dark,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                EvaIcons.pin,
                size: 14,
                color: RColor.background.dark,
              ),
              const SizedBox(width: 4),
              RText(
                job.location ?? '',
                style: RFont.body.small,
                maxLines: 2,
                color: RColor.background.dark,
              ),
            ],
          ),
        ),
        Row(
          children: [
            Icon(
              EvaIcons.clock,
              size: 14,
              color: RColor.background.dark,
            ),
            const SizedBox(width: 4),
            RText(
              DateFormat('dd MMM yyyy').format(
                DateTime.parse(job.updated ?? ''),
              ),
              style: RFont.body.small,
              color: RColor.background.dark,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildJobsListGridSliver(BuildContext context, JobState jobs) {
    return jobs.when(
      success: (value) {
        final jobList = value.jobs ?? [];
        if (jobList.isEmpty) {
          return SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: Center(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    EvaIcons.questionMarkCircleOutline,
                    size: 64,
                    color: RColor.background.info,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  RText(
                    'No jobs found in ${ref.read(selectedCountryProvider)?.name}',
                    style: RFont.subheading.h5,
                    color: RColor.background.dark,
                  ),
                ],
              )),
            ),
          );
        }
        return SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 1,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) => TweenAnimationBuilder<double>(
                tween: Tween<double>(begin: 0, end: 1),
                duration: Duration(milliseconds: 400 + (index * 80)),
                curve: Curves.easeOutCubic,
                builder: (context, value, child) {
                  return Opacity(
                    opacity: value,
                    child: Transform.translate(
                      offset: Offset(0, 30 * (1 - value)),
                      child: child,
                    ),
                  );
                },
                child: _buildJobCard(
                  context,
                  jobList[index],
                  isGrid: true,
                  height: 100,
                ),
              ),
              childCount: jobList.length,
            ),
          ),
        );
      },
      loading: () {
        return const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: 16,
              top: 8,
            ),
            child: RLoadingListSkeleton(),
          ),
        );
      },
      failed: (message) {
        return SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
            child: Center(child: Text(message)),
          ),
        );
      },
      initial: () {
        return const SliverToBoxAdapter(
          child: SizedBox.shrink(),
        );
      },
    );
  }

  Widget _buildJobsListSliver(BuildContext context, JobState jobs) {
    return jobs.when(
      success: (value) {
        final jobList = value.jobs ?? [];
        if (jobList.isEmpty) {
          return const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 32),
              child: Center(child: Text('No jobs found.')),
            ),
          );
        }
        return SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 0, end: 1),
              duration: Duration(milliseconds: 400 + (index * 80)),
              curve: Curves.easeOutCubic,
              builder: (context, value, child) {
                return Opacity(
                  opacity: value,
                  child: Transform.translate(
                    offset: Offset(0, 30 * (1 - value)),
                    child: child,
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: 12,
                  top: index == 0 ? 8 : 0,
                ),
                child: _buildJobCard(
                  context,
                  jobList[index],
                  height: 80,
                ),
              ),
            ),
            childCount: jobList.length,
          ),
        );
      },
      loading: () {
        return const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: 16,
              top: 8,
            ),
            child: RLoadingListSkeleton(),
          ),
        );
      },
      failed: (message) {
        return SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
            child: Center(child: Text(message)),
          ),
        );
      },
      initial: () {
        return const SliverToBoxAdapter(
          child: SizedBox.shrink(),
        );
      },
    );
  }

  // Similarly, wrap the jobs count row in a stable widget
  Widget _buildJobsCount(JobState jobs) {
    return jobs.when(
      success: (value) {
        if (value.jobs?.isEmpty ?? true) {
          return const SizedBox.shrink();
        }
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            RText(
              'There are ',
              style: RFont.subheading.h6,
            ),
            RCountingText(
              from: 0,
              to: double.parse(value.jobs?.length.toString() ?? '0'),
              textStyle: RFont.subheading.h6.copyWith(
                color: RColor.background.info,
              ),
              duration: const Duration(seconds: 1),
              decimalPlaces: 0,
            ),
            RText(
              ' jobs in the ',
              style: RFont.subheading.h6,
              color: RColor.text.dark,
            ),
            RText(
              ref.read(selectedCountryProvider)?.name ?? 'World',
              style: RFont.subheading.h6,
              color: RColor.text.info,
            ),
          ],
        );
      },
      loading: () {
        return Skeletonizer(
          enabled: true,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              RText(
                'There are',
                style: RFont.subheading.h6,
              ),
              const RText(
                'Label',
              ),
              RText(
                'jobs in the world',
                style: RFont.subheading.h6,
              ),
            ],
          ),
        );
      },
      failed: (message) {
        return RText(message);
      },
      initial: () {
        return const SizedBox.shrink();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final jobs = ref.watch(homeControllerProvider);
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: RefreshIndicator(
            color: RColor.background.white,
            backgroundColor: RColor.background.info,
            displacement: 0,
            strokeWidth: 3,
            onRefresh: () async {
              await ref.read(homeControllerProvider.notifier).findJobs(
                    query: _searchController.text,
                    location: ref.read(selectedCountryProvider)?.name,
                  );
            },
            child: CustomScrollView(
              controller: _scrollController,
              slivers: [
                SliverAppBar(
                  floating: true,
                  snap: true,
                  backgroundColor: RColor.background.white,
                  elevation: 0,
                  automaticallyImplyLeading: false,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: _buildHeader(),
                    ),
                  ),
                  expandedHeight: 50,
                  toolbarHeight: 50,
                ),
                SliverAppBar(
                  elevation: _showSearchBarShadow ? 6 : 0,
                  shadowColor: RColor.background.info.withOpacity(0.4),
                  pinned: true,
                  toolbarHeight: 110,
                  expandedHeight: 110,
                  backgroundColor: RColor.background.white,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Row(
                            children: [
                              Expanded(
                                child: RSearchField(
                                  controller: _searchController,
                                  onSubmitted: (value) {
                                    ref
                                        .read(homeControllerProvider.notifier)
                                        .findJobs(
                                          query: value,
                                          location: ref
                                              .read(selectedCountryProvider)
                                              ?.name,
                                        );
                                  },
                                ),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              RButton(
                                icon: Icon(
                                  EvaIcons.options2Outline,
                                  color: RColor.background.dark,
                                  size: 24,
                                ),
                                shadow: BoxShadow(
                                  color:
                                      RColor.background.dark.withOpacity(0.8),
                                  offset: const Offset(3, 4),
                                ),
                                textColor: RColor.background.info,
                                bgColor: RColor.background.white,
                                border: Border.all(
                                  color:
                                      RColor.background.dark.withOpacity(0.8),
                                  width: 2,
                                ),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 10,
                                ),
                                onPressed: () {
                                  showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    backgroundColor: RColor.background.white,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(10),
                                      ),
                                    ),
                                    builder: (context) => BottomSheetHome(
                                      onSelected: (value) {
                                        ref
                                            .read(
                                                homeControllerProvider.notifier)
                                            .findJobs(
                                                query: _searchController.text,
                                                location: value.name);
                                        ref
                                            .read(selectedCountryProvider
                                                .notifier)
                                            .state = value;
                                      },
                                    ),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                        _buildJobsCount(jobs),
                      ],
                    ),
                  ),
                ),
                if (ref.watch(typeJobProvider))
                  _buildJobsListGridSliver(context, jobs)
                else
                  _buildJobsListSliver(context, jobs)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
