import 'package:airbnb_clone/Constants/Constants.dart';
import 'package:airbnb_clone/Model/SliderModel.dart';
import 'package:airbnb_clone/Routes/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ongoing extends StatefulWidget {
  @override
  _OngoingState createState() => _OngoingState();
}

class _OngoingState extends State<Ongoing> {
  List<SliderModel> slides = new List<SliderModel>();

  int currentState;

  PageController pageController = new PageController(initialPage: 0);
  @override
  void initState() {
    slides=SliderModel.getSlides();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
        itemBuilder: (context,index){
          return SlideTiles(
            slides[index].imagePath,
            slides[index].text,
            slides[index].title,
            index,
          );
        },
        controller: pageController,
        itemCount: slides.length,
        scrollDirection: Axis.horizontal,
        onPageChanged: (val){
          currentState=val;
        },
      ),
    );
  }
}

class SlideTiles extends StatelessWidget {
  String imagePath,text,title;
  int current;

  SlideTiles(this.imagePath, this.text, this.title,this.current);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Image.asset(imagePath,width: MediaQuery.of(context).size.width,),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for(int i=0;i<SliderModel.getSlides().length;i++)
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 1),
                  width: current==i ? 20:8,
                  height: 6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: current ==  i ? Constants.greenAirbnb:Colors.grey[400]
                  ),
                ),
            ],
          ),

          SizedBox(height: 15,),
          Text(title,style: TextStyle(fontSize: 22,color: Colors.black54,fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
          SizedBox(height: 15,),
          Text(text,style: TextStyle(fontSize: 18,color: Colors.black38),textAlign: TextAlign.center,),

          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
              margin: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Constants.greenAirbnb,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2,
                    color: Colors.grey,
                    offset: Offset(0,2)

                  )
                ]
              ),
              child: Text("Login",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),

            ),
          ),
        ],
      ),
    );
  }
}
