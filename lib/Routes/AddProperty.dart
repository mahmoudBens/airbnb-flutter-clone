
import 'package:airbnb_clone/Routes/AddProperty/CategorieType.dart';
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

    return WillPopScope(
      onWillPop: () async {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
        return true;
      },
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25,vertical:15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 35,),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CategorieType()),
                      );
                    },
                    child: Align(
                      alignment: Alignment.topRight,
                        child: IconButton(icon:Icon(Icons.add,color: Colors.black87,),iconSize: 30,)),
                  ),
                  Text("2 Annonces",style: TextStyle(color:Colors.black87,fontSize: 22,fontWeight: FontWeight.bold),),
                  Text("En cours",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Material(
                    elevation: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height:80,
                            width: MediaQuery.of(context).size.width/2,
                            child: Center(child: Text("Chambre privé à Algerie",style: TextStyle(fontSize:15,fontWeight: FontWeight.w300),maxLines: 5,textAlign: TextAlign.center,))),
                        Container(
                          padding:EdgeInsets.all(8),
                          margin: EdgeInsets.only(left: 8),
                          height: 80,
                            child: Image.network("https://cdn.radiofrance.fr/s3/cruiser-production/2019/06/935cd278-34b7-47b0-9efa-95d2d3991248/838_gettyimages-1128954319.jpg",fit: BoxFit.scaleDown,))
                      ],
                    ),
                  ),
                  Material(
                    elevation: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                            height:80,
                            width: MediaQuery.of(context).size.width/2,
                            child: Center(child: Text("Chambre privé à Algerie",style: TextStyle(fontSize:15,fontWeight: FontWeight.w300),maxLines: 5,textAlign: TextAlign.center,))),
                        Container(
                            padding:EdgeInsets.all(8),
                            margin: EdgeInsets.only(left: 8),
                            height: 80,
                            child: Image.network("https://cdn.radiofrance.fr/s3/cruiser-production/2019/06/935cd278-34b7-47b0-9efa-95d2d3991248/838_gettyimages-1128954319.jpg",fit: BoxFit.scaleDown,))
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Material(
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.add,color: Colors.red,size: 25,),
                          SizedBox(width: 15,),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => CategorieType()),
                              );
                            },
                              child: Text("Créer une autre annonce",style: TextStyle(fontWeight: FontWeight.w500),))
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          )
      ),
    );
  }
}
