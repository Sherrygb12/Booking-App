import 'package:bookingapp/navigationPages/services.dart';
import 'package:bookingapp/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../widgets/custombuttton.dart';
import '../../widgets/customtextfield.dart';
import '../welcome.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({super.key});

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        // leading: const Icon(Icons.arrow_back_ios_rounded),
        title: const Text(
          "Reset Password",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: w * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: h * 0.015,
            ),
            const Text(
              " Password",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
            CustomTextfield(
              hintText: "Enter your password",
              controller: passwordController,
              suffixIcon: const Icon(Icons.remove_red_eye),
            ),
            SizedBox(
              height: h * 0.015,
            ),
            const Text(
              " Confirm Password",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
            CustomTextfield(
              hintText: "Enter confirm password",
              controller: cPasswordController,
              suffixIcon: const Icon(Icons.remove_red_eye),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            CustomButton(
              title: "Confirm",
              onpress: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => const HomeScreen()));
              },
            )
          ],
        ),
      )),
    );
  }
}
