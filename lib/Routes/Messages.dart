import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()=>runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Messages(),
    )
);

  class Messages extends StatefulWidget {

  @override
  _MessagesState createState() => _MessagesState();
  }

  class _MessagesState extends State<Messages> {

    List<String> items =["a","b","c","d"];
    @override
    Widget build(BuildContext context) {
      return Scaffold(

        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25,vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back,color: Colors.black87,size: 23,),
                    onPressed: (){
                      Navigator.pop(context);
                    },),
                  Text("Notifications")
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context,i){
                      return Container(
                        padding: EdgeInsets.all(8),
                        child: Dismissible(
                          key: Key(items[i]),
                          child: Material(
                            elevation: 3,
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 10),
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.red
                                    ),
                                  ),
                                  Flexible(
                                      child: Text("Un Admin a accepté votre demande",style: TextStyle(fontSize:12),maxLines: 2,overflow: TextOverflow.ellipsis,)),

                                ],
                              ),
                            ),
                          ),
                          onDismissed: (direction){
                            setState(() {
                              items.removeAt(i);
                            });
                          },
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      );
    }
  }
