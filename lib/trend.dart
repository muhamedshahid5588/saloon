import 'package:flutter/material.dart';

import 'blog1.dart';

class TrendScreen extends StatefulWidget {
  const TrendScreen({Key? key}) : super(key: key);

  @override
  State<TrendScreen> createState() => _TrendScreenState();
}

class _TrendScreenState extends State<TrendScreen> {



  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final double width=MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(86,158,212,10),
          elevation: 0,
      iconTheme: IconThemeData(
            color: Colors.white
        ),
          title: Text('Trends'),
        ),
        body: Container(
          color:Colors.white,
          child: SafeArea(
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                            children: [
                              //debugPrint(article.img.toString());
                              GestureDetector(
                                  onTap:(){
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context)=>Blog1())
                                    );
                                  },
                                  child:Container(
                                      padding: const EdgeInsets.only(left: 20, right: 20),
                                      height: 250,

                                      child: Stack(
                                        children: [
                                          Positioned(
                                              top:35,
                                              child: new Material (
                                                  elevation: 0.0,
                                                  child: new Container(
                                                    height: 180.0,
                                                    width: width*0.9,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius: BorderRadius.circular(0.0),
                                                      boxShadow: [
                                                        new BoxShadow(
                                                            color: Colors.grey.withOpacity(0.3),
                                                            offset: new Offset(0.0, 0.0),
                                                            blurRadius: 20.0,
                                                            spreadRadius: 4.0)],
                                                    ),
                                                    // child: Text("This is where your content goes")
                                                  )
                                              )
                                          ),
                                          Positioned(
                                              top:0,
                                              left: 10,
                                              child: Card(
                                                  elevation: 10.0,
                                                  shadowColor: Colors.grey.withOpacity(0.5),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(15.0),
                                                  ),
                                                  child:Container(
                                                      height: 200,
                                                      width: 150,
                                                      decoration:BoxDecoration(
                                                        borderRadius:BorderRadius.circular(10.0),
                                                        image:  DecorationImage(
                                                          fit:BoxFit.fill,
                                                          image:AssetImage("assets/hairtruck.jpg"),
                                                        ),
                                                      )

                                                  )
                                              )
                                          ),
                                          Positioned(
                                              top:80,
                                              left: width*0.5,
                                              child: Container(
                                                  height: 200,
                                                  width: 150,
                                                  child:Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                          "Hair Truck",
                                                          style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight: FontWeight.bold,
                                                          color:Colors.blue
                                                      ),),
                                                      Text(
                                                          "Author: Mike Ahmed",
                                                          style: TextStyle(
                                                          fontSize:14,
                                                            color: Colors.grey[500]
                                                      )),
                                                      Divider(
                                                          color:Colors.black
                                                      ),
                                                  RaisedButton(onPressed: (){
                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Blog1()));
                                                  },
                                                    color: Color.fromRGBO(86,158,212,10),
                                                  child: Text('Read',style:
                                                    TextStyle(
                                                      color: Colors.white
                                                    ),),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(10),

                                                  ),)
                                                    ],
                                                  )
                                              )
                                          ),
                                        ],
                                      )
                                  )
                              )
                            ]
                        ),

                      ),
                    ),
                  ),


                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                          children: [
                            //debugPrint(article.img.toString());
                            GestureDetector(
                                onTap:(){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context)=>Blog1())
                                  );
                                },
                                child:Container(
                                    padding: const EdgeInsets.only(left: 20, right: 20),
                                    height: 250,

                                    child: Stack(
                                      children: [
                                        Positioned(
                                            top:35,
                                            child: new Material (
                                                elevation: 0.0,
                                                child: new Container(
                                                  height: 180.0,
                                                  width: width*0.9,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(0.0),
                                                    boxShadow: [
                                                      new BoxShadow(
                                                          color: Colors.grey.withOpacity(0.3),
                                                          offset: new Offset(0.0, 0.0),
                                                          blurRadius: 20.0,
                                                          spreadRadius: 4.0)],
                                                  ),
                                                  // child: Text("This is where your content goes")
                                                )
                                            )
                                        ),
                                        Positioned(
                                            top:0,
                                            left: 10,
                                            child: Card(
                                                elevation: 10.0,
                                                shadowColor: Colors.grey.withOpacity(0.5),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(15.0),
                                                ),
                                                child:Container(
                                                    height: 200,
                                                    width: 150,
                                                    decoration:BoxDecoration(
                                                      borderRadius:BorderRadius.circular(10.0),
                                                      image:  DecorationImage(
                                                        fit:BoxFit.fill,
                                                        image:AssetImage("assets/hairtruck.jpg"),
                                                      ),
                                                    )

                                                )
                                            )
                                        ),
                                        Positioned(
                                            top:80,
                                            left: width*0.5,
                                            child: Container(
                                                height: 200,
                                                width: 150,
                                                child:Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Hair Truck",
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight: FontWeight.bold,
                                                          color:Colors.blue
                                                      ),),
                                                    Text(
                                                        "Author: Mike Ahmed",
                                                        style: TextStyle(
                                                            fontSize:14,
                                                            color: Colors.grey[500]
                                                        )),
                                                    Divider(
                                                        color:Colors.black
                                                    ),
                                                    RaisedButton(onPressed: (){
                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Blog1()));
                                                    },
                                                      color: Color.fromRGBO(86,158,212,10),
                                                      child: Text('Read',style:
                                                      TextStyle(
                                                          color: Colors.white
                                                      ),),
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(10),

                                                      ),)
                                                  ],
                                                )
                                            )
                                        ),
                                      ],
                                    )
                                )
                            )
                          ]
                      ),

                    ),
                  ),
                ],
              )
          ),
        )
    );
  }
}