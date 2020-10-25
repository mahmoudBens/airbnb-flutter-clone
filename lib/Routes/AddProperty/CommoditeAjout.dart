import 'dart:math';

import 'package:airbnb_clone/Routes/AddProperty/Photo.dart';
import 'package:airbnb_clone/Widgets/CircleCheckBox.dart';
import 'package:flutter/material.dart';
class CommoditeAjout extends StatefulWidget {
  @override
  _CommoditeAjoutState createState() => _CommoditeAjoutState();
}

class _CommoditeAjoutState extends State<CommoditeAjout> {
  var _chambreSelected=false;

  var _piscine=false;
  var _gym=false;

  var _repasInclus=false;

  var _parking=false;

  var _equipe=false;

  var _serviceChambre=false;

  var _enfantAutorise=false;

  var _fumeeAutorise=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical:25,horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back,color: Colors.black87,size: 23,),
                onPressed: (){
                  Navigator.pop(context);
                },),
              SizedBox(height: 30,),
              GestureDetector(
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 15),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                     Text("Wi-Fi",style: TextStyle(fontSize: 15),),
                     Container(
                       height: 35,
                       decoration: BoxDecoration(shape: BoxShape.circle, color: _chambreSelected? Colors.blue:Colors.black12),
                       child: _chambreSelected
                           ? Icon(
                         Icons.check,
                         size: 30.0,
                         color: Colors.white,
                       )
                           :Icon(
                         Icons.check,
                         size: 30.0,
                         color: Colors.white,
                       )
                     ),
                   ],
                 ),
               ),
                onTap: (){
                 setState(() {
                   _chambreSelected=!_chambreSelected;
                 });
                },
              ),
              SeparateurHorizontal(),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Piscine",style: TextStyle(fontSize: 15),),
                      Container(
                          height: 35,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: _piscine? Colors.blue:Colors.black12),
                          child: _piscine
                              ? Icon(
                            Icons.check,
                            size: 30.0,
                            color: Colors.white,
                          )
                              :Icon(
                            Icons.check,
                            size: 30.0,
                            color: Colors.white,
                          )
                      ),
                    ],
                  ),
                ),
                onTap: (){
                  setState(() {
                    _piscine=!_piscine;
                  });
                },
              ),
              SeparateurHorizontal(),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Gym",style: TextStyle(fontSize: 15),),
                      Container(
                          height: 35,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: _gym? Colors.blue:Colors.black12),
                          child: _gym
                              ? Icon(
                            Icons.check,
                            size: 30.0,
                            color: Colors.white,
                          )
                              :Icon(
                            Icons.check,
                            size: 30.0,
                            color: Colors.white,
                          )
                      ),
                    ],
                  ),
                ),
                onTap: (){
                  setState(() {
                    _gym=!_gym;
                  });
                },
              ),
              SeparateurHorizontal(),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Repas inclu",style: TextStyle(fontSize: 15),),
                      Container(
                          height: 35,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: _repasInclus? Colors.blue:Colors.black12),
                          child: _repasInclus
                              ? Icon(
                            Icons.check,
                            size: 30.0,
                            color: Colors.white,
                          )
                              :Icon(
                            Icons.check,
                            size: 30.0,
                            color: Colors.white,
                          )
                      ),
                    ],
                  ),
                ),
                onTap: (){
                  setState(() {
                    _repasInclus=!_repasInclus;
                  });
                },
              ),
              SeparateurHorizontal(),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Parking",style: TextStyle(fontSize: 15),),
                      Container(
                          height: 35,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: _parking? Colors.blue:Colors.black12),
                          child: _parking
                              ? Icon(
                            Icons.check,
                            size: 30.0,
                            color: Colors.white,
                          )
                              :Icon(
                            Icons.check,
                            size: 30.0,
                            color: Colors.white,
                          )
                      ),
                    ],
                  ),
                ),
                onTap: (){
                  setState(() {
                    _parking=!_parking;
                  });
                },
              ),
              SeparateurHorizontal(),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Equipé",style: TextStyle(fontSize: 15),),
                      Container(
                          height: 35,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: _equipe? Colors.blue:Colors.black12),
                          child: _equipe
                              ? Icon(
                            Icons.check,
                            size: 30.0,
                            color: Colors.white,
                          )
                              :Icon(
                            Icons.check,
                            size: 30.0,
                            color: Colors.white,
                          )
                      ),
                    ],
                  ),
                ),
                onTap: (){
                  setState(() {
                    _equipe=!_equipe;
                  });
                },
              ),
              SeparateurHorizontal(),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Service de chambre",style: TextStyle(fontSize: 15),),
                      Container(
                          height: 35,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: _serviceChambre? Colors.blue:Colors.black12),
                          child: _serviceChambre
                              ? Icon(
                            Icons.check,
                            size: 30.0,
                            color: Colors.white,
                          )
                              :Icon(
                            Icons.check,
                            size: 30.0,
                            color: Colors.white,
                          )
                      ),
                    ],
                  ),
                ),
                onTap: (){
                  setState(() {
                    _serviceChambre=!_serviceChambre;
                  });
                },
              ),
              SeparateurHorizontal(),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Enfants autorisés",style: TextStyle(fontSize: 15),),
                      Container(
                          height: 35,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: _enfantAutorise? Colors.blue:Colors.black12),
                          child: _enfantAutorise
                              ? Icon(
                            Icons.check,
                            size: 30.0,
                            color: Colors.white,
                          )
                              :Icon(
                            Icons.check,
                            size: 30.0,
                            color: Colors.white,
                          )
                      ),
                    ],
                  ),
                ),
                onTap: (){
                  setState(() {
                    _enfantAutorise=!_enfantAutorise;
                  });
                },
              ),
              SeparateurHorizontal(),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Fumée autorisée",style: TextStyle(fontSize: 15),),
                      Container(
                          height: 35,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: _fumeeAutorise? Colors.blue:Colors.black12),
                          child: _fumeeAutorise
                              ? Icon(
                            Icons.check,
                            size: 30.0,
                            color: Colors.white,
                          )
                              :Icon(
                            Icons.check,
                            size: 30.0,
                            color: Colors.white,
                          )
                      ),
                    ],
                  ),
                ),
                onTap: (){
                  setState(() {
                    _fumeeAutorise=!_fumeeAutorise;
                  });
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: MaterialButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Photo()),
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

  Container SeparateurHorizontal() {
    return Container(
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
              height: 0.3,
              color: Colors.grey,
            );
  }
}
