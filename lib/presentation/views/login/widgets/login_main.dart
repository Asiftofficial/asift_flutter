import 'dart:developer';

import 'package:asift_flutter/app/preferences.dart';
import 'package:asift_flutter/app/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginMain extends StatefulWidget {
  const LoginMain({super.key});

  @override
  State<LoginMain> createState() => _LoginMainState();
}

class _LoginMainState extends State<LoginMain> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late AsiftPreferences dbPreferences;
  //late String dateRange;

  // void _loadPreferences() async {
  //   dateRange = await dbPreferences.getDaterange();
  // }

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    dbPreferences = AsiftPreferences();
    //_loadPreferences();
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = getValueForScreenType<bool>(
      context: context,
      mobile: true,
      desktop: false,
    );

    return Container(
        color: const Color(0xff42BAFF),
        child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: isMobile ? 50 : 95, vertical: isMobile ? 50 : 100),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(width: 3, color: Colors.white)),
                      child: const Icon(
                        Icons.person,
                        size: 30,
                        color: Colors.white,
                      )),
                  const Text(
                    "SIGN IN",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ],
              ),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
              ElevatedButton(
                  onPressed: () async {
                    await dbPreferences.addUsername(_emailController.text);

                    GoRouter.of(context).go(HOME_ROUTE);
                  },
                  child: Text('Login'))
              // BlocListener<LoginBloc, LoginState>(
              //   listener: (context, state) async {
              //     if (state is LoginError) {
              //       ScaffoldMessenger.of(context)
              //           .showSnackBar(SnackBar(content: Text(state.message)));
              //     }
              //   },
              //   child: BlocBuilder<LoginBloc, LoginState>(
              //     builder: (context, state) {
              //       if (state is LoginLoading) {
              //         return const Center(child: CircularProgressIndicator());
              //       } else {
              //         return ElevatedButton(
              //             onPressed: () {
              //               final loginUser = LoginUser(
              //                   email: _emailController.text,
              //                   password: _passwordController.text);
              //               context.read<LoginBloc>().add(DoLogin(loginUser));
              //             },
              //             child: Text('Login'));
              //       }
              //     },
              //   ),
              // ),
            ])));
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
