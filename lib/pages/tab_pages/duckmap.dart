import 'package:flutter/material.dart';
import 'package:frontend_tutorial/constants/colors.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DuckMap extends StatefulWidget {
  const DuckMap({super.key});

  @override
  State<DuckMap> createState() => _DuckMapState();
}

class _DuckMapState extends State<DuckMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pinkColor,
      body: WebViewWidget(
        controller: WebViewController()
        ..loadRequest(Uri.parse('https://freckleboy.github.io/new-duck-map'))
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ),
    );
  }
}