import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'home_view.desktop.dart';
import 'home_view.mobile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const HomeViewMobile(),
      //tablet: (_) => const HomeViewTablet(),
      desktop: (_) => const HomeViewDesktop(),
    );
  }
}
