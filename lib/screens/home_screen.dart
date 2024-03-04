import 'package:bookingapp/navigationPages/book_session.dart';
import 'package:bookingapp/navigationPages/services.dart';
import 'package:bookingapp/navigationPages/our_missions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  onItemTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List pages = [ServicesPage(), BookSessionPage(), OurMissions()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onItemTap,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.spa), label: 'Services'),
          BottomNavigationBarItem(
              icon: Icon(Icons.schedule), label: 'Appointment'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_hospital), label: 'Offers'),
        ],
      ),
    );
  }
}
