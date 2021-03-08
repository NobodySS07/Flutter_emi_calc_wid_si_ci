import 'package:d5/pages/simpleInterest.dart';
import 'package:d5/pages/home.dart';
import 'package:d5/pages/CompoundInterest.dart';
import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/home': (context) => Home(),
    '/simpleInterest': (context) =>simpleInterest(),
    '/CompoundInterest': (context) => CompoundInterest(),
  },
));
