import 'package:flutter/material.dart';

import 'galeria/galeria.dart';

class chat extends StatelessWidget {
  const chat({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Sen',
      ),
      home: imagenes(),
    );
  }
}
