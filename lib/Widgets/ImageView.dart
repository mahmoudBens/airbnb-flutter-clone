import 'package:airbnb_clone/Constants/Constants.dart';
import 'package:airbnb_clone/Model/Property.dart';
import 'package:airbnb_clone/Routes/Payer.dart';
import 'package:airbnb_clone/Routes/Property-details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_indicator/flutter_slider_indicator.dart';

class ImageProperty extends StatefulWidget {
  bool _liked;
  Property property;
  int _currentIndex=0;

  ImageProperty(this._liked, this.property);

  @override
  _ImagePropertyState createState() => _ImagePropertyState();
}

class _ImagePropertyState extends State<ImageProperty> {



  Container buildImageSlider(BuildContext context,PageController p,int index,Property property) {
    return Container(
      // margin: EdgeInsets.all(20),
        child: PageView.builder(
            controller: p..addListener(() {
              setState(() {
                index=p.page.round();
                widget._currentIndex=p.page.round();
              });
            }),
            itemCount: property.images.length,
            itemBuilder: (
                context,index){
              return ClipRRect(
                  child:Image.asset(property.images[index],fit: BoxFit.cover,));
            }
        )
    );
  }

  Align buildWidgetImageIndicator(BuildContext context,Property property, int currentindex) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: SliderIndicator(
            length: property.images.length,
            activeIndex: currentindex,
            indicator:Padding( padding:EdgeInsets.all(3),child:Icon(Icons.fiber_manual_record,color: Colors.white70,size: 10,)),
            activeIndicator: Padding(padding:EdgeInsets.all(3),child:Icon(Icons.fiber_manual_record,color: Colors.white,size: 14,),)
        ),
      ),
    );
  }

  buildHeartWidget(BuildContext context) {

    return Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.topRight,
        child:GestureDetector(
          child:Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              //  borderRadius: BorderRadius.circular(25)
            ),
            child: Icon(!widget._liked?Icons.favorite_border:Icons.favorite,color:!widget._liked? Colors.black:Constants.redAirbnb,size: 25,),
          ),
          onTap: (){
            setState(() {
              widget._liked=!widget._liked;
            });
          },
        )
    );
  }


  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: EdgeInsets.only(bottom: 5),
      child:   InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PropertyDetails(widget.property)),
          );
        },
        child:Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0,0,0,15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),

              ),
              height: 200,
              child: Stack(
                children: <Widget>[
                  buildImageSlider(context,PageController(),widget._currentIndex,widget.property),
                  buildWidgetImageIndicator(context,Constants.properties[1],widget._currentIndex),
                  buildHeartWidget(context),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB( 35,0,35, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child:  Text(widget.property.titre,style: TextStyle(color: Colors.black87,fontSize: 15,fontWeight: FontWeight.w400),),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child:  Text(widget.property.address.wilaya,style: TextStyle(color: Colors.black87,fontSize: 18,fontWeight: FontWeight.w400),overflow: TextOverflow.ellipsis,),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child:  Text(widget.property.titre,style: TextStyle(color: Colors.black87,fontSize: 18,fontWeight: FontWeight.w400),overflow: TextOverflow.ellipsis,),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child:  Text("${widget.property.prix} DZD/nuit",style: TextStyle(color: Colors.black54,fontSize: 13,fontWeight: FontWeight.w400),),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.star,color: Constants.greenAirbnb,size: 12,),
                          Align(
                            alignment: Alignment.topLeft,
                            child:  Text("${widget.property.raiting}",style: TextStyle(color: Colors.black87,fontSize: 13,fontWeight: FontWeight.w400),overflow: TextOverflow.ellipsis,),
                          ) ,
                          Align(
                            alignment: Alignment.topLeft,
                            child:  Text("(25)",style: TextStyle(color: Colors.black54,fontSize: 13,fontWeight: FontWeight.w400),overflow: TextOverflow.ellipsis,),
                          ) ,
                        ],
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Constants.greenAirbnb
                    ),
                    child: InkWell(
                      child: Text("Book now",style: TextStyle(color: Colors.white),),
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Payer()),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),


          ],
        ), ),
    );
  }
}
