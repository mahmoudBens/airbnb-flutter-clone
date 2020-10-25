import 'package:airbnb_clone/Constants/Constants.dart';
import 'package:airbnb_clone/Model/Wilaya.dart';
import 'package:airbnb_clone/Routes/Profile.dart';
import 'package:airbnb_clone/Routes/Properties1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopWilaya extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Top Wilayas",style: TextStyle(fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5),
                ),
                GestureDetector(
                    onTap: ()=> {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => Profile()))
                    },
                child :Text("tout voir",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0),
                )
                )
              ],
            )


        ),
        Container(
          height: 300,
          child: ListView.builder(itemCount: Constants.properties.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context,int index){
            Wilaya wilaya =Constants.wilayas[index];

              return GestureDetector(
                onTap: ()=> {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => Properties(wilaya: wilaya)))
                },
                child: Container(
                  width: 210,
                  margin: EdgeInsets.all(10),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Positioned(
                        bottom: 15.0,
                        child:Container(
                            height: 120,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start ,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text("15 properties",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,letterSpacing: 1.2),),
                                  Text(wilaya.descreption,style: TextStyle(color: Colors.grey),)
                                ],
                              ),
                            )
                        ) ,
                      )
                      ,
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [BoxShadow(
                                color: Colors.black26,
                                offset:Offset(0.0,3.0),
                                blurRadius: 6
                            )]
                        ),
                        child: Stack(
                          children: <Widget>[
                            Hero(
                            tag: wilaya.image,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child:Image(
                                  height: 180,
                                  width: 180,
                                  image: AssetImage(wilaya.image),
                                  fit: BoxFit.cover,
                                ) ,
                              ),
                            ),

                            Positioned(
                              left: 10,
                              bottom: 10,
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start  ,
                                children: <Widget>[
                                  Text("${wilaya.label}",style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      letterSpacing: 1.2
                                  ),),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        FontAwesomeIcons.idBadge,size: 10.0,color: Colors.white,
                                      ),
                                      SizedBox(width:8,),
                                      Text("${wilaya.matricule}",style: TextStyle(
                                        color: Colors.white,
                                      ),)
                                    ],
                                  )
                                ],
                              ) ,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
