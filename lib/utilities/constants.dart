import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

//Colors
const kPitchBlack = Color(0xff000000);
const Color kPlainWhite = Color(0xffffffff);
const Color kDustBunny = Color(0xff3A3A3A);
const Color kCloudyBlue = Color(0xff69CCF8);
const Color kVioLight = Color(0xff6876E6);
const Color kWarningColor = Color(0xffEF97EF);
const Color kLemonPie = Color(0xffF8A542);
const Color kTangerine = Color(0xffDC6A40);
const Color kVeryBerry = Color(0xffE54691);
const Color kBlue = Color(0xff4384C5);
const Color kPurple = Color(0xff3A226F);

//dimensions
double baseWidth = 360;
double baseHeight = 720;

double fem = 1.0; //for width
double dem = 1.0;
double ddem = dem * 0.97; // for height
double ffem = fem * 0.97;

//fonts
TextStyle kDisplayTextFont = TextStyle(
  fontFamily: 'Roboto-Black',
  fontSize: 80 * ddem,
  fontWeight: FontWeight.w900,
  height: 1.3999999762 * ddem / dem,
  letterSpacing: 0.1 * fem,
  //color: kPlainWhite,
);

TextStyle kH1Regular = TextStyle(
  fontFamily: 'Roboto-Regular',
  fontSize: 23.99 * ddem,
  fontWeight: FontWeight.w400,
  height: 1.3999999364 * ddem / dem,
  letterSpacing: 0.96 * fem,
  //color: kPlainWhite,
);

TextStyle kButtonText = TextStyle(
  fontFamily: 'Roboto-Regular',
  fontSize: 20 * ddem,
  fontWeight: FontWeight.w500,
  height: 1.3999999364 * ddem / dem,
  letterSpacing: 0.96 * fem,
  //color: kPlainWhite,
);

TextStyle kDialogText = TextStyle(
  fontFamily: 'Roboto-Regular',
  fontSize: 16 * ddem,
  fontWeight: FontWeight.w400,
  height: 1.3999999364 * ddem / dem,
  letterSpacing: 0.96 * fem,
  //color: kPitchBlack,
);

TextStyle kH1Bold = TextStyle(
  fontFamily: 'Roboto-Bold',
  fontSize: 24 * ddem,
  fontWeight: FontWeight.w800,
  height: 1.3999999364 * ddem / dem,
  letterSpacing: 0.48 * fem,
  //color: kPlainWhite,
);

TextStyle kSmallText = TextStyle(
  fontFamily: 'Roboto-Regular',
  fontSize: 10 * ffem,
  fontWeight: FontWeight.w400,
  height: 1.3999999364 * ddem / dem,
  letterSpacing: 0.96 * fem,
  //color: kPlainWhite,
);

TextStyle kH2Bold = TextStyle(
  fontFamily: 'Roboto-Black',
  fontSize: 56 * ddem,
  fontWeight: FontWeight.w800,
  height: 1.3999999364 * ddem / dem,
  letterSpacing: 0.96 * fem,
  //color: kPlainWhite,
);

TextStyle kH3Regular = TextStyle(
  fontFamily: 'Roboto-Regular',
  fontSize: 24 * ddem,
  fontWeight: FontWeight.w900,
  height: 1.3999999364 * ddem / dem,
  letterSpacing: 0.96 * fem,
  //color: kPlainWhite,
);

//widget decorations

//text controllers
TextEditingController kEmailController = TextEditingController();
TextEditingController kPasswordController = TextEditingController();
TextEditingController kConfirmPasswordController = TextEditingController();
TextEditingController kUserNameController = TextEditingController();
//final lastNameController = TextEditingController();

//Firebase
User? kLoggedInUser;