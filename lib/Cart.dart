import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled12/bookingConfirm.dart';


class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
          backgroundColor:  Color.fromRGBO(86, 158, 212, 15),
          elevation: 0,
          title: Text('Cart', style: TextStyle(color: Colors.black),)),
      body:  SingleChildScrollView(
        child: Column(
            children: [
              Container(alignment: Alignment.topCenter,
                height: 250,width: 390,
                child: Card(
                     color:  Colors.grey[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),

                  ),
                  child: Row(
                    children: [
                      Container(alignment: Alignment.topLeft,
                          height: 150,width: 150,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Image(image: AssetImage('assets/newhaircolor.jpg'),width: 200,),
                          )),


                      Column(
                        children: [
                          Container(padding: EdgeInsets.only(top: 60,right: 40),
                            child: Text(
                              'Hair Coloring',
                              style: TextStyle(color: Colors.black54,fontSize: 13,fontWeight: FontWeight.bold),
                            ),
                          ),


                          Container(padding: EdgeInsets.only(top: 10,right: 70),
                            child: Text(
                              'AED 50',
                              style: TextStyle(color: Colors.black54,fontSize: 13,fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(padding: EdgeInsets.only(top: 10,right: 60),
                            child: Text(
                              'Technician',
                              style: TextStyle(color: Colors.black54,fontSize: 13,fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(padding: EdgeInsets.only(top: 10,right: 50),
                            child: Text(
                              '20.00mints',
                              style: TextStyle(color: Colors.black54,fontSize: 13,fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(padding: EdgeInsets.only(top: 10,right: 60),
                            child: Text(
                              '11.00 am',
                              style: TextStyle(color: Colors.black54,fontSize: 13,fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 140),
                            child: Container(alignment: Alignment.center,
                              child: ButtonBar(
                                children: [
                                  IconButton(onPressed: (){}, icon:Icon(Icons.delete,color: Colors.black,))
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),






                      // Image.asset('assets/hair.jpg'),


                    ],
                  ),


                ),
              ),
              Container(alignment: Alignment.topCenter,
                height: 250,width: 390,
                child: Card(
                  color:  Colors.grey[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),

                  ),
                  child: Row(
                    children: [
                      Container(alignment: Alignment.topLeft,
                          height: 150,width: 150,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Image(image: AssetImage('assets/newhaircolor.jpg'),width: 200,),
                          )),


                      Column(
                        children: [
                          Container(padding: EdgeInsets.only(top: 60,right: 40),
                            child: Text(
                              'Hair Coloring',
                              style: TextStyle(color: Colors.black54,fontSize: 13,fontWeight: FontWeight.bold),
                            ),
                          ),


                          Container(padding: EdgeInsets.only(top: 10,right: 70),
                            child: Text(
                              'AED 50',
                              style: TextStyle(color: Colors.black54,fontSize: 13,fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(padding: EdgeInsets.only(top: 10,right: 60),
                            child: Text(
                              'Technician',
                              style: TextStyle(color: Colors.black54,fontSize: 13,fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(padding: EdgeInsets.only(top: 10,right: 50),
                            child: Text(
                              '20.00mints',
                              style: TextStyle(color: Colors.black54,fontSize: 13,fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(padding: EdgeInsets.only(top: 10,right: 60),
                            child: Text(
                              '11.00 am',
                              style: TextStyle(color: Colors.black54,fontSize: 13,fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 140),
                            child: Container(alignment: Alignment.center,
                              child: ButtonBar(
                                children: [
                                  IconButton(onPressed: (){}, icon:Icon(Icons.delete,color: Colors.black,))
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),






                      // Image.asset('assets/hair.jpg'),


                    ],
                  ),


                ),
              ),

                        ],
                      ),
                    ),

      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width: 140,height: 50,
              child:
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Text('Total: 1600',style: TextStyle(
                        color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
                color:  Colors.transparent,
              

            ),
          ),
          Container(width: 140,height: 50,
            child: RaisedButton(onPressed: (){
              //       Navigator.push(context, MaterialPageRoute(builder: (context)=> All_Categoery()));
            },
              child: Text('Confirm',style: TextStyle(
                  color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold
              ),),
              color:  Color.fromRGBO(86,158,212,10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),

              ),
              elevation: 0,

            ),
          ),
        ],
      ),
    );
  }



}