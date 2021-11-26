import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class restaurads extends StatelessWidget {
  const restaurads({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      body: Container(
          width: double.infinity,
          child: WebView(
            initialUrl: 'https://restaurados.proyectosfit.cl',
            // Enable Javascript on WebView
            javascriptMode: JavascriptMode.unrestricted,
          )),
    );
  }
}
