import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Colors.dart';

class CustomTextField extends StatefulWidget {
  // final String label;
  final bool iconVisible;

  const CustomTextField({
    super.key,
    // required this.label,
    required this.iconVisible,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool showPass = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: showPass,
      obscuringCharacter: '*',
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(10.0),
            right: Radius.circular(10.0),
          ),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.horizontal(
            left: Radius.circular(10.0),
            right: Radius.circular(10.0),
          ),
          borderSide: BorderSide(color: AppColors.bordercolor),
        ),

        suffixIcon: Visibility(
          visible: widget.iconVisible == true,
          child: IconButton(
            onPressed: () {
              setState(() {
                if (showPass) {
                  showPass = false;
                } else {
                  showPass = true;
                }
              });
            },
            icon: Icon(
                showPass == true ? Icons.visibility_off : Icons.visibility),
            color:AppColors.icongreycolor,
          ),
        ),
      ),
    );
  }
}