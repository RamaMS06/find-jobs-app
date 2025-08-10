import 'package:find_job_app/core/common/components/text/text.widget.dart';
import 'package:find_job_app/core/common/tokens/color/color.token.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

enum RLoadingListSkeletonAlignIcon { left, right }

class RLoadingListSkeleton extends StatelessWidget {
  final int itemCount;
  final RLoadingListSkeletonAlignIcon alignIcon;
  const RLoadingListSkeleton({
    super.key,
    this.alignIcon = RLoadingListSkeletonAlignIcon.left,
    this.itemCount = 7,
  });

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: true,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: itemCount,
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 12,
          );
        },
        itemBuilder: (context, index) {
          return Card(
            color: RColor.background.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            elevation: 6,
            shadowColor: RColor.background.dark.withOpacity(0.15),
            child: ListTile(
              title: const RText('This is example data'),
              subtitle: const RText('Subtitle here'),
              trailing: alignIcon == RLoadingListSkeletonAlignIcon.right
                  ? const Icon(Icons.abc)
                  : null,
              titleAlignment: ListTileTitleAlignment.center,
              leading: alignIcon == RLoadingListSkeletonAlignIcon.left
                  ? const Icon(Icons.abc)
                  : null,
            ),
          );
        },
      ),
    );
  }
}
