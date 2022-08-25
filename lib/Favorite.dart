import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children:
        <Widget>[
          SizedBox(height: 8.0,),
          Container(
            padding: EdgeInsets.only(right: 15.0),
            width: MediaQuery.of(context).size.width- 30.0,
            height: MediaQuery.of(context).size.height- 50.0,
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 15.0,
              childAspectRatio: 0.8,
              children:<Widget> [

                _buildcard("HAIR COLOR CORRECTION & HOW TO", 'assets/colouring.jpg', false, false, context),
                _buildcard("What are sheet masks?", 'assets/FacialMask.jpg', false, false, context),
                _buildcard("Professional Beard Grooming Can Up Your Style", 'assets/Beard.jpg', false, false, context),
              ],
            ),
          )

        ],
      ),
    );
  }

  Widget _buildcard(String name,String imgPath,bool added,bool isFavourite,context){
    return Padding(padding: EdgeInsets.only(top: 15.0,right: 5.0,bottom: 5.0,left: 10.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black87.withOpacity(0.2),
                spreadRadius: 3.0,
                blurRadius: 5.0,
              )
            ],
            color: Colors.grey[100],
          ),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    isFavourite ? Icon(Icons.favorite_border,color:  Color.fromRGBO(86,158,212,10),
                    ):
                    Icon(Icons.favorite,color:  Color.fromRGBO(86,158,212,10),
                    )
                  ],
                ),
              ),
              Hero(tag: imgPath,
                  child:Container(
                    height: 120.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(fit: BoxFit.contain,
                            image: AssetImage(imgPath,)
                        )
                    ),
                  )


              ),
              SizedBox(
                height: 7.0,
              ),
              Center(
                child: Text(name,style: TextStyle(
                  color: Colors.black87
                  ,fontSize: 12,fontWeight: FontWeight.w500,
                ),),
              )
            ],
          ),
        ),
      ),

    );
  }

}

