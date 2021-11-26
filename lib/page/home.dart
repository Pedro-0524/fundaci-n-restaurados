import 'package:flutter/material.dart';

import 'pages/calendario.dart';
import 'pages/Galeriaycamara.dart';
import 'pages/chat.dart';
import 'pages/inicio.dart';
import 'pages/juegos.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Properties & Variables needed

  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    inicio(),
    chat(),
    calendario(),
    juegos(),
    galeria(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = inicio(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        child: Icon(Icons.chat_rounded),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) => galeria()));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            inicio(); // if user taps on this dashboard tab will be active
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.home_sharp,
                          color: currentTab == 0 ? Colors.orange : Colors.grey,
                        ),
                        Text(
                          'Inicio',
                          style: TextStyle(
                            color:
                                currentTab == 0 ? Colors.orange : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            calendario(); // if user taps on this dashboard tab will be active
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.calendar_today,
                          color: currentTab == 1 ? Colors.orange : Colors.grey,
                        ),
                        Text(
                          'Calendario',
                          style: TextStyle(
                            color:
                                currentTab == 1 ? Colors.orange : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),

              //

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = chat();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.photo_camera,
                          color: currentTab == 2 ? Colors.orange : Colors.grey,
                        ),
                        Text(
                          'Galeria',
                          style: TextStyle(
                            color:
                                currentTab == 2 ? Colors.orange : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = juegos();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.games_outlined,
                          color: currentTab == 3 ? Colors.orange : Colors.grey,
                        ),
                        Text(
                          'Juegos',
                          style: TextStyle(
                            color:
                                currentTab == 3 ? Colors.orange : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
