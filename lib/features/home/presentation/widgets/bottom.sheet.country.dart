part of 'widget.dart';

class BottomSheetCountry extends ConsumerStatefulWidget {
  final ScrollController scrollController;

  final ValueChanged<CountryEntity> onSelected;

  const BottomSheetCountry({super.key, 
    required this.scrollController,
    required this.onSelected,
  });

  @override
  ConsumerState<BottomSheetCountry> createState() =>
      __BottomSheetCountryState();
}

class __BottomSheetCountryState extends ConsumerState<BottomSheetCountry> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(countryControllerProvider.notifier).getCountries();
    });
  }

  Widget _buildCountryItem(CountryEntity country, {bool isSelected = false}) {
    return GestureDetector(
      onTap: isSelected
          ? null
          : () {
              context.pop();
              widget.onSelected(country);
            },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: RColor.background.white,
          border: Border.all(
            color: RColor.background.dark.withOpacity(0.2),
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: RColor.background.dark.withOpacity(0.8),
              offset: const Offset(4, 4),
            ),
          ],
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              RText(
                country.emoji ?? '',
                style: RFont.heading.h3,
              ),
              const SizedBox(
                width: 8,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RText(
                      country.code ?? '',
                      style: RFont.subheading.h7.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    RText(
                      country.name ?? '',
                      style: RFont.subheading.h6,
                    ),
                  ],
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
    final countries = ref.watch(countryControllerProvider);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 12,
            right: 12,
            top: 12,
          ),
          child: RSearchField(
            controller: _searchController,
            hintText: 'Search Country',
            onChanged: (value) {
              ref
                  .read(countryControllerProvider.notifier)
                  .searchCountries(value);
            },
          ),
        ),
        Expanded(
          child: countries.when(
            success: (value) => Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                ),
                child: CustomScrollView(
                  controller: widget.scrollController,
                  slivers: [
                    if (ref.read(selectedCountryProvider) != null)
                      SliverAppBar(
                        pinned: true,
                        floating: true,
                        snap: true,
                        titleSpacing: 0,
                        elevation: 6,
                        shadowColor: RColor.background.info.withOpacity(0.4),
                        toolbarHeight: 100,
                        backgroundColor: RColor.background.white,
                        automaticallyImplyLeading: false,
                        title: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RText(
                                'Selected Country',
                                style: RFont.subheading.h5,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              _buildCountryItem(
                                ref.read(selectedCountryProvider)!,
                                isSelected: true,
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: SizedBox(
                                  height: 8,
                                  child: LayoutBuilder(
                                    builder: (context, constraints) {
                                      final boxWidth =
                                          constraints.constrainWidth();
                                      const dashWidth = 4.0;
                                      const dashSpace = 4.0;
                                      final dashCount =
                                          (boxWidth / (dashWidth + dashSpace))
                                              .floor();
                                      return Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: List.generate(dashCount, (_) {
                                          return Container(
                                            width: dashWidth,
                                            height: 1,
                                            margin: const EdgeInsets.only(
                                                right: dashSpace),
                                            color: RColor.background.dark,
                                          );
                                        }),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 12,
                          right: 12,
                          bottom: 12,
                        ),
                        child: _buildCountryItem(
                          const CountryEntity(
                            name: 'Remote',
                            code: 'Remote Jobs',
                            emoji: '🌍',
                          ),
                        ),
                      ),
                    ),
                    SliverList(
                        delegate: SliverChildBuilderDelegate(
                      (context, index) => Padding(
                        padding: const EdgeInsets.only(
                          bottom: 12,
                          left: 12,
                          right: 12,
                        ),
                        child: _buildCountryItem(value[index]!),
                      ),
                      childCount: value.length,
                    )),
                  ],
                )),
            loading: () => const SizedBox.shrink(),
            failed: (error) => const SizedBox.shrink(),
            initial: () => const SizedBox.shrink(),
          ),
        ),
      ],
    );
  }
}
