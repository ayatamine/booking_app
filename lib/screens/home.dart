import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:bookingapp/widgets/icon_card.dart';
import 'package:bookingapp/widgets/images_cards.dart';
class Home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 20,12, 5),
          child: Container(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.person_outline,color: Colors.black),tooltip:'Account',
                        onPressed: (){Navigator.pushNamed(context, '/Profile');}
                        ),
                    IconButton(icon: Icon(Icons.menu,color: Colors.black),onPressed: (){}),
                  ],
                ),
                SizedBox(height: 20,),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 14),
                    child: RichText(
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      text: TextSpan(
                        children: [
                          TextSpan(text:'مرحبا،',style: TextStyle(color: Colors.red[400],fontSize:34,fontWeight: FontWeight.bold)),
                          TextSpan(text:' ماالذي تبحث عنه؟',style: TextStyle(color:Colors.grey[800],fontSize: 34,fontWeight: FontWeight.bold)),
                        ]
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    textDirection: TextDirection.rtl,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconCard(icon: Icons.home, text: 'الإقامة',),
                      IconCard(icon: Icons.offline_bolt, text: 'خبرات',),
                      IconCard(icon: Icons.explore, text: 'مغامرات',),
                      IconCard(icon: Icons.flight, text: 'رحلات',),
                    ],
                  ),

                ),
                SizedBox(height:10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textDirection: TextDirection.rtl,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right:25.0),
                      child: Text('أفضل الخبرات',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.grey[800]),),
                    ),
                    IconButton(icon: Icon(Icons.more_horiz, color: Colors.black,), onPressed: (){},),
                  ],
                ),
              SizedBox(height: 10,),
              Expanded(child: Container(child: ImageCards())),
              SizedBox(height: 15,),
              Divider(height: 5,color: Colors.grey.withOpacity(0.4),),
              Align(
                alignment: Alignment.bottomCenter,
                child:  Row(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.home, color: Colors.pink, size: 25,), onPressed: (){}),
                    IconButton(icon: Icon(Icons.search, color: Colors.black, size: 25,), onPressed: (){}),
                    IconButton(icon: Icon(Icons.favorite_border, color: Colors.black, size: 25,), onPressed: (){}),
                    IconButton(icon: Icon(Icons.person_outline, color: Colors.black, size: 25,), onPressed: (){}),

                  ],
                )
              )
              ],
            )
          ),
        ),
      ),
    );
  }
}
