import 'package:flutter/material.dart';

class compartir extends StatefulWidget {
  const compartir({Key key}) : super(key: key);

  @override
  State<compartir> createState() => _compartirState();
}

class _compartirState extends State<compartir> {
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
          backgroundColor: Colors.white,
          body: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top,
                    left: 16,
                    right: 16),
                child: Image(
                  image: NetworkImage(
                      'https://ouch-cdn2.icons8.com/d4VQC1Qhnyxee_OIAVGb5wGXMTZyTpvsWjsammh7ur8/rs:fit:784:597/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvMjQv/MDZjNDEyYzItNDhj/MC00YzU5LWJlYmIt/NzA2MjVjNDU3NmEx/LnN2Zw.png'),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  '¿como podemos ayudarte?',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 16),
                child: const Text(
                  'Parece que tiene problemas \n . Estamos aquí para ayudar, así que póngase en contacto con nosotros.',
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
                      width: 140,
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
                          onTap: () {},
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                'Habla con \n nosotros',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
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
