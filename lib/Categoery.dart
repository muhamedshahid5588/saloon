import 'package:flutter/material.dart';

import 'KidsScreen.dart';
import 'Ladies.dart';
import 'Mens.dart';

class All_Categoery extends StatefulWidget {
  const All_Categoery({Key? key}) : super(key: key);

  @override
  State<All_Categoery> createState() => _All_CategoeryState();
}

class _All_CategoeryState extends State<All_Categoery> with SingleTickerProviderStateMixin {
   late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(86,158,212,10),
      //  elevation: 5.0,
        leading: IconButton(
           icon: Icon(Icons.arrow_back,color: Colors.white,
           ),
          onPressed: (){Navigator.pop(context);},


        ),
        flexibleSpace:
        Container(
          height: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: TabBar(
                    controller: _tabController,
                    indicatorColor: Color.fromRGBO(86,158,212,10),
                    labelColor: Colors.black,
                    isScrollable: true,
                    labelPadding: EdgeInsets.only(right: 45.0),
                    unselectedLabelColor: Color(0xFFCDCDCD),
                    tabs: [
                      Tab(
                        child: Text('Mens',
                          style: TextStyle(
                              fontFamily: 'Varela',
                              fontSize: 21
                          ),),
                      ),
                      Tab(
                        child: Text('Ladies',
                          style: TextStyle(
                              fontFamily: 'Varela',
                              fontSize: 21
                          ),),
                      ),
                      Tab(
                        child: Text('Kids',
                          style: TextStyle(
                              fontFamily: 'Varela',
                              fontSize: 21
                          ),),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      body:  Container(

        child: TabBarView(
            controller: _tabController,
            children: [
              MensCategoery(),
              LadiesScreen(),
              KidsScreen(),
            ]),
      )
    );
  }
}
