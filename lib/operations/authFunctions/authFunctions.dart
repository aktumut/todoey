import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../screens/loginPage/loginPage.dart';
import '../../screens/welcomePage.dart';
import '../../utilities/constants.dart';


class AuthFunctions extends StatelessWidget {
  static const String id = 'screenSize';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          fem = (MediaQuery.of(context).size.width -
              MediaQuery.of(context).padding.left -
              MediaQuery.of(context).padding.right) /
              baseWidth;

          dem = (MediaQuery.of(context).size.height -
              MediaQuery.of(context).padding.top -
              MediaQuery.of(context).padding.bottom) /
              baseHeight;

          if (snapshot.hasData) {
            //return HomePage();
            return LoginPage();
          } else {
            return WelcomePage();
            // return LoginPage();
          }
        },
      ),
    );
  }
}