import 'package:bookingapp/screens/auth/verification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../widgets/custombuttton.dart';
import '../../widgets/customtextfield.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});

  TextEditingController forgotController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        // leading: const Icon(Icons.arrow_back),
        centerTitle: true,
        title: const Text(
          "Forgot Password",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: w * 0.025),
        child: Column(
          children: [
            SizedBox(
              height: h * 0.04,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                " Email",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
            ),
            CustomTextfield(
                hintText: "xyz@gmail.com", controller: forgotController),
            SizedBox(
              height: h * 0.02,
            ),
            CustomButton(
              title: "Send",
              onpress: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => const VerifyPage()));
              },
            )
          ],
        ),
      )),
    );
  }
}
