import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class pagdejuegos extends StatelessWidget {
  const pagdejuegos({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      body: Container(
          width: double.infinity,
          child: WebView(
            initialUrl: 'https://poki.com/es',
            // Enable Javascript on WebView
            javascriptMode: JavascriptMode.unrestricted,
          )),
    );
  }
}
