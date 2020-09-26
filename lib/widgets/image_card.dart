import 'package:bookingapp/screens/details.dart';
import 'package:bookingapp/models/place.dart';
import 'package:flutter/material.dart';
class ImageCard extends StatelessWidget{
  final String name;final int days;final String picture;final Place place;

  ImageCard({@required this.name,@required this.days,@required this.picture,@required this.place});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child:InkWell(
        onTap: (){
          Navigator.push(context,MaterialPageRoute(builder:(_) => Details(place)));
        },
        child: Container(
          height: 20,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                   color: Color.fromARGB(62, 168,174,201),
                   blurRadius: 14,
                   offset: Offset(0 , 9)
                )
              ]
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              textDirection: TextDirection.rtl,
              children: <Widget>[
                Image.asset(
                  "assets/$picture",
                  height: double.infinity,
                  width: 200,
                  fit: BoxFit.cover,
                ),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                        // Box decoration takes a gradient
                        gradient: LinearGradient(
                          // Where the linear gradient begins and ends
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          // Add one stop for each color. Stops should increase from 0 to 1
                          colors: [
                            // Colors are easy thanks to Flutter's Colors class.
                            Colors.black.withOpacity(0.8),
                            Colors.black.withOpacity(0.7),
                            Colors.black.withOpacity(0.6),
                            Colors.black.withOpacity(0.6),
                            Colors.black.withOpacity(0.4),
                            Colors.black.withOpacity(0.1),
                            Colors.black.withOpacity(0.05),
                            Colors.black.withOpacity(0.025),
                          ],
                        ),
                      ),

                      child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container()
                      )),
                ),

                Positioned(
                  bottom: 30,
                  right: 5,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                        padding: const EdgeInsets.only(right:8.0),
                        child: RichText(text: TextSpan(children: [
                          TextSpan(text: '$name ', style: TextStyle(fontSize: 22)),
                        ]))
                    ),
                  ),
                ),

                Positioned(
                  bottom: 10,
                  right: 5,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                        padding: const EdgeInsets.only(right:8.0),
                        child: Row(
                          textDirection: TextDirection.rtl,
                          children: <Widget>[
                            Icon(Icons.calendar_today, color: Colors.white, size: 14,),
                            SizedBox(width: 5,),
                            Text('$days أيام ', style: TextStyle(color: Colors.white))
                          ],
                        )
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      )
    );
  }}
