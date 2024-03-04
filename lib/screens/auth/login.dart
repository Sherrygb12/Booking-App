import 'package:bookingapp/screens/auth/signup.dart';
import 'package:bookingapp/navigationPages/services.dart';
import 'package:bookingapp/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant/colors.dart';
import '../../main.dart';
import '../../widgets/social_login_button.dart';
import '../welcome.dart';
import '../../widgets/custombuttton.dart';
import '../../widgets/customtextfield.dart';
import 'forgot_password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();

  bool? isChecked = true;

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
                height: h * 0.02,
              ),
              const Center(
                child: Text(
                  "Hi, Welcome Back! 👋",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: h * 0.03,
              ),
              const Text(
                "Email",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              CustomTextfield(
                hintText: "xyz@gmail.com",
                controller: emailController,
              ),
              SizedBox(
                height: h * 0.015,
              ),
              const Text(
                "Password",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                          value: isChecked,
                          onChanged: (val) {
                            setState(() {
                              isChecked = val;
                            });
                          }),
                      const Text(
                        "Remember Me",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => ForgotPassword()));
                    },
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(
                          color: AppColors.primarycolor,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: h * 0.02,
              ),
              CustomButton(
                  title: "Login",
                  onpress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  }),
              // SizedBox(
              //   height: h * 0.02,
              // ),
              // Container(
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(12),
              //     color: const Color.fromARGB(255, 251, 217, 217),
              //     border: Border.all(color: AppColors.primarycolor),
              //   ),
              //   child: Padding(
              //     padding: EdgeInsets.symmetric(
              //         horizontal: w * 0.05, vertical: h * 0.02),
              //     child: RichText(
              //       text: TextSpan(
              //         children: [
              //           TextSpan(
              //               text: " Note: ",
              //               style: TextStyle(
              //                   color: AppColors.primarycolor,
              //                   fontWeight: FontWeight.w500)),
              //           const TextSpan(
              //               text:
              //                   " Please note that email and password has to be the same as your SkipTheDishes account so our software can integrate with your account and catch shifts.",
              //               style: TextStyle(
              //                   color: Colors.black54,
              //                   fontWeight: FontWeight.w400,
              //                   height: 1.4))
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              // const Spacer(),
              // Center(
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Container(
              //         width: w * 0.35,
              //         child: const Divider(
              //           thickness: 1,
              //           height: 10,
              //           color: Colors.black,
              //         ),
              //       ),
              //       const SizedBox(width: 8.0),
              //       const Text('OR'),
              //       const SizedBox(width: 8.0),
              //       Container(
              //         width: w * 0.35,
              //         child: const Divider(
              //           thickness: 1,
              //           height: 10,
              //           color: Colors.black,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: h * 0.02,
              // ),
              // SocialLoginButton(
              //   title: "Continue with Facebook",
              //   icon: "assets/icons/facebook.png",
              // ),
              // SizedBox(
              //   height: h * 0.01,
              // ),
              // SocialLoginButton(
              //   title: "Continue with Google",
              //   icon: "assets/icons/google.png",
              // ),
              // SizedBox(
              //   height: h * 0.02,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don’t have an account ?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const SignupPage()));
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: AppColors.primarycolor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      )),
                ],
              ),
              // SizedBox(
              //   height: h * 0.02,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
