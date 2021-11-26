import 'package:authentification/page/pages/Quiz/src/controller/question_controller.dart';
import 'package:authentification/page/pages/Quiz/src/ui/start_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController controller = Get.put(QuestionController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://media.istockphoto.com/vectors/quiz-of-marketing-design-badge-with-loudspeaker-blue-color-vector-on-vector-id1179997366?k=20&m=1179997366&s=170667a&w=0&h=vsI0yDV3EM4__dScM6wsji7RT8eAT0CmOx7o2MIG3jg='),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Responde para jugar",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: SizedBox(
                      height: 65,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: () => Get.to(() => StartPage()),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "¡VAMOS!",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
