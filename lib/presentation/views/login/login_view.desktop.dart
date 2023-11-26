import 'package:asift_flutter/presentation/common/app_colors.dart';
import 'package:asift_flutter/presentation/common/app_constants.dart';
import 'package:flutter/material.dart';

class LoginViewDesktop extends StatelessWidget {
  const LoginViewDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kcBackgroundColor,
        body: Center(
          child: SizedBox(
            width: kdDesktopMaxContentWidth,
            height: kdDesktopMaxContentHeight,
            child: Column(
              children: [],
            ),
          ),
        ));
  }
}
