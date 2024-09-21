import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../widget/appbar_view.dart';

class WebViewContainer extends StatefulWidget {
  const WebViewContainer({super.key, required this.url});
  final String url;

  @override
  State<WebViewContainer> createState() => _WebViewContainerState();
}

class _WebViewContainerState extends State<WebViewContainer> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarView(),
      body: WebViewWidget(controller: controller),
    );
  }
}