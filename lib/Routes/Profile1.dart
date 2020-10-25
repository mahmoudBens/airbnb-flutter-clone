import 'package:airbnb_clone/Constants/Constants.dart';
import 'package:airbnb_clone/Model/Property.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()=>runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Profile1(),
    )
);

  class Profile1 extends StatefulWidget {

  @override
  _Profile1State createState() => _Profile1State();
  }

  class _Profile1State extends State<Profile1> {
    final textStyleState=TextStyle(
        fontSize: 11.0,
        color: Colors.white
    );

    final textStyleTop=TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
        color: Colors.white
    );

    final textStyle2=TextStyle(
        color: Colors.white
    );
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Stack(
      children: <Widget>[
        Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff3366cc),
              Color(0xff668cd9),
              Color(0xffa6bce9),
            ],
            //stops: [0.5,0.7,1],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )
        ),
        ),
        Column(
          children: <Widget>[
            SizedBox(height:10.0,),
            _profileRow(),
           // _topRow(),
            _statesRow(),
            _buildBottomCard(),
          ],
        )
      ],
    ),
  );
  }

  _buildBottomCard() {
    return Expanded(
      child: Container(
      child: Stack(
        children: <Widget>[
          Transform.translate(
            offset:Offset(30,40),
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
                    SizedBox(height: 10,),
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
            alignment: Alignment(0.8, -0.9),
            child: Container(
              width: 50,
              height: 50,
              child: Icon(Icons.edit,color: Colors.white,),
              decoration: BoxDecoration(
                color:   Color(0xfff41d41),
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
  }
  item(Property p){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        color: Color(0xff3366cc),
        image: DecorationImage(image: AssetImage(p.images[0]),fit: BoxFit.cover),
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
                child: Text(p.titre,style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
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
                  Icon(Icons.thumb_up,size: 20,color: Colors.grey,),
                  Text("100",style: TextStyle(color: Colors.grey),)
                ],
              )
            ],
          ),),
      ),
      ),
    );
  }

  _statesRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text("245",style: textStyleTop,),
              Text("Réservations faites",style: textStyleState,),
              Text("\u007c",style: textStyle2,),
            ],
          ),
          Column(
            children: <Widget>[
              Text("12",style: textStyleTop,),
              Text("Réservations",style: textStyleState,),
              Text("\u007c",style: textStyle2,),
            ],
          ),
          Column(
            children: <Widget>[
              Text("2",style: textStyleTop,),
              Text("locaux",style: textStyleState,),
              Text("\u007c",style: textStyle2,),
            ],
          ),
        ],
      ),
    );
  }

  _topRow() {
    return IconTheme(
      data: IconThemeData(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(icon: Icon(Icons.arrow_back), onPressed: (){}),
          Row(
            children: <Widget>[
              IconButton(icon: Icon(Icons.cast), onPressed: (){}),
              IconButton(icon: Icon(Icons.more_horiz), onPressed: (){}),
            ],
          )
        ],
      ),
    );
  }

  _profileRow() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          Container(
            width: 70.0,
            height: 70.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/social_media/google.png"),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(20)
            ),
          ),
          SizedBox(width: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("nom prenom",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.white
              ),),
              SizedBox(height: 5.0,),
              Text("une petite description",style: textStyle2,)
            ],
          )
        ],
      ),
    );
  }
  }
