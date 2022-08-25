import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled12/Cart.dart';

class Bookingconfirm extends StatefulWidget {
  const Bookingconfirm({Key? key}) : super(key: key);

  @override
  State<Bookingconfirm> createState() => _BookingconfirmState();
}

class _BookingconfirmState extends State<Bookingconfirm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(86, 158, 212, 10),
          elevation: 0,
          title: Text(
            'Slot Confirm',
            style: TextStyle(color: Colors.white),
          )),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Customername',
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Slot time',
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Price',
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Stylshername',
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                width: 350,
                height: 40,
                child: RaisedButton(
                  onPressed: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=> CartScreen()));
                    Fluttertoast.showToast(
                      msg: 'Booking Confirm',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 2,
                      backgroundColor: Color.fromRGBO(86, 158, 212, 10),
                      textColor: Colors.white,
                      fontSize: 14,
                    );
                  },
                  child: Text(
                    'Slot confirm',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  color: Color.fromRGBO(86, 158, 212, 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 10,
                ),
              ))
        ],
      ),
    );
  }


}
