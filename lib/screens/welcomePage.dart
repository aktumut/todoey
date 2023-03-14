import 'package:flutter/material.dart';
import 'package:todoey/components/skeleton.dart';
import 'package:todoey/screens/loginPage/loginPage.dart';
import 'package:todoey/screens/registerPage.dart';

import '../components/callToActionButton.dart';
import '../utilities/constants.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);
  static const String id = 'welcomePage';

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
            CallToActionButton(
              callToActionButtonOnPressed: () {
                Navigator.popAndPushNamed(context, RegisterPage.id);
              },
              callToActionButtonText: 'Register',
              callToActionButtonColor: kVeryBerry,
            ),
            CallToActionButton(
              callToActionButtonOnPressed: () {
                Navigator.popAndPushNamed(context, LoginPage.id);
              },
              callToActionButtonText: 'Login',
              callToActionButtonColor: kLemonPie,
            ),
          ],
        ),
      ),
    );
  }
}
