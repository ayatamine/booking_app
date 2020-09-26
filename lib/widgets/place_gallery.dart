import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlaceGallery extends StatelessWidget {
  List<String> gallery;
  PlaceGallery({this.gallery});
  @override
  Widget build(BuildContext context) {

    return Row(
      textDirection: TextDirection.rtl,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Image.asset('assets/${gallery[1]}',height: 320, fit: BoxFit.fill,),
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,8,4),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.asset('assets/${gallery[0]}',height: 150, fit: BoxFit.fill,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,4,8,0),
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Image.asset('assets/${gallery[1]}',height: 150, fit: BoxFit.fitWidth,),
                    ),
                    Text('+ 20 أكثر',style: TextStyle(color:Colors.white,fontSize: 16,))
                  ],
                ),
              )
            ],
          ),
        ),

      ],
    );
  }
}
//Stack(
//alignment: Alignment.center,
//children: <Widget>[
//ClipRRect(
//borderRadius: BorderRadius.circular(14),
//child: Image.asset('assets/${gallery[1]}',height: 150, fit: BoxFit.fitWidth,),
//),
//Text('+ 20 أكثر',style: TextStyle(color:Colors.white,fontSize: 16,))
//],
//),