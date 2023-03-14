import 'package:flutter/material.dart';
import '../utilities/constants.dart';

class CallToActionButton extends StatelessWidget {
  Color callToActionButtonColor;
  String callToActionButtonText = '';
  VoidCallback callToActionButtonOnPressed;

  CallToActionButton(
      {required this.callToActionButtonColor,
        required this.callToActionButtonText,
        required this.callToActionButtonOnPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0 * dem),
      child: SizedBox(
        height: 56 * dem,
        width: 312 * fem,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: callToActionButtonColor,
            //foregroundColor: callToActionButtonColor,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(80 * fem),
            ),
          ),
          onPressed: callToActionButtonOnPressed,
          child: Text(
            callToActionButtonText,
            style: kButtonText.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}