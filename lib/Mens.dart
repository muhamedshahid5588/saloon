import 'package:flutter/material.dart';
import 'package:untitled12/models/categoerymodel.dart';
import 'Cart.dart';
import 'blog1.dart';
import 'menshaircategoery.dart';
import 'package:untitled12/models/api.dart';
class MensCategoery extends StatefulWidget {
  const MensCategoery({Key? key}) : super(key: key);

  @override
  State<MensCategoery> createState() => _MensCategoeryState();

}

class _MensCategoeryState extends State<MensCategoery> {

  //late Future<List<dynamic>> categories;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   // categories = getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:FutureBuilder<List<dynamic>>(
          future: api.getCategories(),

          builder: (context, snapshot){
            if(snapshot.hasData) {

              return Container(child: Padding(
                padding: const EdgeInsets.all(10.0),
                child:GridView.builder(
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 3 / 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20),
                    itemCount: snapshot.data!.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return  InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => MensHair()));
                        },
                        child: Container(
                          width: 150, height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[100],),
                          child: Column(
                            //   mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(child: Image(image: AssetImage(
                                  'assets/menshaircutting.jpg'),
                                height: 120,
                                width: 120,
                                fit: BoxFit.contain,)),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                      snapshot.data![index]['name'], style: TextStyle(
                                    color: Color.fromRGBO(86, 158, 212, 10),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),),
                              )
                            ],),
                        ),
                      );
                    }),

              ),
              );
            }
            else if (snapshot.hasError){
              return Text(snapshot.error.toString());
            }else{
              return CircularProgressIndicator();
            }
          }





      ),
    );
  }
}