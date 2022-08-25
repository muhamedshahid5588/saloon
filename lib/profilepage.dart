

import 'package:flutter/material.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(child:
     Column(

         children: [
           _getHeader(),
           SizedBox(height: 10,),
           _profileName("LuKman"),
           SizedBox(height: 14,),
           _details("Personal Details"),
           SizedBox(height: 6,),
           _detailscard(),
           SizedBox(height: 10,),
           _heading("Settings"),
           SizedBox(height: 10,),
           _settingscard(),
          Spacer(
           ),
           _logout(),
         ],

     )),
    );
  }


  Widget _getHeader(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(padding: EdgeInsets.all(10.0),
          child: Container(
            width: 100,height: 100,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage('https://cdn4.iconfinder.com/data/icons/avatars-21/512/avatar-circle-human-male-3-512.png'))
            ),
          ),)
      ],
    );


  }

  Widget _profileName(String name){

    return Container(
      alignment: Alignment.center,
       width: MediaQuery.of(context).size.width*0.80,
      child: Center(
        child: Text(
          name,style: TextStyle(
            color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold
        ),
        ),
      ),
    );
  }

  Widget _details(String details){
    return Container(
      width: MediaQuery.of(context).size.width*0.80,

        child: Text(
        details,style: TextStyle(
        color: Colors.black45,fontSize: 22,fontWeight: FontWeight.w400
    ),
    ),

    );
  }

  Widget _detailscard(){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 10,

        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.email_sharp),
              title: Text('abc@gmail.com'),
            ),
            Divider(
              height: 1,
              color: Colors.black87,
            ),
            ListTile(
              leading: Icon(Icons.phone_android),
              title: Text('91000000'),
            ),
            Divider(
              height: 1,
              color: Colors.black87,
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Any Where'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _heading(String details){
    return Container(
      width: MediaQuery.of(context).size.width*0.80,

      child: Text(
        details,style: TextStyle(
          color: Colors.black45,fontSize: 22,fontWeight: FontWeight.w400
      ),
      ),

    );
  }

  Widget _settingscard(){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 10,

        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            Divider(
              height: 1,
              color: Colors.black87,
            ),
            ListTile(
              leading: Icon(Icons.dashboard_customize),
              title: Text('About'),
            ),
            Divider(
              height: 1,
              color: Colors.black87,
            ),
            ListTile(
              leading: Icon(Icons.language),
              title: Text('Select Language'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _logout(){
    return InkWell(
      onTap: (){},
      child: Container(

        color:  Color.fromRGBO(86,158,212,10),
        child: Padding(padding: const EdgeInsets.all(10.0),
    child:Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.logout,color: Colors.white,),
        SizedBox(
          width: 10,
        ),
        Text('Logout',style: TextStyle(
          color: Colors.white,fontSize: 18,
        ),)
      ],
    ) ,
      ),
      ),
    );
  }

}





