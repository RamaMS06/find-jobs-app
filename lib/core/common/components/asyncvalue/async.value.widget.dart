import 'dart:developer';
import 'package:find_job_app/core/common/components/component.dart';
import 'package:find_job_app/core/common/tokens/color/color.token.dart';
import 'package:find_job_app/core/common/tokens/fonts/font.token.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter_svg/svg.dart';

class AsyncValueWidget<T> extends StatelessWidget {
  const AsyncValueWidget({
    super.key,
    required this.value,
    required this.data,
    this.customLoading,
    this.onError,
  });

  final AsyncValue<T> value;
  final Widget Function(T) data;
  final Widget? customLoading;
  final Widget Function(Object, StackTrace)? onError;

  @override
  Widget build(BuildContext context) {
    return value.when(
      skipLoadingOnRefresh: true,
      skipLoadingOnReload: true,
      data: data,
      error: onError ??
          (e, st) {
            log('error occurred: ${e.toString()} - $st');
            return _buildErrorWidget(e.toString());
          },
      loading: () => customLoading ?? _buildLoadingWidget(),
    );
  }

  Widget _buildLoadingWidget() {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: RLoading(),
      ),
    );
  }

  Widget _buildErrorWidget(String error) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              EvaIcons.alertTriangleOutline,
              size: 48,
              color: RColor.background.danger,
            ),
            const SizedBox(height: 16),
            RText(
              'Something went wrong',
              style: RFont.subheading.h6.copyWith(
                color: RColor.background.danger,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            RText(
              error,
              style: RFont.body.small.copyWith(
                color: RColor.text.lightdark,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

/// Extension to provide an empty state widget for lists
class AsyncValueListWidget<T> extends StatelessWidget {
  const AsyncValueListWidget({
    super.key,
    required this.value,
    required this.data,
    this.customLoading,
    this.onError,
    this.emptyMessage = 'No data available',
    this.emptyIcon = EvaIcons.inboxOutline,
  });

  final AsyncValue<List<T>> value;
  final Widget Function(List<T>) data;
  final Widget? customLoading;
  final Widget Function(Object, StackTrace)? onError;
  final String emptyMessage;
  final IconData emptyIcon;

  @override
  Widget build(BuildContext context) {
    return value.when(
      skipLoadingOnRefresh: true,
      skipLoadingOnReload: true,
      data: (list) {
        if (list.isEmpty) {
          return _buildEmptyWidget();
        }
        return data(list);
      },
      error: onError ??
          (e, st) {
            log('error occurred: ${e.toString()} - $st');
            return _buildErrorWidget(e.toString());
          },
      loading: () => customLoading ?? _buildLoadingWidget(),
    );
  }

  Widget _buildLoadingWidget() {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: RLoading(),
      ),
    );
  }

  Widget _buildEmptyWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              emptyIcon,
              size: 64,
              color: RColor.background.lightdark,
            ),
            const SizedBox(height: 16),
            RText(
              emptyMessage,
              style: RFont.subheading.h6.copyWith(
                color: RColor.background.lightdark,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorWidget(String error) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              EvaIcons.alertTriangleOutline,
              size: 48,
              color: RColor.background.danger,
            ),
            const SizedBox(height: 16),
            RText(
              'Something went wrong',
              style: RFont.subheading.h6.copyWith(
                color: RColor.background.danger,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            RText(
              error,
              style: RFont.body.small.copyWith(
                color: RColor.text.lightdark,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

/// Sliver version for use in CustomScrollView
class AsyncValueSliverWidget<T> extends StatelessWidget {
  const AsyncValueSliverWidget({
    super.key,
    required this.value,
    required this.data,
    this.customLoading,
    this.onError,
  });

  final AsyncValue<T> value;
  final Widget Function(T) data;
  final Widget? customLoading;
  final Widget Function(Object, StackTrace)? onError;

  @override
  Widget build(BuildContext context) {
    return value.when(
      skipLoadingOnRefresh: true,
      skipLoadingOnReload: true,
      data: data,
      error: onError ??
          (e, st) {
            log('error occurred: ${e.toString()} - $st');
            return SliverToBoxAdapter(
              child: _buildErrorWidget(e.toString()),
            );
          },
      loading: () =>
          customLoading ??
          SliverToBoxAdapter(
            child: _buildLoadingWidget(),
          ),
    );
  }

  Widget _buildLoadingWidget() {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: RLoading(),
      ),
    );
  }

  Widget _buildErrorWidget(String error) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              EvaIcons.alertTriangleOutline,
              size: 48,
              color: RColor.background.danger,
            ),
            const SizedBox(height: 16),
            RText(
              'Something went wrong',
              style: RFont.subheading.h6.copyWith(
                color: RColor.background.danger,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            RText(
              error,
              style: RFont.body.small.copyWith(
                color: RColor.text.lightdark,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

/// Sliver list version with empty state support
class AsyncValueSliverListWidget<T> extends StatelessWidget {
  const AsyncValueSliverListWidget({
    super.key,
    required this.value,
    required this.data,
    this.customLoading,
    this.onError,
    this.emptyMessage = 'No data available',
    this.emptyIcon = EvaIcons.inboxOutline,
  });

  final AsyncValue<List<T>> value;
  final Widget Function(List<T>) data;
  final Widget? customLoading;
  final Widget Function(Object, StackTrace)? onError;
  final String emptyMessage;
  final IconData emptyIcon;

  @override
  Widget build(BuildContext context) {
    return value.when(
      skipLoadingOnRefresh: true,
      skipLoadingOnReload: true,
      data: (list) {
        if (list.isEmpty) {
          return SliverToBoxAdapter(child: _buildEmptyWidget());
        }
        return data(list);
      },
      error: onError ??
          (e, st) {
            log('error occurred: ${e.toString()} - $st');
            return SliverToBoxAdapter(child: _buildErrorWidget(e.toString()));
          },
      loading: () =>
          customLoading ?? SliverToBoxAdapter(child: _buildLoadingWidget()),
    );
  }

  Widget _buildLoadingWidget() {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: RLoading(),
      ),
    );
  }

  Widget _buildEmptyWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/ic-empty.svg',
              width: 64,
              height: 64,
              colorFilter: ColorFilter.mode(
                RColor.background.lightdark,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(height: 16),
            RText(
              emptyMessage,
              style: RFont.subheading.h6,
              color: RColor.background.lightdark,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorWidget(String error) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              EvaIcons.alertTriangleOutline,
              size: 48,
              color: RColor.background.danger,
            ),
            const SizedBox(height: 16),
            RText(
              'Something went wrong',
              style: RFont.subheading.h6.copyWith(
                color: RColor.background.danger,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            RText(
              error,
              style: RFont.body.small.copyWith(
                color: RColor.text.dark,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
