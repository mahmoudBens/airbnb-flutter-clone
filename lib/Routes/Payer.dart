import 'package:airbnb_clone/Constants/Constants.dart';
import 'package:flutter/material.dart';

class Payer extends StatefulWidget {
  @override
  _PayerState createState() => _PayerState();
}

class _PayerState extends State<Payer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical:25,horizontal: 15 ),
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                   icon: Icon(Icons.arrow_back,color: Colors.black87,size: 23,),
                   onPressed: (){
                     Navigator.pop(context);
                   },
                 ),
                Text("Confirmez et payez",style: TextStyle(fontSize: 18),),
              ],
            ),
             SizedBox(height: 30),
             Container(
               child: Row(
                 mainAxisSize: MainAxisSize.min,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                     ),
                   height: 160,width: 120,
                       child: ClipRRect(
                         borderRadius: BorderRadius.circular(15) ,
                           child: Image.asset("assets/images/properties/p1.jpg",fit: BoxFit.fill,)
                       )
                   ),
                   SizedBox(width: 15,),
                   Flexible(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         Text("Appartement en résidence",style: TextStyle(fontSize: 12),overflow: TextOverflow.ellipsis,maxLines: 1,),
                         SizedBox(height: 10,),
                         Text("Appartement",style: TextStyle(fontSize: 16),overflow: TextOverflow.ellipsis,maxLines: 1,),
                         SizedBox(height: 8,),
                         Text("Alger centre",style: TextStyle(fontSize: 16),overflow: TextOverflow.ellipsis,maxLines: 1,),
                         SizedBox(height: 8,),
                         Row(
                           children: <Widget>[
                             Container(
                                 margin:EdgeInsets.only(right: 5),
                                 child: Icon(Icons.star,color: Colors.red,size: 18,)),
                             Container(
                               margin:EdgeInsets.only(right: 5),
                               child: Align(
                                 alignment: Alignment.topLeft,

                                 child:  Text("5,0",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,),
                               ),
                             ) ,
                             Align(
                               alignment: Alignment.topLeft,
                               child:  Text("(25)",style: TextStyle(color: Colors.black54,fontSize: 12,fontWeight: FontWeight.w400,letterSpacing: 0.2),overflow: TextOverflow.ellipsis,),
                             ) ,
                           ],
                         ),
                       ],
                     ),
                   ),
                 ],
               ),
             ),
             SizedBox(height: 25,),
             Container(
               height: 10,
               color: Colors.black12,
               width: MediaQuery.of(context).size.width,
             ),
             Text("Votre voyage",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
             SizedBox(height: 15,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Text("Dates",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                 InkWell(
                     onTap: (){

                     },
                     child: Text("Modifier",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17,decoration: TextDecoration.underline),)),
               ],
             ),
             SizedBox(height: 10,),
             Text("25-08-2020 / 29-08-2020",style: TextStyle(color: Colors.grey,fontSize: 16),),
             SizedBox(height: 15,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Text("Voyageurs",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                 InkWell(
                   onTap: (){

                   },
                     child: Text("Modifier",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17,decoration: TextDecoration.underline),)),
               ],
             ),
             SizedBox(height: 10,),
             Text("5 voyageurs",style: TextStyle(color: Colors.grey,fontSize: 16),),
             SizedBox(height: 10,),
             Text("Détails du prix",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
             SizedBox(height: 10,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Text("2500 x 5 nuits",style: TextStyle(color: Colors.grey,fontSize: 16),),
                 Text("12500DA",style: TextStyle(color: Colors.grey,fontSize: 16),),
               ],
             ),
             SizedBox(height: 50,),
             Center(
               child: MaterialButton(
                 child: Container(
                   width: MediaQuery.of(context).size.width,
                     padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                       color: Constants.greenAirbnb,
                     ),
                     child: Text("Confirmer et payer",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)),
               ),
             )
           ]
          ),
        ),
      ),
    );
  }
}
