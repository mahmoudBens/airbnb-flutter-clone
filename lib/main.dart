import 'dart:ui';
import 'package:airbnb_clone/Routes/Ongoing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'package:airbnb_clone/Routes/HomePage.dart';

import 'Constants/Constants.dart';
import 'Routes/login.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor:Colors.transparent, // navigation bar color
    statusBarColor: Color(0xAA00A699), // status bar color
  ));
  runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home : LoginPage(),
    theme: ThemeData(
      appBarTheme: AppBarTheme(
        color: Colors.white
      ),
      fontFamily: 'Poppins'
    ),
  )
);
}
class LoginPage extends StatefulWidget {
  @override

  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {


  @override
  Widget build(BuildContext context) {
    return Ongoing();
  }
























  /*  @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: SafeArea(
          maintainBottomViewPadding: true,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 130,
                    width: 130,
                    child: Image(
                      image: AssetImage("assets/images/logo.png"),
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Container( // se connecter avec google container
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black87),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.all(20),
                            //padding: EdgeInsets.all(20),
                            height: 20,
                            width: 20,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image(image: AssetImage(
                                "assets/images/social_media/google.png"),)),
                        Text("Se connecter avec Google")
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container( // se connecter avec telephone container
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black87),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.all(20),
                            //padding: EdgeInsets.all(20),
                            height: 20,
                            width: 20,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image(image: AssetImage(
                                "assets/images/social_media/phone.png"),)),
                        Text("Se connecter avec Téléphone")
                      ],
                    ),
                  ),
                  SizedBox(height: 40,),
                  Visibility(
                    visible: _inscription,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black87),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Nom & prénom",
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey),
                            prefixIcon: Icon(Icons.person_outline)
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _inscription,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black87),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Téléphone",
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey),
                            prefixIcon: Icon(Icons.smartphone)
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black87),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Email",
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.grey),
                          prefixIcon: Icon(Icons.alternate_email)
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black87),
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Password",
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.grey),
                          prefixIcon: Icon(Icons.lock_outline)
                      ),
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      setState(() {
                        if(!_inscription)
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                          else
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                      });
                    },
                    splashColor: Colors.white,
                    hoverColor: Colors.blue,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black87),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(!_inscription?"Se connecter":"S'inscrire"),
                          Icon(Icons.arrow_right)
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _inscription=!_inscription;
                      });
                    },
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: InkWell(
                          child: Text(_inscription?"Vous n'avez pas de compte ? S'inscrire":"Vous avez un compte ? Se connecter",
                            style: TextStyle(color: Colors.black54, fontSize: 10),
                            textAlign: TextAlign.center,),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

   */
}
