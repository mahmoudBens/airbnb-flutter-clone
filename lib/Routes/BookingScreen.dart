import 'dart:async';
import 'dart:collection';

import 'package:airbnb_clone/Model/Property.dart';
import 'package:airbnb_clone/Widgets/custom_slider_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:date_range_picker/date_range_picker.dart' as DateRagePicker;
import 'package:google_maps_flutter/google_maps_flutter.dart';

class BookingScreen extends StatefulWidget {
  Property _property;
  BookingScreen(this._property);
  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
            Container(
              height: 200,
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color:   Color(0xff3366cc),
                //image: Image.asset(widget._property.images[0],fit: BoxFit.cover,),
              ),
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 11.0,
                ),
              ),
            ),
           Padding(
             padding:  EdgeInsets.symmetric(horizontal: 30,vertical: 20),
             child: MaterialButton(
                color:   Color(0xff3366cc),
                onPressed: () async {
                  final List<DateTime> picked = await DateRagePicker.showDatePicker(
                      context: context,
                      initialFirstDate: new DateTime.now(),
                      initialLastDate: (new DateTime.now()).add(new Duration(days: 7)),
                      firstDate: new DateTime.now(),
                      lastDate: new DateTime(DateTime.now().year+1),
                  );
                  if (picked != null && picked.length == 2) {
                    print(picked);
                  }
                },
                child: new Text("Choisir votre durée de séjour",style: TextStyle(color: Colors.white),)
          ),
           ),
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                           Column(
                               crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                               Text("Début de Séjour",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                               Text("25-juin-2020",style: TextStyle(color: Colors.black38,height : 1.5,fontSize: 16),)
                              ],
                           ),
                      Container(
                        width: 1,
                        color: Colors.black38,
                        height: 50,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("Fin de Séjour",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          Text("29-juin-2020",style: TextStyle(color: Colors.black38,height : 1.5,fontSize: 16),)
                        ],
                      ),
                    ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("Nombre de nuit",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          Text("4",style: TextStyle(color: Colors.black38,height : 1.5,fontSize: 16),)
                        ],
                      ),
                      Container(
                        width: 1,
                        color: Colors.black38,
                        height: 50,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("Prix total",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          Text("9800 DA",style: TextStyle(color: Colors.black38,height : 1.5,fontSize: 16),)
                        ],
                      ),
                    ],
                  ),
              ),
            ],
          ),
      ],
      ),
      bottomNavigationBar: Padding(
        padding:  EdgeInsets.only(right : MediaQuery.of(context).size.width*.15,
            left:MediaQuery.of(context).size.width*.15,
            bottom: 12),
        child: CustomSliderWidget(),
      ),
    );
  }
}
