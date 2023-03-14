import 'package:flutter/material.dart';
import '../utilities/constants.dart';

class Skeleton extends StatelessWidget {
  Widget? widgetSkeleton;

  Skeleton({required this.widgetSkeleton});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24 * fem),
          child: widgetSkeleton,
        ),
      ),
    );
  }
}
