import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:life_line/COMPONENTS/Colors.dart';

// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: VerificationScreen(),
//     );
//   }
// }

class VerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/images/screenicon.svg'),
                      const SizedBox(width: 8),
                      SvgPicture.asset('assets/images/Life Line.svg'),
                    ],
                  ),
                  const SizedBox(height: 32),
                  const Center(
                    child: Text(
                      'Verify your account',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'PoppinsMedium',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Center(
                    child: Text(
                      'Enter the verification code sent to your phone number',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 10,
                          color: AppColors.verifytextcolor,
                          fontFamily: 'PoppinsRegular'),
                    ),
                  ),
                  const SizedBox(height: 32),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 15,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                _buildVerificationBox(context),
                                _buildVerificationBox(context),
                                _buildVerificationBox(context),
                                _buildVerificationBox(context),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: RichText(
                                text: TextSpan(
                                  text: "Didn't receive the code? ",
                                  style: TextStyle(
                                      color: AppColors.blackcolor,
                                      fontFamily: 'PoppinsRegular',
                                      fontSize: 12),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Resend code',
                                      style: TextStyle(
                                          color: AppColors.bluecolor,
                                          fontFamily: 'PoppinsRegular',
                                          fontSize:
                                              12), // Specific style for 'Resend code'
                                    ),
                                  ],
                                ),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(top: 30, bottom: 20),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 16),
                                backgroundColor: AppColors.buttoncolor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Text(
                                'Continue',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'PoppinsRegular',
                                    color: AppColors.whitecolor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildVerificationBox(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: const Center(
        child: Text(
          '',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
