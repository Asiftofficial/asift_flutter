import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'unknown_view.desktop.dart';
import 'unknown_view.mobile.dart';

class UnknownView extends StatelessWidget {
  const UnknownView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const UnknownViewMobile(),
      desktop: (_) => const UnknownViewDesktop(),
    );
  }
}
