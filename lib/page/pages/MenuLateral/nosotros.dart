import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class nosotros extends StatefulWidget {
  const nosotros({Key key}) : super(key: key);

  @override
  _nosotrosState createState() => _nosotrosState();
}

class _nosotrosState extends State<nosotros> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        top: false,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
          ),
          backgroundColor: Colors.white70,
          body: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top,
                    left: 40,
                    right: 40),
                child: Image(
                  image: NetworkImage(
                      'https://ouch-cdn2.icons8.com/8JZgVDnskYEYDwPmyqxb_2hw1lai0CMpWuX4i4ynwxI/rs:fit:784:784/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvNjU3/LzdkMTc1OWM0LTZj/MWUtNDY1YS1hN2Zh/LTkyNGU1MzMwOWZi/MS5zdmc.png'),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  'FUNDACIÓN RESTAURADOS',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 16),
                child: const Text(
                  'Somos una Fundación de Desarrollo a Escala Humana, Sostenible, Descentralizada y Desconcentrada. Nos dedicamos, principalmente a: Apoyar la resignificación, restauración y revinculación de los lazos familiares traumatizados por rupturas de pareja y divorcios, colaborando con la reorganización de “las nuevas familias”.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(4.0)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              offset: const Offset(4, 4),
                              blurRadius: 8.0),
                        ],
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            //method here for functionality
                            print('');
                          },
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.account_tree_outlined,
                                  color: Colors.white,
                                  size: 22,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    'Share',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
