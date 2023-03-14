import 'package:flutter/material.dart';
import 'package:todoey/utilities/constants.dart';

class SignUpGoogleButton extends StatelessWidget {
  Color signUpGoogleButtonColor;
  String signUpGoogleButtonText = '';
  VoidCallback signUpGoogleButtonOnPressed;

  SignUpGoogleButton({
    required this.signUpGoogleButtonColor,
    required this.signUpGoogleButtonText,
    required this.signUpGoogleButtonOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0 * dem),
      child: SizedBox(
        height: 56 * dem,
        width: 312 * fem,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: signUpGoogleButtonColor,
            //foregroundColor: callToActionButtonColor,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(80 * fem),
            ),
          ),
          onPressed: signUpGoogleButtonOnPressed,
          child: Text(
            signUpGoogleButtonText,
            style: kButtonText.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
