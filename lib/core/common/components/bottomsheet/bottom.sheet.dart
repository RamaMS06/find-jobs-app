import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:find_job_app/core/common/components/text/text.widget.dart';
import 'package:find_job_app/core/common/tokens/color/color.token.dart';
import 'package:find_job_app/core/common/tokens/fonts/font.token.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RBottomSheet {
  static Widget _buildHeader(BuildContext context, String title) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Stack(
            children: [
              Center(
                child: RText(
                  title,
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

  static Future<T?> show<T>({
    required BuildContext context,
    required Widget Function(BuildContext context, ScrollController controller) builder,
    required String title,
    double? initialChildSize,
    double? minChildSize,
    double? maxChildSize,
  }) {
    // Use AnimatedPadding to ensure the bottom sheet follows the keyboard
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: RColor.background.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(10),
        ),
      ),
      builder: (context) {
        // Listen to viewInsets changes for keyboard
        return AnimatedPadding(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: DraggableScrollableSheet(
            expand: false,
            snap: true,
            initialChildSize: initialChildSize ?? 0.8,
            minChildSize: minChildSize ?? 0.8,
            maxChildSize: maxChildSize ?? 0.95,
            builder: (context, scrollController) => Column(
              children: [
                _buildHeader(context, title),
                Expanded(child: builder(context, scrollController)),
              ],
            ),
          ),
        );
      },
    );
  }
}
