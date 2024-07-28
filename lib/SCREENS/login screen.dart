import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:life_line/COMPONENTS/Colors.dart';
import 'package:life_line/SCREENS/sign%20up.dart';

import '../COMPONENTS/Custom container.dart';
import '../COMPONENTS/textfield .dart';
import 'otpverification.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whitecolor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/images/screenicon.svg'),
                      const SizedBox(width: 8),
                      SvgPicture.asset('assets/images/Life Line.svg'),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Login",
                    style: TextStyle(
                        fontFamily: "PoppinsMedium",
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                        color: AppColors.blackcolor),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Email",
                      style: TextStyle(
                          color: AppColors.blackcolor,
                          fontFamily: "PoppinsRegular",
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                    ),
                  ),
                   const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: TextFormName(
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Password",
                      style: TextStyle(
                        color: AppColors.blackcolor,
                        fontFamily: "PoppinsRegular",
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                      ),
                    ),
                  ),
                   const Padding(
                    padding: EdgeInsets.all(10.0),
                    child:
                        TextFormName(),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>VerificationScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.buttoncolor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          fixedSize: const Size(15, 60)),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: AppColors.whitecolor,
                            fontSize: 16,
                            fontFamily: "PoppinsMedium",
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                          child: Divider(
                        thickness: 1,
                        indent: 22,
                        endIndent: 22,
                        color: AppColors.bordercolor,
                      )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "Or login with",
                          style: TextStyle(
                            color: AppColors.blackcolor,
                            fontFamily: "PoppinsRegular",
                            fontSize: 11,
                          ),
                        ),
                      ),
                      Expanded(
                          child: Divider(
                        thickness: 1,
                        indent: 22,
                        endIndent: 22,
                        color: AppColors.bordercolor,
                      )),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomContainer(image: 'assets/images/apple.svg'),
                      SizedBox(width: 20),
                      CustomContainer(image: 'assets/images/google.svg'),
                      SizedBox(width: 20),
                      CustomContainer(image: 'assets/images/facebook.svg'),
                    ],
                  ),
                  const SizedBox(height: 20),

                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                        },
                          child: RichText(
                            text:  TextSpan(
                              text: "Don't have an account ? ",
                              style: TextStyle(
                                  color: AppColors.blackcolor,
                                  fontFamily: "PoppinsRegular",
                                  fontSize: 11,
                                ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Create new account',
                                  style: TextStyle(
                                    color: AppColors.bluecolor,
                                    fontFamily: "PoppinsRegular",
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                          )


                      ),
                    ],
                  ),

              ),
            ),
          ),
        ),

    );
  }
}
