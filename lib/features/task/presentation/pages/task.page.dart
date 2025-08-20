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

  @override
  void initState() {
    super.initState();
    _calendarScrollController = ScrollController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(taskControllerProvider.notifier).getTasks(_currentDate);

      // Auto-scroll to current date on init
      final currentDateIndex = _currentDate.day - 1;
      _scrollToSelectedDate(currentDateIndex);
    });
  }

  @override
  void dispose() {
    _calendarScrollController.dispose();
    super.dispose();
  }

  void _scrollToSelectedDate(int selectedIndex) {
    if (_calendarScrollController.hasClients) {
      // Calculate the scroll position
      // Each item width is 45px + 8px separator = 53px total
      const itemWidth = 53.0;
      const padding = 16.0;

      // Get the viewport width to center the selected item
      final viewportWidth = MediaQuery.of(context).size.width;
      final targetPosition = (selectedIndex * itemWidth) -
          (viewportWidth / 2) +
          (itemWidth / 2) +
          padding;

      // Clamp the position to valid scroll range
      final maxScrollExtent =
          _calendarScrollController.position.maxScrollExtent;
      final clampedPosition = targetPosition.clamp(0.0, maxScrollExtent);

      _calendarScrollController.animateTo(
        clampedPosition,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  Widget _buildHeader() {
    final selectableDate = ref.watch(selectableDateProvider);

    // Listen for changes in selectableDate and auto-scroll
    ref.listen<DateTime>(selectableDateProvider, (previous, next) {
      if (previous != null && previous != next) {
        // Calculate the index of the selected date
        final selectedIndex = next.day - 1;

        // Only scroll if the selected date is in the current month
        if (next.year == _currentDate.year &&
            next.month == _currentDate.month) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _scrollToSelectedDate(selectedIndex);
          });
        }
      }
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RText(
                DateFormat('MMMM yyyy').format(_currentDate),
                style: RFont.subheading.h5,
              ),
              RContainerShadow(
                color: RColor.background.lightdark,
                borderRadius: 5,
                onTap: () {
                  RBottomSheet.show(
                      context: context,
                      title: 'What to do',
                      initialChildSize: 0.8,
                      minChildSize: 0.8,
                      maxChildSize: 1,
                      builder: (context, scrollController) =>
                          BottomSheetTask(scrollController: scrollController));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        EvaIcons.calendarOutline,
                        color: RColor.background.white,
                        size: 12,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      RText(
                        'Add Task',
                        color: RColor.background.white,
                        style: RFont.body.small,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 100,
            ),
            child: Builder(
              builder: (context) {
                // Get the first day of the current month
                final firstDayOfMonth =
                    DateTime(_currentDate.year, _currentDate.month, 1);
                // Get the number of days in the current month
                final nextMonth =
                    DateTime(_currentDate.year, _currentDate.month + 1, 1);
                final daysInMonth =
                    nextMonth.difference(firstDayOfMonth).inDays;

                return MediaQuery.removePadding(
                  removeLeft: true,
                  removeRight: true,
                  context: context,
                  child: ListView.separated(
                    controller: _calendarScrollController,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: daysInMonth,
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 8,
                      );
                    },
                    itemBuilder: (context, index) {
                      final date = firstDayOfMonth.add(Duration(days: index));
                      // Detect if the day is Saturday or Sunday
                      final isSaturday = date.weekday == DateTime.saturday;
                      final isSunday = date.weekday == DateTime.sunday;
                      final dayColor = (isSaturday || isSunday)
                          ? const Color(0xFFEF9A9A)
                          : const Color(0xFF64B5F6);

                      // Check if this date is the selected date (compare only year, month, day)
                      final isSelected = selectableDate.year == date.year &&
                          selectableDate.month == date.month &&
                          selectableDate.day == date.day;

                      return GestureDetector(
                        onTap: () {
                          ref.read(selectableDateProvider.notifier).state =
                              date;
                          if (selectableDate != date) {
                            ref
                                .read(taskControllerProvider.notifier)
                                .getTasks(date);
                          }

                          // Auto-scroll to the selected date
                          WidgetsBinding.instance.addPostFrameCallback((_) {
                            _scrollToSelectedDate(index);
                          });
                        },
                        child: Column(
                          children: [
                            RText(
                              DateFormat('EE').format(date),
                              style: RFont.body.small,
                              color: isSaturday || isSunday
                                  ? RColor.text.danger
                                  : isSelected
                                      ? RColor.background.success
                                      : const Color(0xFF64B5F6),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Container(
                              width: 45,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: isSelected
                                      ? RColor.background.success
                                      : RColor.background.light,
                                  width: 1,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: RColor.background.dark
                                        .withOpacity(0.05),
                                    blurRadius: 8,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  AnimatedContainer(
                                    duration: const Duration(milliseconds: 300),
                                    width: 45,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                      ),
                                      border: Border.all(
                                        color: isSelected
                                            ? RColor.background.success
                                                .withOpacity(0.15)
                                            : (dayColor),
                                        width: 1,
                                      ),
                                      color: isSelected
                                          ? RColor.background.success
                                              .withOpacity(0.15)
                                          : (isSaturday || isSunday
                                              ? const Color(0xFFFFEBEE)
                                              : const Color(0xFFB3E5FC)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 4),
                                      child: Center(
                                        child: RText(
                                          DateFormat('dd').format(date),
                                          style: RFont.body.small.copyWith(
                                            color: isSelected
                                                ? RColor.background.success
                                                : null,
                                            fontWeight: isSelected
                                                ? FontWeight.bold
                                                : null,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 4),
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                      color: RColor.background.white,
                                    ),
                                    child: Center(
                                      child: isSelected
                                          ? const _PulseCircle()
                                          : const _ScribbleEffect(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                );
              },
            ))
      ],
    );
  }

  Widget _buildTaskList(BuildContext context, TaskState task) {
    return task.when(
      success: (datas) {
        return SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => Padding(
              key: ValueKey(datas[index]),
              padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
              child: Dismissible(
                key: ValueKey(datas[index]),
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
                  // ref.read(taskControllerProvider.notifier).deleteTask(datas[index]);
                },
                child: RContainerShadow(
                  width: MediaQuery.of(context).size.width,
                  borderRadius: 10,
                  padding: const EdgeInsets.all(16),
                  color: RColor.background.light,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RText(
                        datas[index]?.title ?? '',
                        style: RFont.subheading.h5,
                        color: RColor.background.dark,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      RText(
                        datas[index]?.description ?? '',
                        style: RFont.body,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            childCount: datas.length,
          ),
        );
      },
      initial: () {
        return const SliverToBoxAdapter(child: SizedBox.shrink());
      },
      loading: () {
        return const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Center(
              child: RLoading(),
            ),
          ),
        );
      },
      failed: (String message) {
        return SliverToBoxAdapter(child: RText(message));
      },
      empty: () {
        return SliverToBoxAdapter(
            child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                EvaIcons.clipboard,
                size: 60,
                color: RColor.background.lightdark,
              ),
              const SizedBox(
                height: 8,
              ),
              RText(
                'No task ${_currentDate == DateTime.now() ? 'for today' : 'in this date'}',
                style: RFont.subheading.h5,
                color: RColor.text.lightdark,
              ),
              const SizedBox(
                height: 8,
              ),
            ],
          )),
        ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final taskController = ref.watch(taskControllerProvider);
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
            pinned: true,
            backgroundColor: RColor.background.white,
            floating: true,
            snap: true,
            elevation: 8,
            shadowColor: RColor.background.dark.withOpacity(0.05),
            expandedHeight: 160,
            toolbarHeight: 160,
            flexibleSpace: FlexibleSpaceBar(
              background: _buildHeader(),
            )),
        _buildTaskList(context, taskController)
      ],
    ));
  }

  @override
  bool get wantKeepAlive => true;
}

/// PulseCircle widget for pulsing effect
class _PulseCircle extends StatefulWidget {
  const _PulseCircle({Key? key}) : super(key: key);

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
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // The color can be customized as needed
    return SizedBox(
      height: 16,
      width: 16,
      child: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
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
                  width: 8,
                  height: 8,
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

/// ScribbleEffect widget for scribble effect when not selected
class _ScribbleEffect extends StatelessWidget {
  const _ScribbleEffect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // The scribble is a custom painted widget
    return SizedBox(
      height: 16,
      width: 16,
      child: CustomPaint(
        painter: _ScribblePainter(),
      ),
    );
  }
}

class _ScribblePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = RColor.background.lightdark.withOpacity(0.4)
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    // Draw a simple scribble: a few wavy lines
    final path = Path();
    path.moveTo(2, size.height / 2);
    path.cubicTo(
      size.width * 0.25,
      size.height * 0.2,
      size.width * 0.75,
      size.height * 0.8,
      size.width - 2,
      size.height / 2,
    );
    path.moveTo(2, size.height / 2 + 3);
    path.cubicTo(
      size.width * 0.3,
      size.height * 0.7,
      size.width * 0.7,
      size.height * 0.3,
      size.width - 2,
      size.height / 2 + 3,
    );
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
