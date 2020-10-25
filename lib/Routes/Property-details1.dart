import 'package:airbnb_clone/Model/Property.dart';
import 'package:airbnb_clone/Routes/BookingScreen.dart';
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
  @override
  Widget build(BuildContext context) {
    _pageController.addListener(() {
      setState(() {
        _currentIndex=_pageController.page.round();
      });
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          buildImageSlider(context),
          buildWidgetImageIndicator(context),
          buildCloseWidget(context),
          buildContainerPrice(),
          DraggableScrollableSheet(
            initialChildSize: .5,
            minChildSize: .5,
            maxChildSize: .8,
            builder: (context,controller){
              return SingleChildScrollView(
                controller: controller,
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top :25),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25))
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(
                            child: Center(
                                child:Icon(Icons.drag_handle,color: Colors.black38,),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.all(24.0),
                            child: Text(widget._property.titre,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                buildWidgetSize(),
                                Container(
                                  width: 1,
                                  height: 50,
                                  color: Colors.black38,
                                ),
                                buildWidgetNbrPiece(),
                                Container(
                                  width: 1,
                                  height: 50,
                                  color: Colors.black38,
                                ),
                                buildWidgetNbrFacades(),
                              ],
                            ),
                          ),
                          SizedBox(height: 24,),
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 24),
                            child: Text("${widget._property.descreption}",
                              style: TextStyle(height: 1.5),
                              maxLines: _maxlines,
                            overflow: TextOverflow.ellipsis,),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24),
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  if(_maxlines==3)
                                  _maxlines=10;
                                  else _maxlines=3;
                                });
                              },
                                child: Text(_maxlines==3 ? "Afficher la suite": "Afficher moins",
                                  style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff3366cc),height: 1.5),
                                )
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding:  EdgeInsets.only(right : MediaQuery.of(context).size.width*.15,
            left:MediaQuery.of(context).size.width*.15,
        bottom: 12),
        child: MaterialButton(
            color:   Color(0xff3366cc),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> BookingScreen(widget._property)));
            },
            child: new Text("Aller vers la réservation",style: TextStyle(color: Colors.white),)
        ),
      ),
    );
  }

  Column buildWidgetSize() {
    return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Surface",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                           //     Text("${widget._property.surface}",style: TextStyle(color: Colors.black38,height : 1.5,fontSize: 16),)
                              ],
                            );
  }
  Column buildWidgetNbrPiece() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Pieces",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
      //  Text("${widget._property.nombrePiece}",style: TextStyle(color: Colors.black38,height : 1.5,fontSize: 16),)
      ],
    );
  }
  Column buildWidgetNbrFacades() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("façades",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
       // Text("${widget._property.nbrFacades}",style: TextStyle(color: Colors.black38,height : 1.5,fontSize: 16),)
      ],
    );
  }

  Container buildImageSlider(BuildContext context) {
    return Container(
          height: MediaQuery.of(context).size.height* .6,
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
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height *.45),
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
          alignment: Alignment.topRight,

          child: Container(
            margin: EdgeInsets.only(right: 24,top: 45),
            child: IconButton(icon: Icon(Icons.close),
              color: Colors.white,
              onPressed: (){Navigator.of(context).pop();},
            ),
          ),
        );
  }

  Container buildContainerPrice() {
    return Container(
          margin: EdgeInsets.only(left: 24,top: 50),
          padding: EdgeInsets.symmetric(vertical: 6,horizontal:12 ),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Icon(Icons.attach_money,size: 16,color: Colors.white,),
              Text("${widget._property.prix}",style: TextStyle(color: Colors.white),),
              Text("/ nuit",style: TextStyle(color: Colors.white,fontSize: 16),),
            ],
          ),
        );
  }
}
