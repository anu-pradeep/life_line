import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:life_line/COMPONENTS/Colors.dart';
import 'package:life_line/COMPONENTS/Customtext.dart';
import 'package:life_line/COMPONENTS/textfield%20.dart';

import '../COMPONENTS/Custom container.dart';
import '../COMPONENTS/textfield pwd.dart';

// void main() {
//   runApp(SignUpScreen());
// }

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:AppColors.whitecolor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
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
                  const SizedBox(height: 15),
                  Text(
                    'Create an account',
                    style: TextStyle(
                        fontFamily: "PoppinsMedium",
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: AppColors.blackcolor),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  const CustomText(text: 'Full Name'),
                  const Padding(
                    padding: EdgeInsets.only(left: 10,right: 10,top: 05),
                    child: TextFormName(),
                  ),
                  const SizedBox(height: 05),
                  const CustomText(text: 'Phone number'),
                  const SizedBox(height: 05,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.bordercolor),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: '+91',
                              items:  const [
                                DropdownMenuItem(
                                  value: '+91',
                                  child: Row(
                                    children: [
                                    // SvgPicture.asset('assets/images/flag.svg'),
                                      SizedBox(width: 8),
                                      Text('+91'),
                                    ],
                                  ),
                                ),

                              ],
                              onChanged: (value) {},
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(right: 7.0),
                            child: TextFormName(),
                          )
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 05),
                  const CustomText(text: 'Email'),
                  const Padding(
                    padding: EdgeInsets.only(left: 10,right: 10,top: 05),
                    child: TextFormName(),
                  ),

                  const SizedBox(height: 05),
                  const CustomText(text: 'Create password'),
                  const Padding(
                    padding: EdgeInsets.only(left: 10,right: 10,top: 05),
                    child:  CustomTextField(iconVisible: true,),
                  ),
                 const SizedBox(height: 05,),
                  const CustomText(text: 'Confirm password'),
                  const Padding(
                    padding: EdgeInsets.only(left: 10,right: 10,top: 05),
                    child:  CustomTextField(iconVisible: true,),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 15,left: 20),
                    child: Row(
                      children: [
                        Checkbox(value: false, onChanged: (newValue) {},
                          side: BorderSide(color: AppColors.boxgreycolor),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                            },
                            child: RichText(
                              text:  TextSpan(
                                text: "I read and agree with the",
                                style: TextStyle(
                                  fontFamily: "PoppinsRegular",
                                  fontSize: 11,
                                  color: AppColors.blackcolor,
                                  fontWeight: FontWeight.w700,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' terms and conditions',
                                    style: TextStyle(
                                      fontFamily: "PoppinsRegular",
                                      fontSize: 11,
                                      color: AppColors.bluecolor,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            )


                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),

                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.buttoncolor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        fixedSize: const Size(20, 60)),
                    child: Text(
                      "Continue",
                      style: TextStyle(
                          color: AppColors.whitecolor,
                          fontSize: 16,
                          fontFamily: "PoppinsMedium",
                          fontWeight: FontWeight.w600),
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
                ],
              ),
            ),
          ),
        ),

    );
  }
}
