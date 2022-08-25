import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:untitled12/Cart.dart';
import 'dart:convert';
import 'package:untitled12/models/api.dart';

class MensHair extends StatefulWidget {
  const MensHair({Key? key}) : super(key: key);

  @override
  State<MensHair> createState() => _MensHairState();
}

class _MensHairState extends State<MensHair> {
  late bool load;

  List categoryItemlist = [];
/*
  Future getTechnician() async {
    var Url = "https://blueskyerp.com/saloon/index.php?r=api/TechnicianList";

    http.Response response = await http.get(Uri.parse(Url));

    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      print(response.body);
      setState(() {
        categoryItemlist = jsonData;
      });
    }
  }
*/


  @override
  void initState() {
    super.initState();
    setState(() {
      load=true;
    });
Future.delayed(Duration(
  seconds: 0,
),
    () async{
      categoryItemlist= await api.getTechnicians();
      setState(() {

        dropdownvalue=categoryItemlist[0];
        load=false;
      });
      print(categoryItemlist);
    }
);



  }



  late  Map dropdownvalue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mens Categoery"),backgroundColor: Color.fromRGBO(86,158,212,10),),
      body: FutureBuilder<List<dynamic>>(
        future: api.getsubCategories(),
        builder: (context,snapshot){
          if(snapshot !=null){
            return ListView.builder(
              itemCount: snapshot.data!.length,
                itemBuilder:(context,index){
                  return Column(
          children: [
           ListTile(

              leading: CircleAvatar(
                radius: 29,
                backgroundImage: AssetImage('assets/newhaircolor.jpg',), ),
              title: InkWell(onTap:(){ Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) =>  CartScreen(),
                ),
              );} ,
                  child: Text(snapshot.data![index]["subcategory_name"],style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800),)),
              subtitle: Text(snapshot.data![index]["time_duration"],style: TextStyle(fontSize: 12),),
                trailing:  Text(snapshot.data![index]["amount"],style: TextStyle(fontSize: 12),),


                /* CircleAvatar(
                backgroundImage: AssetImage('assets/newhaircolor.jpg',), ),
*/
              ),


          Container(alignment: Alignment.bottomRight,
            child: DropdownButton(
              hint: Text('Choose Technician'),
              items: categoryItemlist.map((item) {
                return DropdownMenuItem(
                  value: item,
                  child: Text(item['name'].toString()),
                );
              }).toList(),
              onChanged: (newVal) {
                setState(() {
                  dropdownvalue = newVal as Map;
                });
              },
              value: dropdownvalue,
            ),
          ),
            Divider(height: 2,color: Colors.black,),




                ]);

                  }
        );
        }else if (snapshot.hasError){
    return Text(snapshot.error.toString());
    }else{
    return CircularProgressIndicator();
    }
    }
      )
    );
  }

}


