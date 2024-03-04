import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant/colors.dart';
import '../../main.dart';
import '../../widgets/custombuttton.dart';
import '../../widgets/customtextfield.dart';
import 'login.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: h * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: h * 0.03,
              ),
              const Center(
                child: Text(
                  "Create an Account",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: h * 0.035,
              ),
              const Text(
                " Enter Your Name",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              CustomTextfield(
                hintText: "Enter your name",
                controller: nameController,
              ),
              SizedBox(
                height: h * 0.015,
              ),
              const Text(
                " Email",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              CustomTextfield(
                hintText: "abc@gmail.com",
                controller: emailController,
              ),
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
                "Confirm Password",
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
                height: h * 0.015,
              ),
              CustomButton(
                title: "Sign Up",
                onpress: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const LoginPage()));
                },
              ),
              SizedBox(
                height: h * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account ?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const LoginPage()));
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            color: AppColors.primarycolor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
