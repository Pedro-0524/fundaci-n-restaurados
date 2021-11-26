import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/material/circle_avatar.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'pages/MenuLateral/compartir.dart';
import 'pages/MenuLateral/nosotros.dart';
import 'pages/MenuLateral/recomiendanos.dart';

class menulateral extends StatefulWidget {
  const menulateral({Key key}) : super(key: key);

  @override
  State<menulateral> createState() => _menulateralState();
}

class _menulateralState extends State<menulateral> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User user;
  bool isloggedin = false;

  checkAuthentification() async {
    _auth.authStateChanges().listen((user) {
      if (user == null) {
        Navigator.of(context).pushReplacementNamed("start");
      }
    });
  }

  getUser() async {
    User firebaseUser = _auth.currentUser;
    await firebaseUser?.reload();
    firebaseUser = _auth.currentUser;

    if (firebaseUser != null) {
      setState(() {
        this.user = firebaseUser;
        this.isloggedin = true;
      });
    }
  }

  signOut() async {
    _auth.signOut();

    final googleSignIn = GoogleSignIn();
    await googleSignIn.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(''),
            accountEmail: Text(''),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://us.123rf.com/450wm/tuktukdesign/tuktukdesign1606/tuktukdesign160600119/59070200-icono-de-usuario-hombre-perfil-hombre-de-negocios-avatar-icono-persona-en-la-ilustraci%C3%B3n-vectorial.jpg?ver=6',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                  'https://marketplace.canva.com/EAEKqa_fvcM/1/0/1600w/canva-rosa-azul-pastel-arte-l%C3%ADquido-tendencia-fondo-zoom-MNKLP6Imvd4.jpg'),
              fit: BoxFit.cover,
            )),
          ),
          ListTile(
            leading: Icon(Icons.share_location_sharp),
            title: Text('Ayuda'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => compartir()));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.share,
            ),
            title: Text('Recomiendanos '),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => recomiendanos()));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.assignment_ind_outlined,
            ),
            title: Text('Nostros '),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => nosotros()));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.power_settings_new,
              color: Colors.red,
            ),
            title: Text('Salir'),
            onTap: signOut,
          ),
        ],
      ),
    );
  }
}
