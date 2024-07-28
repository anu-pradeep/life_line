import 'package:flutter/material.dart';
import 'package:life_line/COMPONENTS/Colors.dart';

class TextFormName extends StatefulWidget {

   const TextFormName({
    super.key,
  });

  @override
  State<TextFormName> createState() => _TextFormNameState();
}

class _TextFormNameState extends State<TextFormName> {

  bool showPass = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
        ),
    );
  }
}
