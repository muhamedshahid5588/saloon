import 'package:flutter/material.dart';

class LadiesScreen extends StatefulWidget {
  const LadiesScreen({Key? key}) : super(key: key);

  @override
  State<LadiesScreen> createState() => _LadiesScreenState();
}

class _LadiesScreenState extends State<LadiesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard('Hair Cutting','assets/ladies haircut.jpg',
                      false, true, context),
                  _buildCard('Beauty',
                      'assets/ladiesspa.jpg', false, true, context),
                  _buildCard('Haircolor', 'assets/ladies coloring.jpg',
                      true, false, context),
                ],
              )),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(String name,String imgPath, bool added,
      bool isFavorite, context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              //  Navigator.of(context).push(
              //    MaterialPageRoute(builder: (context) => CookieDetail(
              //      assetPath: imgPath,
              //     cookieprice:price,
              //     cookiename: name
              // )//)
              // );
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Hero(
                      tag: imgPath,
                      child: Container(
                          height: 100.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain))),),),
                  SizedBox(height: 7.0),

                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(name,
                        style: TextStyle(
                            color: Color(0xFF575E67),
                            fontFamily: 'Varela',
                            fontSize: 14.0,fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(color: Color(0xFFEBEBEB), height: 1.0)),
                  Padding(
                      padding: EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RaisedButton(onPressed: (){
                              //   Navigator.push(context, MaterialPageRoute(builder: (context)=> CartScreen()));
                            },
                              child: Text('Click',style: TextStyle(
                                  color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold
                              ),),
                              color: Color(0xFFEF57373),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),

                              ),
                              elevation: 10,

                            ),
                          ]
                      ))
                ]))));
  }
}