import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconCard extends StatelessWidget{
  final IconData icon;final String text;
  IconCard({this.icon,this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.pink.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(icon: Icon(icon,size: 30,color: Colors.red[400]),onPressed: (){},)
          ),
          Text('$text',style:TextStyle(fontSize: 12))
        ],
      ),
    );
  }
}