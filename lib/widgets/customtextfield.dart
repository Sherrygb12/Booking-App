import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextfield extends StatelessWidget {
  String hintText;
  VoidCallback? ontap;
  TextEditingController controller;
  Icon? suffixIcon;
  CustomTextfield(
      {super.key,
      required this.hintText,
      required this.controller,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Card(
      // elevation: 0.3,
      color: Colors.white,
      // decoration: BoxDecoration(
      //     color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: TextField(
          controller: controller,
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 8, vertical: 13),
              // enabledBorder:
              //     OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
              hintText: hintText,
              suffixIcon: suffixIcon,
              border: InputBorder.none)),
    );
  }
}
