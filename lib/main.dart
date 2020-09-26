import 'package:flutter/material.dart';
import 'package:bookingapp/screens/welcom.dart';
import 'package:bookingapp/screens/profile.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Welcome(),
  routes:{
    '/Profile':(context) => Profile(),
  },
));