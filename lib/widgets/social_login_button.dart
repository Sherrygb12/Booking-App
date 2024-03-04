import 'package:flutter/material.dart';

import '../main.dart';

// ignore: must_be_immutable
class SocialLoginButton extends StatelessWidget {
  final String title;
  String icon;
  SocialLoginButton({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      color: Colors.red[50],
      child: Container(
        height: h * 0.068,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
            ),
            SizedBox(
              width: w * 0.025,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 16, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
