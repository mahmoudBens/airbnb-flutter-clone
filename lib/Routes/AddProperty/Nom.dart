import 'package:airbnb_clone/Routes/AddProperty/Emplacement.dart';
import 'package:flutter/material.dart';

import '../AddProperty.dart';

class Nom extends StatefulWidget {
  @override
  _NomState createState() => _NomState();
}

class _NomState extends State<Nom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical:25,horizontal: 25 ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back,color: Colors.black87,size: 23,),
                  onPressed: (){
                  Navigator.pop(context);
                  },),
                SizedBox(height: 30,),
                Text("Donner un nom à votre annonce",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
                SizedBox(height: 20,),
                Text("Attirez les voyageurs avec un titre d'annonce qui met en valeur ce qui fait la particularité de votre logement",style: TextStyle(fontSize: 18,color:Colors.black87,fontWeight: FontWeight.w400),),
                SizedBox(height: 30,),
                TextField(
                  style: TextStyle(color: Colors.black87,fontSize: 18),
                  decoration: InputDecoration(
                    hintText: "Ajouter un titre",
                  ),
                ),
                SizedBox(height: 80,),
                Align(
                  alignment: Alignment.bottomRight,
                  child: MaterialButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddProperty()),
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
                )
              ],
            ),
          ),
        ),
    // MediaQuery.of(context).viewInsets.bottom == 0.0

    );
  }
}
