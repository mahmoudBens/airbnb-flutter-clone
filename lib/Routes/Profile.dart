import 'package:airbnb_clone/Constants/Constants.dart';
import 'package:airbnb_clone/Model/Property.dart';
import 'package:airbnb_clone/Routes/AddProperty.dart';
import 'package:airbnb_clone/Routes/InfoPersonnel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()=>runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Profile(),
    )
);

  class Profile extends StatefulWidget {

  @override
  _ProfileState createState() => _ProfileState();
  }

  class _ProfileState extends State<Profile> {
    final textStyleState = TextStyle(
        fontSize: 11.0,
        color: Colors.white
    );

    final textStyleTop = TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
        color: Colors.white
    );

    final textStyle2 = TextStyle(
        color: Colors.white

    );

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body:ListView(
          children: <Widget>[
        Container(

          child: Padding(
          padding: EdgeInsets.all(25),
          child: Row(
            children: <Widget>[
              Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/profilePicture.png"),
                        fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(20)
                ),
              ),
              SizedBox(width: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Robert",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black87
                  ),),
                ],
              )
            ],
          ),
      ),
        ),
            ClipRRect(

              child: Container(
        margin: const EdgeInsets.only(bottom: 5.0),
                decoration: BoxDecoration(
                    color: Colors.black12,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black87,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 5.0,
                    ),
                  ],
                ),
                width: 50,
                height: 1,
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(15),
              child: Text("Paramètres du compte".toUpperCase(),style: TextStyle(color: Colors.grey,fontSize: 15,),),
            ),
            FlatButton(
                    splashColor: Colors.grey,
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => InfoPersonnel()),
                      );
                    },
                    child: Padding(
                      padding:  EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                         Expanded(
                           child: Text("Informations personnelles",
                            style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w300),
                              overflow: TextOverflow.ellipsis,),
                         ),
                          Icon(
                            Icons.person_outline,
                          ),
          ],
                      ),
                    ),
                ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.black12,
              ),
              width: 50,
              height: 1,
            ),
            FlatButton(
              splashColor: Colors.grey,
              onPressed: (){},
              child: Padding(
                padding:  EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: Text("Notifications",
                        style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w300),
                        overflow: TextOverflow.ellipsis,),
                    ),
                    Icon(
                      Icons.notifications_none,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.black12,
              ),
              width: 50,
              height: 1,
            ),
            FlatButton(
              splashColor: Colors.grey,
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddProperty()),
                );
              },
              child: Padding(
                padding:  EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: Text("Ajouter appartement",
                        style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w300),
                        overflow: TextOverflow.ellipsis,),
                    ),
                    Icon(
                      Icons.add_circle_outline,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.black12,
              ),
              width: 50,
              height: 1,
            ),
            FlatButton(
              splashColor: Colors.grey,
              onPressed: (){},
              child: Padding(
                padding:  EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: Text("Se déconnecter",
                        style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w300),
                        overflow: TextOverflow.ellipsis,),
                    ),
                    Icon(
                      Icons.exit_to_app,
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