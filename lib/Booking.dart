import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:untitled12/Categoery.dart';

import 'Cart.dart';


class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {



  final TextEditingController _textDate = TextEditingController();
  final TextEditingController _textTime = TextEditingController();

  List<dynamic> names=[];
  String?namesId;

 @override
  void initState() {

    super.initState();

    this.names.add({"id" : 1,"label" : "Jonh"});
    this.names.add({"id" : 2,"label" : "cial"});
    this.names.add({"id" : 3,"label" : "Ram"});
    this.names.add({"id" : 4,"label" : "dm"});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFEF57373),
        appBar: AppBar(
            backgroundColor: Color.fromRGBO(86,158,212,10),
          actions: [
            IconButton(icon: Icon(Icons.shopping_cart),
            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen()));},),
          ],
          elevation: 0,
          title: Container(alignment: Alignment.center,
              child: Text('Booking Section',style: TextStyle(color: Colors.white),)),
        ),

        body: (Container(

              color: Colors.white,
              child:Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(

    children: [

      Padding(
        padding: const EdgeInsets.only(top: 20,left: 26),
        child: Row(
          children: [
            Text('Schedule Date',style: TextStyle(
              fontSize: 17,
              color: Colors.black,
              fontWeight:FontWeight.bold
            ),),
          ],
        ),
      ),
    Container(
    width: 350,height: 70,
    child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
        controller: _textDate,
        decoration: InputDecoration(
          hintText: ' Select date ',hintStyle: TextStyle(
          fontSize: 13,fontWeight: FontWeight.bold
        ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide( color: Colors.black),
            borderRadius: BorderRadius.circular(10),
        )),
        readOnly: true,
        onTap: () async{
          final date = await
              showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1950),
                  lastDate: DateTime(2050),
              );
          setState(() {
            if(date != null) {
              _textDate.text = "${date.day}-${date.month}-${date.year}";
            }
          });

        },
        style: TextStyle(
          fontSize: 20,fontWeight: FontWeight.bold
        ),
      ),
    )),
      SizedBox(
        height: 10.0,
      ),

      Padding(
        padding: const EdgeInsets.only(left: 26),
        child: Row(
          children: [
            Text('Schedule Time',style: TextStyle(
                fontSize: 17,
                color: Colors.black,
                fontWeight:FontWeight.bold
            ),),

          ],
        ),
      ),

      Container(
        width: 350,height: 70,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _textTime,
            decoration: InputDecoration(
                hintText: ' Select time ',hintStyle: TextStyle(
                fontSize: 13,fontWeight: FontWeight.bold
            ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide( color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                )),
            readOnly: true,
            onTap: () async{
              final time = await
              showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),

              );
              setState(() {
                if(time != null) {
                  _textTime.text = time.format(context);
                }
              });

            },
            style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
      SizedBox(
        height: 10.0
      ),


      Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Container(
          width: 350,height: 40,
          child:
              RaisedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> All_Categoery()));
              },
                child: Text('GO',style: TextStyle(
                  color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold
                ),),
                color:  Color.fromRGBO(86,158,212,10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),

                ),
                elevation: 10,

              ),



        ),
      )

    ],
    ),
              )






    )),

      ));
  }




}
