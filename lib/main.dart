import 'package:bookingapp/screens/auth/login.dart';
import 'package:bookingapp/navigationPages/book_session.dart';
import 'package:flutter/material.dart';

double h = 0;
double w = 0;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: LoginPage(),
    );
  }
}
