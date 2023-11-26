import 'package:asift_flutter/presentation/common/academy_icon.dart';
import 'package:asift_flutter/presentation/common/app_colors.dart';
import 'package:asift_flutter/presentation/common/input_field.dart';
import 'package:asift_flutter/presentation/common/ui_helpers.dart';
import 'package:asift_flutter/presentation/views/home/widgets/home_image.dart';
import 'package:asift_flutter/presentation/views/home/widgets/home_notify_button.dart';
import 'package:asift_flutter/presentation/views/home/widgets/home_subtitle.dart';
import 'package:asift_flutter/presentation/views/home/widgets/home_title.dart';
import 'package:flutter/material.dart';

class HomeViewMobile extends StatelessWidget {
  const HomeViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kcBackgroundColor,
        body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 50,
          ),
          children: const [
            AcademyIcon(),
            verticalSpaceLarge,
            HomeTitle(),
            verticalSpaceTiny,
            HomeSubtitle(),
            verticalSpaceLarge,
            InputField(),
            verticalSpaceMedium,
            HomeNotifyButton(),
            verticalSpaceMedium,
            HomeImage(),
          ],
        ));
  }
}
