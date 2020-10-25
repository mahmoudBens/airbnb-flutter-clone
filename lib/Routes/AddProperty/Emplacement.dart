import 'package:airbnb_clone/Model/Property.dart';
import 'package:airbnb_clone/Routes/AddProperty/CommoditeAjout.dart';
import 'package:airbnb_clone/flutter_counter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Emplacement extends StatefulWidget {
  @override
  _EmplacementState createState() => _EmplacementState();
}

class _EmplacementState extends State<Emplacement> {
  num _defaultValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical:25,horizontal: 15 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back,color: Colors.black87,size: 23,),
              onPressed: (){
                Navigator.pop(context);
              },),
              SizedBox(height: 30,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text("Où est situé votre logement ?",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),textAlign: TextAlign.left,),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text("C'est la position que les utilisateurs voient",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w300),textAlign: TextAlign.left,),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 5),
                child: MaterialButton(
                  color: Colors.white,
                  elevation: 5,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black87),
                    ),
                    child: Text("Utiliser l'emplacement actuel",textAlign: TextAlign.center,style: TextStyle(color: Colors.red),),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Center(
                child: Text("Où saisissez votre adresse",style: TextStyle(color: Colors.grey,fontSize: 12),),
              ),
              SizedBox(height: 30,) ,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Pays/Région",style: TextStyle(color: Colors.black87,fontSize: 13,fontWeight: FontWeight.w400),),
                    TextField(
                      style: TextStyle(color: Colors.grey),
                    controller: TextEditingController(text: "Algérie",),
                      decoration: InputDecoration(
                      ),
                    ),
                    //separateurHorizontal(),

                  ],
                ),
              ),
              SizedBox(height: 15,) ,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Wilaya",style: TextStyle(color: Colors.black87,fontSize: 13,fontWeight: FontWeight.w400),),
                    TextField(
                      style: TextStyle(color: Colors.grey),
                      controller: TextEditingController(text: "Blida",),
                      decoration: InputDecoration(
                      ),
                    ),
                    //separateurHorizontal(),

                  ],
                ),
              ),
              SizedBox(height: 15,) ,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Commune",style: TextStyle(color: Colors.black87,fontSize: 13,fontWeight: FontWeight.w400),),
                    TextField(
                      style: TextStyle(color: Colors.grey),
                      controller: TextEditingController(text: "Oued el aleug",),
                      decoration: InputDecoration(
                      ),
                    ),
                    //separateurHorizontal(),

                  ],
                ),
              ),
              SizedBox(height: 15,) ,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Rue",style: TextStyle(color: Colors.black87,fontSize: 13,fontWeight: FontWeight.w400),),
                    TextField(
                      style: TextStyle(color: Colors.grey),
                      controller: TextEditingController(text: "amir abdelkader",),
                      decoration: InputDecoration(
                      ),
                    ),
                    //separateurHorizontal(),

                  ],
                ),
              ),
              SizedBox(height: 15,) ,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Numéro de propriété",style: TextStyle(color: Colors.black87,fontSize: 13,fontWeight: FontWeight.w400),),
                    TextField(
                      style: TextStyle(color: Colors.grey),
                      controller: TextEditingController(text: "125",),
                      decoration: InputDecoration(
                      ),
                    ),
                    //separateurHorizontal(),

                  ],
                ),
              ),
              SizedBox(height: 15,) ,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Code postal",style: TextStyle(color: Colors.black87,fontSize: 13,fontWeight: FontWeight.w400),),
                    TextField(
                      style: TextStyle(color: Colors.grey),
                      controller: TextEditingController(text: "09037",),
                      decoration: InputDecoration(
                      ),
                    ),
                    //separateurHorizontal(),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: MaterialButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CommoditeAjout()),
          );
        },
        elevation: 3,
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.red,
            ),
            child: Text("Suivant",style: TextStyle(color: Colors.white),)),
      ),

    );
  }
  Container separateurHorizontal() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal:0,vertical: 8),
      height: 1,
      color: Colors.black12,
    );
  }
}
