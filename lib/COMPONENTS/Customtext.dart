import 'package:flutter/material.dart';

import 'Colors.dart';

class CustomText extends StatelessWidget {
  final String text;
  const CustomText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Text(
        text,style: TextStyle(
          color: AppColors.blackcolor,
          fontFamily: "PoppinsRegular",
          fontWeight: FontWeight.w500,
          fontSize: 13),
      ),
    );
  }
}
