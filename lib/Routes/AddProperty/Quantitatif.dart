import 'package:airbnb_clone/flutter_counter.dart';
import 'package:flutter/material.dart';

class Quantitatif extends StatefulWidget {
  @override
  _QuantitatifState createState() => _QuantitatifState();
}

class _QuantitatifState extends State<Quantitatif> {
  num _defaultValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical:25,horizontal: 20 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back,color: Colors.black87,size: 23,),
              onPressed: (){
                Navigator.pop(context);
              },),
              SizedBox(height: 30,),
              Text("Combien de voyageurs pouvez-vous accueillir ?",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),textAlign: TextAlign.left,),
              Text("Vérifier que vous disposez de suffisament de lits pour assurer le confort de tous vos voyageurs.",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w300),textAlign: TextAlign.left,),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  elevation: 5,
                  child: Container(
                    //margin: EdgeInsets.symmetric(vertical: 25),
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black87),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Cette interface reste à confirmer ,",style: TextStyle(fontSize: 15),),
                        Counter(
                          minValue: 0,
                          maxValue: 10,
                          decimalPlaces: 0,
                          initialValue: 0,
                          step: 1,
                          textStyle: TextStyle(letterSpacing: 10),
                          onChanged: (value0){
                            setState(() {
                              _defaultValue=value0;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
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
            MaterialPageRoute(builder: (context) => Quantitatif()),
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
}
