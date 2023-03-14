import 'package:flutter/material.dart';
import 'package:todoey/screens/loginPage/loginPage.dart';
import 'package:todoey/screens/welcomePage.dart';
import 'screens/registerPage.dart';
import 'utilities/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Operations/AuthFunctions/authFunctions.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    Todoey(),
  );
}

class Todoey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Introduction screen',
      initialRoute: AuthFunctions.id,
      routes: {
        LoginPage.id: (context) => LoginPage(),
        WelcomePage.id: (context) => WelcomePage(),
        RegisterPage.id: (context) => RegisterPage(),
      },
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: kPlainWhite,
        textTheme: ThemeData.light().textTheme.apply(
          fontFamily: 'Roboto-Regular',
        ),
      ),
      home: AuthFunctions(),
      //home: WelcomePage(),
    );
  }
}