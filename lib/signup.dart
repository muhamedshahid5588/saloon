import 'package:dob_input_field/dob_input_field.dart';
import 'package:flutter/material.dart';
import 'package:untitled12/home.dart';


class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();


}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,


      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery
              .of(context)
              .size
              .height - 90,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
          Column(
          children: <Widget>[
            Text("Registration",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,

            ),),
          SizedBox(height: 20,),
          Text("Create an account, It's free ",
            style: TextStyle(
                fontSize: 15,
                color: Colors.grey[700]),)


          ],
        ),
        Column(
            children: <Widget>[
        Row(
        children: [
        Text(
            ('Username'),
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black87
        ),

      ),
      ],
    ),
    SizedBox(
    height: 5,
    ),
    TextField(

    decoration: InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 0,
    horizontal: 10),
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
    color: Colors.grey ),

    ),
    border: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey)
    )
    ),
    ),
    SizedBox(height: 10,),
              Row(
                children: [
                  Text(
                    ('Mobile number'),
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87
                    ),

                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              TextField(

                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 0,
                        horizontal: 10),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey ),

                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)
                    )
                ),
              ),
              SizedBox(height: 10,),


    Column(
    children: [
    Padding(
    padding: const EdgeInsets.only(right: 260),
    child: Text(
    ('Gender'),
    style: TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color:Colors.black87
    ),

    ),
    ),

    Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Row(
    children: [
    Radio(value: 1, groupValue: 'null', onChanged: (index) {}),
    Text('Male')
    ],
    ),
    Row(
    children: [
    Radio(value: 1, groupValue: 'null', onChanged: (index) {}),
    Text('Female')
    ],
    ),
    Row(
    children: [
    Radio(value: 1, groupValue: 'null', onChanged: (index) {}),
    Text('Other')
    ],
    ),
    ],
    ),
    ],
    ),
    SizedBox(
    height: 5,
    ),

    SizedBox(height: 10,),

  /*  Row(
    children: [
    Text(
    ('Date of Birth'),
    style: TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color:Colors.black87
    ),

    ),
    ],
    ),
    SizedBox(
    height: 5,
    ),

    DOBInputField(
    firstDate: DateTime(1900),
    lastDate: DateTime.now(),
    showLabel: true,
    showCursor: true,
    autovalidateMode: AutovalidateMode.always,
   // fieldLabelText: "With label",
    ),


*/

            ],
    ),
    Container(
    width: 250,height: 50,
    child:   RaisedButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
    },
      color: Color.fromRGBO(86,158,212,10),
      child: Text('Register',style:
      TextStyle(
          color: Colors.white
      ,fontSize: 20),),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),

      ),)

    ),






    ],

    ),


    ),

    ),

    );
    }
}

