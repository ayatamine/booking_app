import 'package:flutter/material.dart';
import 'package:bookingapp/models/place.dart';
import 'image_card.dart';


class ImageCards extends StatefulWidget {
  @override
  _ImageCardsState createState() => _ImageCardsState();
}

class _ImageCardsState extends State<ImageCards> {
  List<Place> places = [
    Place(place: 'الجزائر', image: '1.jpg', days: 7,gallery_images: ['1.jpg','home.jpg','3.jpg']),
    Place(place: 'استراليا', image: '2.jpg', days: 12,gallery_images: ['1.jpg','home.jpg','3.jpg']),
    Place(place: 'الامارات', image: '3.jpg', days: 3,gallery_images: ['1.jpg','home.jpg','3.jpg']),
    Place(place: 'لندن', image: '1.jpg', days: 7,gallery_images: ['2.jpg','home.jpg','3.jpg']),
    Place(place: 'الهند', image: '2.jpg', days: 12,gallery_images: ['2.jpg','home.jpg','3.jpg']),
    Place(place: 'روسيا', image: '3.jpg', days: 3,gallery_images: ['2.jpg','home.jpg','3.jpg']),

  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            reverse: true,
            itemCount: places.length,
            itemBuilder: (_, index) {
              return ImageCard(
                place: places[index],
                name: places[index].place,
                days: places[index].days,
                picture: places[index].image,
              );
            }));
  }
}