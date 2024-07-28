import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomContainer extends StatelessWidget {
  final String image;
  const CustomContainer({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          // color: Colors.green[200],
          border: Border.all(color: Colors.black26),
          borderRadius: const BorderRadius.all(
            Radius.circular(05),
          ),
        ),
        height: 50,
        width: 50,
        child:Center(
          child: SvgPicture.asset(image,
          ),
        ) );
  }
}
