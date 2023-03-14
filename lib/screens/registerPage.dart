import 'package:flutter/material.dart';
import 'package:todoey/components/callToActionButton.dart';
import 'package:todoey/components/signUpGoogleButton.dart';
import 'package:todoey/components/skeleton.dart';
import 'package:todoey/components/textField.dart';
import 'package:todoey/utilities/constants.dart';

class RegisterPage extends StatelessWidget {
  static const String id = 'registerPage';
  FocusNode _textFieldFocus1 = FocusNode();
  FocusNode _textFieldFocus2 = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Skeleton(
        widgetSkeleton: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300 * fem,
              height: 120 * dem,
              child: Image.asset('assets/images/todoey_logo_white.png'),
            ),
            TextInputWithIcon(
              obscureText: false,
              hintText: 'Username',
              controller: kUserNameController,
              textInputFillColor: kPlainWhite,
              textInputFocusNode: _textFieldFocus1,
            ),
            SizedBox(
              height: 10 * dem,
            ),
            TextInputWithIcon(
              obscureText: true,
              hintText: 'Password',
              controller: kPasswordController,
              textInputFillColor: kPlainWhite,
              textInputFocusNode: _textFieldFocus2,
            ),
            SizedBox(
              height: 10 * dem,
            ),
            CallToActionButton(
              callToActionButtonOnPressed: () {},
              callToActionButtonText: 'Register',
              callToActionButtonColor: kVeryBerry,
            ),
            SignUpGoogleButton(
                signUpGoogleButtonColor: kLemonPie,
                signUpGoogleButtonText: 'Register with Google',
                signUpGoogleButtonOnPressed: () {}),
          ],
        ),
      ),
    );
  }
}
