import 'package:flutter/material.dart';
import 'package:bookingapp/models/place.dart';
import 'package:flutter/cupertino.dart';
import 'package:bookingapp/widgets/place_gallery.dart';
class Details extends StatelessWidget {
  final Place place;
  Details(this.place);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                 width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                  child: Image.asset('assets/${place.image}',height: 250,width: double.infinity,fit: BoxFit.fill,),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: <Widget>[
                    Icon(Icons.calendar_today,color: Colors.grey[600],size: 18,),
                    SizedBox(width: 5,),
                    Text('${place.days} أيام',textDirection: TextDirection.rtl,),
                    SizedBox(width: 20,),
                    Icon(Icons.location_on,color: Colors.grey[600],size: 20,),
                    SizedBox(width: 5,),
                    Text('20 كلم',textDirection: TextDirection.rtl,),


                  ],
                ),
              ),
              Expanded(
                child:Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 20),
                  child: RichText(
                    textDirection: TextDirection.rtl,
                    text: TextSpan(
                      children: [
                        TextSpan(text: ' \n${place.place}',
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[800],fontSize: 30)
                        ),
                        TextSpan(text: '\nمرحبا بك في ${place.place} عامة ونستكشف معا خباياها',
                            style: TextStyle(color: Colors.grey[600],fontSize: 16)
                        ),
                      ]
                    ),
                  ),
                ) ,
              ),
              Expanded(

                child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (_,index){
                    return PlaceGallery(gallery: place.gallery_images);
                }
                )),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                    color: Colors.red[400]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(
                      textDirection: TextDirection.rtl,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RichText(textAlign: TextAlign.right,
                          text: TextSpan(
                            children: [
                              TextSpan(text: 'السعر المتوسط\n ',
                                  style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 14,)
                              ),
                              TextSpan(text: '\$250',
                                  style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)
                              ),
                            ]
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left:10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FlatButton(
                                onPressed: (){},
                                color: Colors.white,
                                padding: EdgeInsets.all(2),
                                child: Text('أخد جولة',style: TextStyle(color: Colors.pink, fontSize: 18)),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 30,right:10 ,
            child: GestureDetector(
              onTap: (){Navigator.pop(context);},
              child: Align(
                alignment: Alignment.topRight,
                child: Icon(Icons.arrow_forward,color:Colors.white,),
              ),
            ),
          ),
        ],
      ),
    );
  }


}