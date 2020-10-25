import 'package:airbnb_clone/Constants/Constants.dart';
import 'package:airbnb_clone/Model/Property.dart';
import 'package:airbnb_clone/Model/Wilaya.dart';
import 'package:airbnb_clone/Routes/Property-details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Properties extends StatefulWidget {
  final Wilaya wilaya;
  Properties({this.wilaya});
  @override
  _PropertiesState createState() => _PropertiesState();
}

class _PropertiesState extends State<Properties> {
  Row _buildRaitingStars(double raiting) {

    return Row(
      children: <Widget>[
      Icon(Icons.star,color: Colors.orangeAccent,),
        Icon(Icons.star,color: Colors.orangeAccent,),
        Icon(Icons.star,color: Colors.orangeAccent,),
        Icon(Icons.star,color: Colors.orangeAccent,),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0.0,2.0),
                    blurRadius: 6.0
                  )
                 ]
                ),
                child:Hero(
                  tag: widget.wilaya.image,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child:Image(image: AssetImage(widget.wilaya.image),
                        fit: BoxFit.cover,),
                    )
                )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 40.0),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back,),
                      color: Colors.black,
                      iconSize: 30,
                      onPressed: () => Navigator.pop((context)),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 40.0),
                        child: IconButton(
                          icon: Icon(FontAwesomeIcons.sortAmountDown,),
                          color: Colors.black,
                          iconSize: 25,
                          onPressed: () => Navigator.pop((context)),
                        ),
                      ), Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 40.0),
                        child: IconButton(
                          icon: Icon(Icons.search,),
                          color: Colors.black,
                          iconSize: 30,
                          onPressed: () => Navigator.pop((context)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Positioned(
                left: 20,
                bottom: 20,
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start  ,
                  children: <Widget>[
                    Text("${widget.wilaya.label}",style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        letterSpacing: 1.2
                    ),),
                    Row(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.idBadge,size: 15.0,color: Colors.white70,
                        ),
                        SizedBox(width:8,),
                        Text("${widget.wilaya.matricule}",style: TextStyle(
                          color: Colors.white70,
                          fontSize: 20,
                        ),)
                      ],
                    )
                  ],
                ) ,
              ),
              Positioned(
                bottom: 20.0,
                  right: 20.0,
                child: Icon(Icons.location_on,
                size: 25,
                color: Colors.white70,),
              )
            ],
          ),
          Expanded(
            child: GestureDetector(
              onTap:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PropertyDetails(Constants.properties[0])),
                );
              },
              child: ListView.builder(
                  padding : EdgeInsets.only(top:10,bottom: 15),
                  itemCount : Constants.properties.length
                  ,itemBuilder: (BuildContext context,int index){
                Property property = Constants.properties[index];
                return Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(40,5,20,5),
                      height : 170,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(100,20,20,20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width:120,
                                  child: Text(property.titre,style: TextStyle(fontWeight: FontWeight.w600,
                                      fontSize: 18
                                  ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    Text("${property.prix}",style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                    ),),
                                    Text("DA/nuit",style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black38
                                    ),
                                      textAlign: TextAlign.end,
                                    ),
                                  ],
                                )

                              ],
                            ),
                            Text("${property.toString()}",style: TextStyle(
                              color: Colors.grey
                            ),),
                            _buildRaitingStars(property.raiting),
                            SizedBox(height: 10,),

                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left:20,
                      top :15,
                      bottom :15,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(width: 110,image: AssetImage(property.images[0]),
                        fit: BoxFit.cover,),
                      ),
                    )
                  ],
                );
                  }
           ),
            ),
          )
        ],
      ),
    );
  }
}
