import 'package:authentification/page/pages/juegos/paginadejuegos.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'Quiz/src/ui/home_page.dart';

class juegos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: quiz(),
    );
  }
}
