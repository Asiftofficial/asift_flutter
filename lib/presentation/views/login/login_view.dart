import 'package:asift_flutter/presentation/views/login/login_view.desktop.dart';
import 'package:asift_flutter/presentation/views/login/login_view.mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const LoginViewMobile(),
      desktop: (_) => const LoginViewDesktop(),
    );
  }
}
