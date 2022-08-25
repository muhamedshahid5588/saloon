 import 'dart:convert';
 import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

 class api{
   static String url='https://blueskyerp.com/saloon/index.php?r=';
   static String Url='https://blueskyerp.com/saloon/index.php?r=';
   static String URL='https://blueskyerp.com/saloon/index.php?r=';
   static String carturl='https://blueskyerp.com/saloon/index.php?r=';

  static Future<List <dynamic>> getCategories() async {



     final response = await http.get(
       Uri.parse(url+'api/categories'),


     );
     if (response.statusCode == 200) {
       print(response.body);
       if( json.decode(response.body)['status']=='success'){
         return json.decode(response.body)['data'];
       }else{
      //   ScaffoldMessenger.of(context)
        //    .showSnackBar(SnackBar(content: Text("Error Get Data")));
        return [];
       }

     } else {
       throw Exception('Failed ');
     }
   }
   static  Future<List <dynamic>> getsubCategories() async {



     final response = await http.get(
       Uri.parse(Url+'api/Subcategories&category=1'),


     );
     if (response.statusCode == 200) {
       print(response.body);
       if( json.decode(response.body)['status']=='success'){
         return json.decode(response.body)['data'];
       }else{
         return [];
       }

     } else {
       throw Exception('Failed ');
     }
   }



   static  Future<List <dynamic>> getTechnicians() async {



     final response = await http.get(
       Uri.parse(URL+'api/TechnicianList'),


     );
     if (response.statusCode == 200) {
       print(response.body);
       if( json.decode(response.body)['status']=='success'){
         print(json.decode(response.body)['data']);
         return json.decode(response.body)['data'];
       }else{
         return [];
       }

     } else {
       throw Exception('Failed ');
     }
   }

   static Future<List <dynamic>> getCart() async {



     final response = await http.get(
       Uri.parse(carturl+'apibooking/Booking'),


     );
     if (response.statusCode == 200) {
       print(response.body);
       if( json.decode(response.body)['status']=='success'){
         return json.decode(response.body)['data'];
       }else{
         //   ScaffoldMessenger.of(context)
         //    .showSnackBar(SnackBar(content: Text("Error Get Data")));
         return [];
       }

     } else {
       throw Exception('Failed ');
     }
   }
 }