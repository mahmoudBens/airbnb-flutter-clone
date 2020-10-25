import 'package:airbnb_clone/Routes/AddProperty/Emplacement.dart';
import 'package:flutter/material.dart';

import 'Quantitatif.dart';
class CategorieType extends StatefulWidget {
  @override
  _CategorieTypeState createState() => _CategorieTypeState();
}

class _CategorieTypeState extends State<CategorieType> {
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
              Text("Parlez-nous de votre logement",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),maxLines: 2,textAlign: TextAlign.center,),
              SizedBox(height: 30,),
              InkWell(
                onTap: (){
                  _askedToLead();
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:  EdgeInsets.fromLTRB(10,8,10,0),
                      child: Text("Commencer par choisir une catégorie générale",style: TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.w400),),
                    ),
                    Padding(
                      padding:  EdgeInsets.fromLTRB(10,12,10,3),
                      child: Text("Séléctionnez une catégorie générale",style: TextStyle(color:Colors.grey,fontSize: 13,fontWeight: FontWeight.w300),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  height: 1,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  SousCategorieDialog();
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:  EdgeInsets.fromLTRB(10,8,10,0),
                      child: Text("choisir maintenant un type de logement",style: TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.w400),),
                    ),
                    Padding(
                      padding:  EdgeInsets.fromLTRB(10,12,10,3),
                      child: Text("Selectionnez une option",style: TextStyle(color:Colors.grey,fontSize: 13,fontWeight: FontWeight.w300),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  height: 1,
                  color: Colors.grey,
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
            MaterialPageRoute(builder: (context) => Emplacement()),
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
  Future<void> _askedToLead() async {
    switch (await showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () { Navigator.pop(context, "Appartement"); },
                child: const Text('Appartement'),
              ),
              SimpleDialogOption(
                onPressed: () { Navigator.pop(context, "Chambre"); },
                child: const Text('Chambre'),
              ),
              SimpleDialogOption(
                onPressed: () { Navigator.pop(context, "Hotel"); },
                child: const Text('Hotel'),
              ),
              SimpleDialogOption(
                onPressed: () { Navigator.pop(context, "Maison"); },
                child: const Text('Maison'),
              ),
            ],
          );
        }
    )) {
      case "Homme":
      // Let's go.
      // ...
        break;
      case "Femme":
      // ...
        break;
    }
  }

  Future<void> SousCategorieDialog() async {
    switch (await showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () { Navigator.pop(context, "Endroit entier"); },
                child: const Text('Endroit entier'),
              ),
              SimpleDialogOption(
                onPressed: () { Navigator.pop(context, "Chambre partagé"); },
                child: const Text('Chambre partagé'),
              ),
            ],
          );
        }
    )) {
      case "Homme":
      // Let's go.
      // ...
        break;
      case "Femme":
      // ...
        break;
    }
  }
}
