import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import 'calendario/calendar.dart';

class calendario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.orange,
      title: "Calendario",
      home: Calendar(),
    );
  }
}
