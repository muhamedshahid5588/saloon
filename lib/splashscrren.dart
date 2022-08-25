import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled12/signup.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({Key? key}) : super(key: key);

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}


class _SplachScreenState extends State<SplachScreen> {

  @override
  void initState() {
    
    super.initState();
    Timer(Duration(seconds: 5)
            ,() => Navigator.of(context).pushReplacement(MaterialPageRoute(builder:
        (BuildContext context)=>SignupScreen() )));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
        color:  Colors.white,
          ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/hair2.jpg",
                  height: 300.0,
                  width: 300.0,
                ),
                Text("Good service and reasonable prices,guaranteed!\n  Look good, feel great!",textAlign:TextAlign.center,
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.w400,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),

            CircularProgressIndicator(
              valueColor:  AlwaysStoppedAnimation<Color>(Colors.redAccent),
            ),
          ],
        ),
      ),
    );
  }
}
