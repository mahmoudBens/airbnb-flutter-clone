import 'dart:ui';

import 'package:airbnb_clone/Routes/Map.dart';
import 'package:airbnb_clone/Widgets/ItemDropDownButtonCategory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:airbnb_clone/Routes/HomePage.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home : AddProperty(),
  )
);
class AddProperty extends StatefulWidget {
  @override
  _AddPropertyState createState() => _AddPropertyState();
}

class _AddPropertyState extends State<AddProperty> {
  ItemDropDownButtonCategory _selectedCategory;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.white70,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Color(0xff3366cc),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                width: MediaQuery.of(context).size.width,
                height: 250,
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Icon(
                  Icons.add_circle_outline,
                  size: 35,
                  color: Colors.white,
                ),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child:Text("Title",
                        style: TextStyle(color: Colors.black54,fontSize: 17,fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "villa sur plage",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Colors.black26,
                  )
                ],
              ),
              SizedBox(height: 25,),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child:Text("Description",
                        style: TextStyle(color: Colors.black54,fontSize: 17,fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "villa avec une sortie sur la plage familiale SIDI BOUZID ",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Colors.black26,
                  )
                ],
              ),
              SizedBox(height: 25,),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child:Text("Prix",
                        style: TextStyle(color: Colors.black54,fontSize: 17,fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "3200 ",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Colors.black26,
                  )
                ],
              ),
              SizedBox(height: 25,),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child:Text("Surface",
                        style: TextStyle(color: Colors.black54,fontSize: 17,fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "125 ",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Colors.black26,
                  )
                ],
              ),
              SizedBox(height: 25,),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child:Text("Nombre de chambre",
                        style: TextStyle(color: Colors.black54,fontSize: 17,fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "3",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Colors.black26,
                  )
                ],
              ),
              SizedBox(height: 25,),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child:Text("nombre de façades",
                        style: TextStyle(color: Colors.black54,fontSize: 17,fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "2",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Colors.black26,
                  )
                ],
              ),
              SizedBox(height: 25,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child:Text("Location",
                        style: TextStyle(color: Colors.black54,fontSize: 17,fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: FlatButton(
                      color: Color(0xff3366cc),
                      textColor: Colors.white,
                      disabledColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      padding: EdgeInsets.all(8.0),
                      splashColor: Colors.blueAccent,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyApp()),
                        );
                      },
                      child: Text(
                        "choisir la position",
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Colors.black26,
                  )
                ],
              ),
              SizedBox(height: 25,),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child:Text("Catégorie",
                        style: TextStyle(color: Colors.black54,fontSize: 17,fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: DropdownButton<ItemDropDownButtonCategory>(
                        value: _selectedCategory,
                        hint: Text("Selectionner un element"),
                        onChanged: (ItemDropDownButtonCategory Value){
                          setState(() {
                            _selectedCategory = Value;
                          });
                        },
                        items: ItemDropDownButtonCategory.list.map((ItemDropDownButtonCategory item){
                          return DropdownMenuItem<ItemDropDownButtonCategory>(
                            value: item,
                            child: Row(
                              children: <Widget>[
                                item.icon,
                                SizedBox(width: 10,),
                                Text(item.label,style: TextStyle(color: Colors.black),)
                              ],
                            ),
                          );
                        }).toList(),
                      )
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Colors.black26,
                  )
                ],
              ),
              FlatButton(
                color: Color(0xff3366cc),
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.blueAccent,
                onPressed: () {
                  /*...*/
                },
                child: Text(
                  "Valider",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
            ],
          ),
        )
    );
  }
}
