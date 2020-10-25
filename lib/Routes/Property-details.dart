import 'package:airbnb_clone/Constants/Constants.dart';
import 'package:airbnb_clone/Model/Property.dart';
import 'package:airbnb_clone/Routes/BookingScreen.dart';
import 'package:airbnb_clone/Routes/Payer.dart';
import 'package:airbnb_clone/Widgets/commentsWidget.dart';
import 'package:airbnb_clone/Routes/DescriptionDetails.dart';
import 'package:airbnb_clone/Widgets/custom_slider_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_slider_indicator/flutter_slider_indicator.dart';
void main()=>runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
    )
);
class PropertyDetails extends StatefulWidget {
  final Property _property;

  PropertyDetails(this._property);
  @override
  _PropertyDetailsState createState() => _PropertyDetailsState();
}

class _PropertyDetailsState extends State<PropertyDetails> {
  var _pageController=PageController();
  var _currentIndex=0;
  var _maxlines =3;
  bool _liked=false;
  @override
  Widget build(BuildContext context) {
    _pageController.addListener(() {
      setState(() {
        _currentIndex=_pageController.page.round();
      });
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  buildImageSlider(context),
                  buildWidgetImageIndicator(context),
                  buildCloseWidget(context),
                  buildHeartWidget(context),
                  buildContainerPrice(),
                ],
              ),
              buildDescreption(context),
              Padding(
                padding: EdgeInsets.fromLTRB(13,2,25,10),
                child: Row(
                  children: <Widget>[
                    Container(
                        margin:EdgeInsets.only(right: 5),
                        child: Icon(Icons.star,color: Constants.redAirbnb,size: 18,)),
                    Container(
                      margin:EdgeInsets.only(right: 5),
                      child: Align(
                        alignment: Alignment.topLeft,

                        child:  Text("5,0",style: TextStyle(color: Colors.black54,fontSize: 12,fontWeight: FontWeight.w400),overflow: TextOverflow.ellipsis,),
                      ),
                    ) ,
                    Align(
                      alignment: Alignment.topLeft,
                      child:  Text("(25)",style: TextStyle(color: Colors.black54,fontSize: 12,fontWeight: FontWeight.w400,letterSpacing: 0.2),overflow: TextOverflow.ellipsis,),
                    ) ,
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(13,2,25,10),
                child:
                Align(
                  alignment: Alignment.topLeft,
                  child:  Text("Boufarik, Wilaya de Blida, Algerie",style: TextStyle(color: Colors.black54,fontSize: 12,fontWeight: FontWeight.w400,letterSpacing: 0.2),overflow: TextOverflow.ellipsis,),
                ) ,
              ),
              separateurHorizontal(),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(25,2,25,0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Logement entier",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w600,letterSpacing: 0.2),overflow: TextOverflow.ellipsis,),
                        Text("Hôte : Mahmoud",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600,letterSpacing: 0.2),overflow: TextOverflow.ellipsis,),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/images/profilePicture.png"),
                            fit: BoxFit.cover)
                    ),
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
              separateurHorizontal(),
              buildDescText(),
              separateurHorizontal(),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(25,2,25,0),
                  child: Text("équipements".toUpperCase(),style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600,letterSpacing: 0.2),overflow: TextOverflow.ellipsis,),
                ),
              ),
              buildEquipement(Commodite(false,true,false,false,true,false,false,false,true)),
              separateurHorizontal(),
              Padding(
                padding: EdgeInsets.fromLTRB(13,2,25,5),
                child: Row(
                  children: <Widget>[
                    Container(
                        margin:EdgeInsets.only(right: 5),
                        child: Icon(Icons.star,color: Constants.redAirbnb,size: 25,)),
                    Container(
                      margin:EdgeInsets.only(right: 5),
                      child: Align(
                        alignment: Alignment.topLeft,

                        child:  Text("4,38",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),overflow: TextOverflow.ellipsis,),
                      ),
                    ) ,
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(13,0,25,10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child:  Text("(45 commentaires)",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 0.2),overflow: TextOverflow.ellipsis,),
                ),
              ) ,
              SizedBox(height: 25,),
              Padding(
                padding: EdgeInsets.fromLTRB(13,2,25,10),
                child: Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/images/profilePicture.png"),
                              fit: BoxFit.cover)
                      ),
                      height: 45,
                      width: 45,
                    ),
                    SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Mahmoud",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500,letterSpacing: 0.2),overflow: TextOverflow.ellipsis,),
                        Text("novembre 2019",style: TextStyle(color: Colors.black45,fontSize: 14,fontWeight: FontWeight.w500,letterSpacing: 0.2),overflow: TextOverflow.ellipsis,)
                      ],
                    )
                  ],
                ),
              ),
              commentsWidget(),
            ],
          ),

        ),
      ),
      bottomNavigationBar: Material(
        elevation: 5,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10)
          ),
          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
          margin: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
          child: MaterialButton(
              color:  Constants.greenAirbnb,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Payer()));
              },
              child: new Text("Vérifier la disponibilité",style: TextStyle(color: Colors.white),)
          ),
        ),
      ),
    );
  }



  Column buildEquipement(Commodite commodite)
  {
    TextStyle bare= TextStyle(color:Colors.grey,decoration: TextDecoration.lineThrough);
    TextStyle active= TextStyle(color:Colors.black);
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Wi-Fi",style: commodite.wifi? active: bare),
              Icon(Icons.wifi,color: commodite.wifi?Constants.redAirbnb:Colors.grey,)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Service de chambre",style: commodite.serviceDeChambre? active: bare),
              Icon(Icons.local_laundry_service,color: commodite.serviceDeChambre?Constants.redAirbnb:Colors.grey,)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Piscine",style: commodite.piscine? active: bare),
              Icon(Icons.pool,color: commodite.piscine?Constants.redAirbnb:Colors.grey,)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Gym",style: commodite.gym? active: bare),
              Icon(Icons.fitness_center,color: commodite.gym?Constants.redAirbnb:Colors.grey,)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Repas ",style: commodite.repasInclus? active: bare),
              Icon(Icons.room_service,color: commodite.repasInclus?Constants.redAirbnb:Colors.grey,)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Enfant autorisé ",style: commodite.enfantAutorise? active: bare),
              Icon(Icons.child_care,color: commodite.enfantAutorise?Constants.redAirbnb:Colors.grey,)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Parking",style: commodite.Parking? active: bare),
              Icon(Icons.local_parking,color: commodite.Parking?Constants.redAirbnb:Colors.grey,)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Equipé",style: commodite.equipe? active: bare),
              Icon(Icons.widgets,color: commodite.equipe?Constants.redAirbnb:Colors.grey,)
            ],
          ),
        ),
      ],
    );
  }
  Container separateurHorizontal() {
    return Container(
      margin: EdgeInsets.all(15),
      width: 200,
      height: 1,
      color: Colors.black38,
    );
  }
  Column buildDescText() {
    int _maxLines1=3;
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(18,5,25,10),
          child:
          Align(
            alignment: Alignment.topLeft,
            child:  Text("A modern furnished apartment, in a quiet area, but very close to the busy street of sidi yahia.\n-parquet floor/ central ",style: TextStyle(color: Colors.black54,fontSize: 14,fontWeight: FontWeight.w400,letterSpacing: 0.2),overflow: TextOverflow.ellipsis,maxLines: _maxLines1,),
          ) ,
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(18,10,25,10),
          child: GestureDetector(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DescriptionDetails()));
            },
            child: Row(
              children: <Widget>[
                Text("Voir plus d'éléments",style: TextStyle(decoration: TextDecoration.underline,fontWeight: FontWeight.w500,fontSize: 16),),
                Icon(Icons.arrow_right)
              ],
            ),
          ),
        )
      ],
    );
  }


  Container buildImageSlider(BuildContext context) {
    return Container(
        height: 250,
        child: PageView.builder(
            controller: _pageController,
            itemCount: widget._property.images.length,
            itemBuilder: (
                context,index){
              return Image.asset(widget._property.images[_currentIndex],fit: BoxFit.cover,);
            }
        )
    );
  }

  Align buildWidgetImageIndicator(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 225),
        child: SliderIndicator(
          length: widget._property.images.length,
          activeIndex: _currentIndex,
          indicator: Icon(Icons.radio_button_unchecked,color: Colors.white,size: 10,),
          activeIndicator: Icon(Icons.fiber_manual_record,color: Colors.white,size: 12,),
        ),
      ),
    );
  }

  Align buildCloseWidget(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,

      child: Container(
        padding: EdgeInsets.all(0),
        height: 45,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white
        ),
        margin: EdgeInsets.only(left: 13,top: 40),
        child: IconButton(icon: Icon(Icons.arrow_back,size: 18,),
          color: Colors.black,
          onPressed: (){Navigator.of(context).pop();},
        ),
      ),
    );
  }

  Widget buildContainerPrice() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(left: 10,top: 10),
        padding: EdgeInsets.symmetric(vertical: 6,horizontal:12 ),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.attach_money,size: 16,color: Colors.white,),
            Text("${widget._property.prix}",style: TextStyle(color: Colors.white),),
            Text("/ nuit",style: TextStyle(color: Colors.white,fontSize: 16),),
          ],
        ),
      ),
    );
  }
  buildHeartWidget(BuildContext context) {


    return Container(
        margin: EdgeInsets.only(right: 13,top: 40),
        alignment: Alignment.topRight,
        child:GestureDetector(
          child:Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              //  borderRadius: BorderRadius.circular(25)
            ),
            child: Icon(!_liked?Icons.favorite_border:Icons.favorite,color:!_liked? Colors.black:Constants.redAirbnb,size: 20,),
          ),
          onTap: (){
            setState(() {
              _liked=!_liked;
            });
          },
        )
    );
  }

  buildDescreption(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Text("Quiet, carefully designed & furnished apartement",style: TextStyle(fontSize: 20,color: Colors.black,),overflow: TextOverflow.ellipsis,maxLines: 2,),
    );
  }
}
