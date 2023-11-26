import 'package:asift_flutter/presentation/views/login/widgets/login_main.dart';
import 'package:flutter/material.dart';

class LoginViewDesktop extends StatelessWidget {
  const LoginViewDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginMain(),
    );
  }
}
