import 'package:flutter/material.dart';

import '../utilities/constants.dart';

class TextInputWithIcon extends StatelessWidget {
  final controller;
  bool obscureText = false;
  String hintText = '';
  TextInputType? keyboardStyle;
  Color textInputFillColor = kPitchBlack;
  FocusNode? textInputFocusNode;
  Image? textInputImage = darkButtonImage;

  static Image check = Image.asset(
    'assets/images/Icons/check.png',
    width: 24 * fem,
    height: 24 * dem,
  );

  static Image darkButtonImage = Image.asset(
      'assets/images/Icons/darkButtonImage.png',
      width: 24 * fem,
      height: 24 * dem);

  TextInputWithIcon({
    required this.obscureText,
    required this.hintText,
    this.keyboardStyle,
    required this.controller,
    required this.textInputFillColor,
    required this.textInputFocusNode,
    this.textInputImage,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56 * dem,
      child: TextFormField(
          focusNode: textInputFocusNode,
          style: kButtonText,
          controller: controller,
          keyboardType: keyboardStyle,
          obscureText: obscureText,
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            filled: true,
            fillColor: textInputFillColor,
            hintText: hintText,
            suffixIcon: Padding(
              padding: EdgeInsets.fromLTRB(0, 16 * dem, 16 * fem, 16 * dem),
              child:
              textInputImage, //this is where the image is added to the text field
            ),
            contentPadding: EdgeInsets.only(left: 28 * fem),
            hintStyle: kButtonText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(80 * fem)),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kVioLight, width: 1.0 * fem),
              borderRadius: BorderRadius.all(Radius.circular(80 * fem)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kVioLight, width: 2.0 * fem),
              borderRadius: BorderRadius.all(Radius.circular(80 * fem)),
            ),
          ) //'Enter your password'
      ),
    );
  }
}