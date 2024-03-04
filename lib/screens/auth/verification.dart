import 'package:custom_otp_textfield/custom_otp_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant/colors.dart';
import '../../main.dart';
import '../../widgets/custombuttton.dart';
import 'new_password.dart';

class VerifyPage extends StatefulWidget {
  const VerifyPage({super.key});

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  final TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios_rounded),
        title: const Text(
          "verification",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: w * 0.04),
        child: Column(
          children: [
            SizedBox(
              height: h * 0.02,
            ),
            const Align(
                alignment: Alignment.center,
                child: Text(
                  "We have sent a pin to your Email \n address to verifcation",
                  style: TextStyle(fontWeight: FontWeight.w500),
                )),
            SizedBox(
              height: h * 0.03,
            ),
            CustomOTPTextField(
              deviceWidth: MediaQuery.of(context).size.width,
              textEditingController: otpController,
              inputBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: const BorderSide(width: 1.3),
              ),
              boxSize: w * 0.13,
              cursorHeight: h * 0.03,
              cursorColor: Colors.black12,
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Didn’t receive code?"),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Resend",
                      style: TextStyle(color: AppColors.primarycolor),
                    ))
              ],
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
                        builder: (context) => const NewPasswordPage()));
              },
            )
          ],
        ),
      )),
    );
  }
}
