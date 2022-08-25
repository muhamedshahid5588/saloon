import 'package:flutter/material.dart';
import 'package:untitled12/Cart.dart';
import 'package:untitled12/profilepage.dart';
import 'package:untitled12/trend.dart';

import 'Booking.dart';
import 'Categoery.dart';
import 'Favorite.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {

  int _selectedIndex=0;
static final List<Widget>_widgetOption=<Widget>[
  TrendScreen(),
  BookingScreen(),
  FavouriteScreen(),
  ProfileScreen(),
];


void _onItemTApped(int index){
  _selectedIndex=index;
  setState(() {

  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(

          child: _widgetOption[_selectedIndex]) ,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTApped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor:  Color.fromRGBO(86,158,212,10),
        unselectedItemColor: Colors.black45,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.trending_up),label: "Trend"),
          BottomNavigationBarItem(icon: Icon(Icons.book_online),label: "Booking"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "Profile"),
        ],
      ),
     drawer: Drawer(
       child: ListView(
         children: [
           UserAccountsDrawerHeader(
             decoration: BoxDecoration(
               color: Color.fromRGBO(86,158,212,10)
             ),
               accountName: Text("LuKMan"),
               accountEmail: Text("abc@gmail.com"),
           currentAccountPicture: CircleAvatar(
             child: Image(image: NetworkImage('https://cdn4.iconfinder.com/data/icons/avatars-21/512/avatar-circle-human-male-3-512.png'),
           ))
           ),
         ListTile(
           leading: Icon(
             Icons.category,
           ),
           title: Text("All Categoery",style: TextStyle(
             color: Colors.black87,fontWeight: FontWeight.bold
           ),),
           trailing: Icon(Icons.arrow_forward,
         ),
           onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>All_Categoery()));},
         ),
           ListTile(
             leading: Icon(
               Icons.book_online,
             ),
             title: Text("Booking sheet",style: TextStyle(
                 color: Colors.black87,fontWeight: FontWeight.bold
             ),),
             trailing: Icon(Icons.arrow_forward,
             ),
             onTap: (){},
           ),
           ListTile(
             leading: Icon(
               Icons.shopping_cart,
             ),
             title: Text("Cart",style: TextStyle(
                 color: Colors.black87,fontWeight: FontWeight.bold
             ),),
             trailing: Icon(Icons.arrow_forward,
             ),
             onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen()));},
           ),
         ],
       ),
     ),
    );
  }
}
