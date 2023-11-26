import 'package:asift_flutter/presentation/common/app_colors.dart';
import 'package:asift_flutter/presentation/views/unknown/widgets/unknown_main.dart';
import 'package:flutter/material.dart';

class UnknownViewMobile extends StatelessWidget {
  const UnknownViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: kcBackgroundColor, body: UnknownMain());
  }
}
