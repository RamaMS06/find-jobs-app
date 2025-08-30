part of 'page.dart';

class TaskPage extends ConsumerStatefulWidget {
  const TaskPage({super.key});

  @override
  ConsumerState<TaskPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends ConsumerState<TaskPage>
    with AutomaticKeepAliveClientMixin {
  final DateTime _currentDate = DateTime.now();
  late final ScrollController _calendarScrollController;

  // Store item keys for measuring their positions
  final Map<int, GlobalKey> _itemKeys = {};

  // Track if auto-scroll to today has been completed
  bool _hasAutoScrolledToToday = false;

  // Store active timers for cleanup
  Timer? _autoScrollTimer;

  static const double _itemWidth = 35.0;
  static const double _separatorWidth = 11.0;
  static const double _listHorizontalPadding = 11.0;

  late String _userId;

  @override
  void initState() {
    super.initState();
    _calendarScrollController = ScrollController();
    _setupInitialData();
    _setupAutoScrollToToday();
  }

  void _setupAutoScrollToToday() {
    if (!mounted) return;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _scrollToTodayWithFixedWidth();
      }
    });
  }

  void _scrollToTodayWithFixedWidth() {
    // Only auto-scroll to today once during initialization
    if (_hasAutoScrolledToToday || !mounted) return;

    final todayIndex = DateTime.now().day - 1;

    // Cancel any existing timer
    _autoScrollTimer?.cancel();

    _autoScrollTimer = Timer(const Duration(milliseconds: 300), () {
      if (!mounted) return;

      if (_calendarScrollController.hasClients && !_hasAutoScrolledToToday) {
        // Use the correct item width and separator width
        const itemWidth = _itemWidth;
        const separatorWidth = _separatorWidth;
        const listPadding = _listHorizontalPadding;

        // Calculate total width per item (item + separator)
        const totalItemWidth = itemWidth + separatorWidth;

        // Calculate the position of today's item
        final itemPosition = (todayIndex * totalItemWidth) + listPadding;

        // Get screen width to center the item
        final screenWidth = MediaQuery.of(context).size.width;
        final targetScroll = itemPosition - (screenWidth / 2) + (itemWidth / 2);

        // Clamp to valid scroll range
        final maxScroll = _calendarScrollController.position.maxScrollExtent;
        final clampedScroll = targetScroll.clamp(0.0, maxScroll);

        _calendarScrollController.animateTo(
          clampedScroll,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );

        // Mark that we've completed the auto-scroll to today
        _hasAutoScrolledToToday = true;
      } else if (!_hasAutoScrolledToToday && mounted) {
        // Retry with a new timer
        _autoScrollTimer = Timer(const Duration(milliseconds: 100), () {
          if (mounted) _scrollToTodayWithFixedWidth();
        });
      }
    });
  }

  void _setupInitialData() {
    if (!mounted) return;
    _hasAutoScrolledToToday = false;
    _userId = ref.read(currentUserProvider)?.id ?? '';
  }

  @override
  void dispose() {
    // Cancel any active timers to prevent setState after dispose
    _autoScrollTimer?.cancel();
    _autoScrollTimer = null;

    // Dispose of the scroll controller
    _calendarScrollController.dispose();

    super.dispose();
  }

  /// Scrolls to center the selected date in the calendar header.
  void _scrollToSelectedDate(int selectedIndex) {
    if (!mounted) return;

    // Since we use fixed width and separator, we can calculate the offset directly
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted || !_calendarScrollController.hasClients) return;

      // Calculate the scroll offset to center the selected item
      const itemWidth = _itemWidth;
      const separatorWidth = _separatorWidth;
      const listPadding = _listHorizontalPadding;

      // The position of the selected item (start of item)
      final itemPosition =
          (selectedIndex * (itemWidth + separatorWidth)) + listPadding;

      // Center the item in the viewport
      final screenWidth = MediaQuery.of(context).size.width;
      final targetScroll = itemPosition - (screenWidth / 2) + (itemWidth / 2);

      // Clamp to valid scroll range
      final maxScroll = _calendarScrollController.position.maxScrollExtent;
      final minScroll = _calendarScrollController.position.minScrollExtent;
      final clampedScroll = targetScroll.clamp(minScroll, maxScroll);

      // Final mounted check before animating
      if (mounted && _calendarScrollController.hasClients) {
        _calendarScrollController.animateTo(
          clampedScroll,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  Widget _buildHeader() {
    final selectableDate = ref.watch(selectableDateProvider);
    final user = ref.watch(authControllerProvider.notifier).currentUser;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          child: RText(
            DateFormat('MMMM yyyy').format(_currentDate),
            style: RFont.subheading.h7,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4, left: 16, right: 16),
          child: RText(
            user?.name ?? '',
            style: RFont.heading.h4.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        // Use StreamProvider for real-time date updates
        Consumer(
          builder: (context, ref, child) {
            final dateAsync = ref.watch(dateStreamProvider(_userId));

            return dateAsync.when(
              data: (listDate) {
                return _buildCalendarWidget(selectableDate, listDate);
              },
              loading: () => const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Center(child: RLoading()),
              ),
              error: (error, stack) => RText('Error: $error'),
            );
          },
        ),
      ],
    );
  }

  Widget _buildCalendarWidget(
      DateTime selectableDate, List<DateTime> listDate) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 65,
      ),
      child: Builder(
        builder: (context) {
          // Get the first day of the current month
          final firstDayOfMonth =
              DateTime(_currentDate.year, _currentDate.month, 1);
          // Get the number of days in the current month
          final nextMonth =
              DateTime(_currentDate.year, _currentDate.month + 1, 1);
          final daysInMonth = nextMonth.difference(firstDayOfMonth).inDays;

          return MediaQuery.removePadding(
            removeLeft: true,
            removeRight: true,
            context: context,
            child: ListView.separated(
              controller: _calendarScrollController,
              padding: const EdgeInsets.symmetric(
                  horizontal: _listHorizontalPadding),
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: daysInMonth,
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: _separatorWidth,
                );
              },
              itemBuilder: (context, index) {
                final date = firstDayOfMonth.add(Duration(days: index));
                // Detect if the day is Saturday or Sunday
                final isSaturday = date.weekday == DateTime.saturday;
                final isSunday = date.weekday == DateTime.sunday;

                // Check if this date is the selected date (compare only year, month, day)
                final isSelected = selectableDate.year == date.year &&
                    selectableDate.month == date.month &&
                    selectableDate.day == date.day;

                // Only show the date if it's in updatedListDate
                final isInListDate = listDate.any((d) =>
                    d.year == date.year &&
                    d.month == date.month &&
                    d.day == date.day);

                // Assign a key for each item for measurement
                _itemKeys[index] = _itemKeys[index] ?? GlobalKey();

                return InkWell(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  onTap: () {
                    if (!mounted) return;

                    ref.read(selectableDateProvider.notifier).state = date;
                    // No need to manually call getTasks - StreamBuilder will handle it automatically

                    // Always center the selected date on tap
                    _scrollToSelectedDate(index);
                  },
                  child: Container(
                    key: _itemKeys[index],
                    width:
                        _itemWidth, // Fixed width for consistent calculations
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [
                        RText(
                          DateFormat('EE').format(date),
                          style: RFont.body.small,
                          color: isSelected
                              ? RColor.background.success
                              : isSaturday || isSunday
                                  ? RColor.text.danger
                                  : RColor.background.lightdark,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            RText(
                              DateFormat('dd').format(date),
                              color: isSelected
                                  ? RColor.background.success
                                  : (isSunday || isSaturday)
                                      ? RColor.background.danger
                                      : RColor.background.dark,
                              style: RFont.subheading.h6,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5),
                                ),
                                color: RColor.background.white,
                              ),
                              child: Center(
                                child: isSelected
                                    ? const _PulseCircle()
                                    : isInListDate
                                        ? Padding(
                                            padding:
                                                const EdgeInsets.only(top: 2),
                                            child: Icon(
                                              EvaIcons.bookmark,
                                              size: 10,
                                              color: (isSunday || isSaturday)
                                                  ? RColor.background.danger
                                                  : RColor.background.lightdark,
                                            ),
                                          )
                                        : const SizedBox.shrink(),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }

  Widget _buildTaskList(BuildContext context) {
    final selectableDate = ref.watch(selectableDateProvider);

    Widget widgetState(Widget child) => SliverToBoxAdapter(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 24),
              child: child,
            ),
          ),
        );

    final taskAsync = ref
        .watch(taskStreamProvider(TaskStreamParams(selectableDate, _userId)));

    return taskAsync.when(
      data: (tasks) {
        final validTasks = tasks.whereType<TaskEntity>().toList();

        if (validTasks.isEmpty) {
          return widgetState(
            Column(
              children: [
                Icon(EvaIcons.alertCircleOutline,
                    color: RColor.background.info, size: 64),
                const SizedBox(height: 8),
                const RText('No Task on this date'),
              ],
            ),
          );
        }

        return SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => _buildTaskCard(validTasks[index]),
            childCount: validTasks.length,
          ),
        );
      },
      loading: () => widgetState(const RLoading()),
      error: (error, stack) => widgetState(RText('Error: $error')),
    );
  }

  Widget _buildTaskCard(TaskEntity task) {
    return Padding(
      key: ValueKey(task),
      padding: const EdgeInsets.only(
        bottom: 16,
        left: 16,
        right: 16,
        top: 8,
      ),
      child: Dismissible(
        key: ValueKey(task),
        direction: DismissDirection.endToStart,
        background: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: RColor.background.danger,
          ),
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Icon(
                EvaIcons.trash2,
                color: RColor.background.white,
              ),
            ),
          ),
        ),
        onDismissed: (direction) {
          ref.read(taskControllerProvider.notifier).deleteTask(
                _userId,
                task.id ?? '',
              );
        },
        child: IntrinsicHeight(
          child: Row(
            children: [
              // Time column with divider that matches content height
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RText(
                    task.startTime ?? '',
                    color: RColor.text.lightdark,
                    hasLineThrough: task.isDone ?? false,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: RDivider.vertical(
                        variant: RDividerVariant.dashed,
                        color: RColor.background.lightdark,
                      ),
                    ),
                  ),
                  RText(
                    task.finishTime ?? '',
                    color: RColor.text.lightdark,
                    hasLineThrough: task.isDone ?? false,
                  ),
                ],
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: RContainerShadow(
                  width: MediaQuery.of(context).size.width,
                  borderRadius: 10,
                  onTap: () {
                    final newStatus = !(task.isDone ?? false);
                    ref.read(taskControllerProvider.notifier).updateTask(
                          _userId,
                          task.id ?? '',
                          task.copyWith(isDone: newStatus),
                        );
                  },
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 14),
                  color: RColor.background.light,
                  border: Border.all(
                    color: RColor.background.lightdark,
                    width: 0.15,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RCheckbox(
                        value: task.isDone ?? false,
                        fillColor: task.isDone ?? false
                            ? RColor.background.dark
                            : RColor.background.white,
                        checkColor: RColor.background.white,
                        onChanged: (bool? value) {
                          // Toggle the task status - use the new value from checkbox
                          final newStatus = value ?? false;

                          ref.read(taskControllerProvider.notifier).updateTask(
                                _userId,
                                task.id ?? '',
                                task.copyWith(isDone: newStatus),
                              );
                        },
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            RText(
                              task.title ?? '',
                              style: RFont.subheading.h5,
                              hasLineThrough: task.isDone ?? false,
                              color: RColor.text.dark,
                            ),
                            const SizedBox(height: 4),
                            RText(
                              task.description ?? 'No description',
                              style: RFont.body,
                              hasLineThrough: task.isDone ?? false,
                              color: RColor.text.dark,
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          RBottomSheet.show(
                            context: context,
                            title: 'Edit Task',
                            initialChildSize: 0.8,
                            minChildSize: 0.8,
                            maxChildSize: 1,
                            builder: (context, scrollController) =>
                                BottomSheetTask(
                                    scrollController: scrollController,
                                    task: task),
                          );
                        },
                        icon: Icon(
                          EvaIcons.edit,
                          color: RColor.background.dark,
                          size: 24,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: RButton(
          padding: const EdgeInsets.all(8),
          borderRadius: 999,
          border: Border.all(
            color: RColor.background.dark,
            width: 0.25,
          ),
          constraints: const BoxConstraints(),
          bgColor: RColor.background.white,
          icon: Icon(
            Icons.add_rounded,
            color: RColor.background.lightdark,
          ),
          onPressed: () {
            if (!mounted) return;

            RBottomSheet.show(
              context: context,
              title: 'What to do',
              initialChildSize: 0.8,
              minChildSize: 0.8,
              maxChildSize: 1,
              builder: (context, scrollController) => BottomSheetTask(
                scrollController: scrollController,
              ),
            );
          },
        ),
      ),
      body: RefreshIndicator(
        color: RColor.background.white,
        backgroundColor: RColor.background.info,
        displacement: 0,
        strokeWidth: 3,
        onRefresh: () async {
          if (!mounted) return;

          // StreamBuilder handles data refreshing automatically
          // Just reset the auto-scroll functionality
          _setupInitialData();
          _setupAutoScrollToToday();
        },
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
                pinned: true,
                backgroundColor: RColor.background.white,
                floating: true,
                snap: true,
                elevation: 8,
                shadowColor: RColor.background.dark.withOpacity(0.25),
                expandedHeight: 140,
                toolbarHeight: 140,
                flexibleSpace: FlexibleSpaceBar(
                  background: _buildHeader(),
                )),
            _buildTaskList(context)
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

/// PulseCircle widget for pulsing effect
class _PulseCircle extends StatefulWidget {
  const _PulseCircle();

  @override
  State<_PulseCircle> createState() => _PulseCircleState();
}

class _PulseCircleState extends State<_PulseCircle>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..repeat(reverse: false);
    _animation = Tween<double>(begin: 0.7, end: 1.4).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );
  }

  @override
  void dispose() {
    _controller.stop();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // The color can be customized as needed
    return SizedBox(
      height: 14,
      width: 14,
      child: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            // Check if widget is still mounted before rebuilding
            if (!mounted) {
              return const SizedBox.shrink();
            }

            return Stack(
              alignment: Alignment.center,
              children: [
                Opacity(
                  opacity: 1 - (_animation.value - 0.7) / (1.4 - 0.7),
                  child: Container(
                    width: 16 * _animation.value,
                    height: 16 * _animation.value,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: RColor.background.success.withOpacity(0.3),
                    ),
                  ),
                ),
                Container(
                  width: 6,
                  height: 6,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: RColor.background.success,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
