import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custombuttton.dart';
import '../navigationPages/services.dart';

class WelcomePage extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const WelcomePage({Key? key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: w * 0.02),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset("assets/images/splash.png")),
            SizedBox(height: h * 0.025),
            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "Welcome to\n",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text: "SHIFT HUB",
                      style: TextStyle(
                        color: Color(0xffF56C02),
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: h * 0.04),
            const Text(
              "Please select your Location",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: h * 0.01),
            countryLocation("assets/icons/canada.png", "Canada", 0),
            SizedBox(height: h * 0.01),
            countryLocation("assets/icons/aus.png", "Australia", 1),
            SizedBox(height: h * 0.01),
            countryLocation("assets/icons/uk.png", "United Kingdom", 2),
            SizedBox(height: h * 0.03),
            CustomButton(
              title: "Get Started",
              onpress: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => const ServicesPage()));
              },
            )
          ],
        ),
      ),
    );
  }

  Widget countryLocation(String imagePath, String country, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Card(
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        color: Colors.white,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: _selectedIndex == index
                ? const LinearGradient(
                    colors: [
                      Color(0xffF56C02),
                      Color(0xffF56C02),
                      Color(0xffFF7104),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  )
                : null,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              children: [
                Image.asset(imagePath),
                const SizedBox(width: 10),
                Text(
                  country,
                  style: TextStyle(
                      fontSize: 20,
                      color: _selectedIndex == index
                          ? Colors.white
                          : Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
