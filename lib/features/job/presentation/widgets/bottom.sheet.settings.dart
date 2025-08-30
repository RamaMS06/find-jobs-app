part of 'widget.dart';

class BottomSheetSettings extends ConsumerStatefulWidget {
  final ScrollController scrollController;

  const BottomSheetSettings({
    super.key,
    required this.scrollController,
  });

  @override
  ConsumerState<BottomSheetSettings> createState() =>
      _BottomSheetSettingsState();
}

class _BottomSheetSettingsState extends ConsumerState<BottomSheetSettings> {
  @override
  Widget build(BuildContext context) {
    ref.listen(authControllerProvider, (previous, next) {
      next.maybeWhen(
        signOutSuccess: () {
          context.push('/');
        },
        orElse: () {},
      );
    });
    return Padding(
      padding: const EdgeInsets.only(
        left: 12,
        right: 12,
        top: 12,
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RText(
                'Select Layout Type',
                style: RFont.subheading.h5,
              ),
              const SizedBox(
                height: 8,
              ),
              RSwitch(
                prefixIcon: EvaIcons.gridOutline,
                suffixIcon: EvaIcons.listOutline,
                innerText:
                    ref.watch(typeJobProvider) ? 'Grid Layout' : 'List Layout',
                value: ref.watch(typeJobProvider),
                onChanged: (value) {
                  ref.read(typeJobProvider.notifier).state = value;
                },
              ),
            ],
          ),
          Positioned(
            left: 12,
            right: 12,
            bottom: kBottomNavigationBarHeight,
            child: RButton(
              text: 'Sign Out',
              bgColor: RColor.background.danger,
              onPressed: () {
                ref.read(authControllerProvider.notifier).signOut();
                context.push('/');
              },
            ),
          )
        ],
      ),
    );
  }
}
