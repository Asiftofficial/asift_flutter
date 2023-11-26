// ignore_for_file: constant_identifier_names

import 'package:asift_flutter/app/preferences.dart';
import 'package:asift_flutter/presentation/views/home/home_view.dart';
import 'package:asift_flutter/presentation/views/login/login_view.dart';
import 'package:asift_flutter/presentation/views/unknown/unknown_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const LOGIN_ROUTE = '/';
const HOME_ROUTE = '/home';
final AsiftPreferences preferences = AsiftPreferences();

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    //state.pageKey
    key: UniqueKey(),
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}

final router = GoRouter(
    //errorBuilder: (context, state) => const UnknownView(),
    errorPageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context, state: state, child: const UnknownView()),
    initialLocation: LOGIN_ROUTE,
    routes: [
      GoRoute(
        name: LOGIN_ROUTE,
        path: LOGIN_ROUTE,
        builder: (context, state) => const LoginView(),
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
            context: context, state: state, child: const LoginView()),
        // redirect: (context, state) async {
        //   final token = await preferences.getToken();

        //   if (token != '') {
        //     return HOME_ROUTE;
        //   }
        //   return null;
        // },
      ),
      GoRoute(
        name: HOME_ROUTE,
        path: HOME_ROUTE,
        builder: (context, state) => const HomeView(),
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
            context: context, state: state, child: const HomeView()),
        // redirect: (context, state) async {
        //   final token = await preferences.getToken();

        //   if (token == 'token' || token == '') {
        //     return LOGIN_ROUTE;
        //   }
        //   return null;
        // },
      ),
    ]);
