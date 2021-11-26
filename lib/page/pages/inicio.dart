import 'package:authentification/page/menulateral.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class inicio extends StatelessWidget {
  const inicio({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: menulateral(),
      appBar: AppBar(
        title: Text("Restaurados"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Container(
          width: double.infinity,
          child: WebView(
            initialUrl: 'https://www.fundacionrestaurados.cl/',
            // Enable Javascript on WebView
            javascriptMode: JavascriptMode.unrestricted,
          )),
    );
  }
}
