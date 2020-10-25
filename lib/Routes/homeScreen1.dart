import 'package:airbnb_clone/Constants/Constants.dart';
import 'package:airbnb_clone/Model/Property.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Widgets/TypeProperties.dart';
void main()=>runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home : HomeScreen1(),
    )
);

  class HomeScreen1 extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
  }

  class _HomeScreenState extends State<HomeScreen1> {
    int _selectedIndex = 0;
    int _currentTab = 0;

    final textStyleState = TextStyle(
        fontSize: 11.0,
        color: Colors.white
    );

    final textStyleTop = TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
        color: Colors.white
    );

    final textStyle2 = TextStyle(
        color: Colors.white
    );
    List<IconData> _icons = [
      FontAwesomeIcons.building,
      FontAwesomeIcons.home,
      FontAwesomeIcons.hotel,
      FontAwesomeIcons.desktop,
   //   FontAwesomeIcons.chair,
    ];

    Widget _buildIcon(int index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: _selectedIndex == index ? Theme
                  .of(context)
                  .accentColor : Color(0XFFE7EBEE),
              borderRadius: BorderRadius.circular(30)
          ),
          child: Icon(_icons[index],
            size: 25,
            color: _selectedIndex == index
                ? Colors.white // Theme.of(context).accentColor
                : Color(0XFFB4C1C4),
          ),
        ),
      );
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
          body: ListView(
            padding: EdgeInsets.symmetric(vertical: 30),
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(left: 20, right: 120),
                  child: Text("Qu'est ce que vous cherchez ?",
                    style: TextStyle(
                        fontSize: 30.0, fontWeight: FontWeight.bold),)
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:
                _icons
                    .asMap()
                    .entries
                    .map((MapEntry map) => _buildIcon(map.key)
                )
                    .toList(),
              ),
              SizedBox(height: 20,),
              TopWilaya(),
            //  TopWilaya(),
            ],
          )
      );
    }

    /* _buildBottomCard() {
    return Expanded(
      child: Container(
      child: Stack(
        children: <Widget>[
          Transform.translate(
            offset:Offset(50,70),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                )
              ),
              child: Padding(
              padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Mes locaux",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: 300,
                      height: 300,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          item(Constants.properties[0]),
                          item(Constants.properties[1]),
                          item(Constants.properties[2]),
                        ],
                      ),
                    )
                  ],
                )
                ),
              ),
            ),
          Align(
            alignment: Alignment(0.8, -0.8),
            child: Container(
              width: 50,
              height: 50,
              child: Icon(Icons.edit,color: Colors.white,),
              decoration: BoxDecoration(
                color: Colors.pink,
                boxShadow: [
                  BoxShadow(
                    color: Colors.pink.withOpacity(0.4),
                    spreadRadius: 1.0,
                    blurRadius: 3.0
                  )
                ],
                borderRadius: BorderRadius.circular(10.0)
              ),
            ),
          )
        ],
      ),
      ),
    );
  }*/
    item(Property p) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.0),
          color: Colors.red,
          image: DecorationImage(
              image: AssetImage(p.images[0]), fit: BoxFit.cover),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              color: Colors.white,
            ),
            child: Padding(padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(p.titre, style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(4.0),
                        width: 25.0,
                        height: 25.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(p.images[1]),
                                fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(5)
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(4.0),
                        width: 25.0,
                        height: 25.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(p.images[1]),
                                fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(5)
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(4.0),
                        width: 25.0,
                        height: 25.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(p.images[0]),
                                fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(5)
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.thumb_up, size: 20, color: Colors.grey,),
                      Text("100", style: TextStyle(color: Colors.grey),)
                    ],
                  )
                ],
              ),),
          ),
        ),
      );
    }
  }

