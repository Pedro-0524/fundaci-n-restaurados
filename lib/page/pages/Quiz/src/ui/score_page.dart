import 'package:authentification/page/pages/Quiz/src/controller/question_controller.dart';
import 'package:authentification/page/pages/juegos/juegofundacion.dart';
import 'package:authentification/page/pages/juegos/paginadejuegos.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../HomePage.dart';

class ScorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Get.to(
            () => HomePage(),
          ),
          child: Icon(
            Icons.navigate_before,
            color: Colors.black54,
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://image.freepik.com/vector-gratis/ilustracion-vector-concepto-abstracto-juegos-mesa-actividades-mesa-juegos-estrategicos-jugadores-que-quedan-casa-aislamiento-social-tiempo-libre-diversion-familiar-idea-metafora-abstracta_335657-1673.jpg'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              RaisedButton(
                padding: EdgeInsets.fromLTRB(60, 70, 70, 10),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => pagdejuegos()));
                },
                child: Text('vamos a jugar',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold)),
                color: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              RaisedButton(
                padding: EdgeInsets.fromLTRB(70, 10, 70, 10),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => restaurads()));
                },
                child: Text('Juego restaurados',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold)),
                color: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
