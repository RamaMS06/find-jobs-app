part of 'widget.dart';

class BottomSheetDetailHome extends ConsumerWidget {
  const BottomSheetDetailHome({super.key});

  Widget _buildHeader(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Stack(
            children: [
              Center(
                child: RText(
                  'Detail Job',
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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailJob = ref.watch(selectedJobProvider);
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.7,
      minChildSize: 0.4,
      maxChildSize: 0.8,
      snap: true,
      builder: (context, scrollController) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 55,
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 12,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    right: 0,
                                    bottom: 0,
                                    child: Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: RColor.background.white,
                                        border: Border.all(
                                          color: RColor.background.dark,
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 0,
                                    left: 8,
                                    right: 8,
                                    bottom: 8,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: RColor.background.white,
                                        border: Border.all(
                                          color: RColor.background.dark,
                                          width: 1,
                                        ),
                                      ),
                                      child: Center(
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              top: 35,
                                              left: 0,
                                              right: 0,
                                              child: Center(
                                                child: RText(
                                                  detailJob.company ?? '',
                                                  maxLines: 1,
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.aBeeZee(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 0,
                                              right: 0,
                                              bottom: 2,
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
                                                  durations: [
                                                    35000,
                                                    19440,
                                                    10800,
                                                    6000
                                                  ],
                                                  heightPercentages: [
                                                    0.20,
                                                    0.23,
                                                    0.25,
                                                    0.30
                                                  ],
                                                  gradientBegin:
                                                      Alignment.bottomLeft,
                                                  gradientEnd:
                                                      Alignment.topRight,
                                                ),
                                                size: const Size(
                                                  double.infinity,
                                                  30,
                                                ),
                                                waveAmplitude: 15,
                                                waveFrequency: 1.6,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            RText(
                              detailJob.title ?? '',
                              style: RFont.subheading.h5,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            _buildIconText(
                              detailJob.salary == '' || detailJob.salary == null
                                  ? 'The company does not display salaries'
                                  : detailJob.salary ?? '',
                              Icons.attach_money_rounded,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            _buildIconText(
                              detailJob.location ?? '',
                              EvaIcons.pinOutline,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            _buildIconText(
                                detailJob.source ?? '', EvaIcons.globe),
                            const SizedBox(
                              height: 16,
                            ),
                            RText('Description', style: RFont.subheading.h5),
                            Html(
                              data: detailJob.snippet ?? '',
                              style: {
                                'body': Style(
                                  padding: HtmlPaddings.zero,
                                  fontSize: FontSize(14),
                                  fontFamily:
                                      GoogleFonts.spaceGrotesk().fontFamily,
                                ),
                              },
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: kBottomNavigationBarHeight,
              left: 12,
              right: 12,
              child: RButton(
                bgColor: RColor.background.info,
                textColor: RColor.background.white,
                onPressed: () {
                  context.push('/detail-job');
                },
                trailingIcon: Icon(
                  EvaIcons.cornerUpRightOutline,
                  size: 24,
                  color: RColor.background.white,
                ),
                text: 'Apply Now',
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: _buildHeader(context),
            ),
          ],
        ),
      ),
    );
  }

  Row _buildIconText(String text, IconData icon) {
    return Row(
      children: [
        Icon(
          icon,
          size: 16,
        ),
        const SizedBox(width: 2),
        RText(
          text,
          style: RFont.subheading.h7,
        ),
      ],
    );
  }
}
