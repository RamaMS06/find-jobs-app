import 'package:find_job_app/core/common/common.dart';
import 'package:find_job_app/features/home/presentation/providers/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DetailJobPage extends ConsumerWidget {
  const DetailJobPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailJob = ref.watch(selectedJobProvider);
    return Scaffold(
      appBar: AppBar(
        title: RText(
          detailJob.title ?? '',
          style: RFont.subheading.h5,
        ),
        backgroundColor: RColor.background.white,
        automaticallyImplyLeading: true,
      ),
      body: WebViewWidget(
        controller: WebViewController(
          onPermissionRequest: (permissionRequest) {
            permissionRequest.grant();
          },
        )
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..setBackgroundColor(RColor.background.white)
          ..setNavigationDelegate(NavigationDelegate())
          ..loadRequest(Uri.parse(detailJob.link ?? '')),
      ),
    );
  }
}
