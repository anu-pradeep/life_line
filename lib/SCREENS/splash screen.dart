import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:life_line/COMPONENTS/Colors.dart';

import 'login screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 130),
            child: CustomPaint(
              painter: WavePainter(),
              child: Container(),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Lifeline Icon and Text
                Container(
                  margin: const EdgeInsets.only(bottom: 100),
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/images/splashicon.svg'),
                      const SizedBox(height: 20),
                      SvgPicture.asset('assets/images/Life Line.svg'),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                // Get Started Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.buttoncolor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fixedSize: const Size(220, 40)),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                        fontFamily: 'PoppinsMedium',
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: AppColors.whitecolor),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      // ..color = AppColors.whitecolor
      ..color = AppColors.bordercolor
      ..strokeWidth = 0.5
      ..style = PaintingStyle.stroke;
    Path path = Path();
    path.moveTo(size.width / 2, 3);
    path.quadraticBezierTo(
        size.width * 3 / 4, size.height / 8, size.width / 2, size.height / 4);
    path.quadraticBezierTo(
        size.width / 4, size.height * 3 / 8, size.width / 2, size.height / 2);
    path.quadraticBezierTo(size.width * 3 / 4, size.height * 5 / 8,
        size.width / 2, size.height * 3 / 4);
    path.quadraticBezierTo(
        size.width / 4, size.height * 7 / 8, size.width / 2, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
