import 'package:asift_flutter/presentation/common/academy_icon.dart';
import 'package:asift_flutter/presentation/common/app_colors.dart';
import 'package:asift_flutter/presentation/common/app_constants.dart';
import 'package:asift_flutter/presentation/common/input_field.dart';
import 'package:asift_flutter/presentation/common/ui_helpers.dart';
import 'package:asift_flutter/presentation/views/home/widgets/home_image.dart';
import 'package:asift_flutter/presentation/views/home/widgets/home_notify_button.dart';
import 'package:asift_flutter/presentation/views/home/widgets/home_subtitle.dart';
import 'package:asift_flutter/presentation/views/home/widgets/home_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeViewDesktop extends StatelessWidget {
  const HomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kcBackgroundColor,
        body: Center(
          child: SizedBox(
            width: kdDesktopMaxContentWidth,
            height: kdDesktopMaxContentHeight,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                // Left side of screen
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AcademyIcon(),
                    const Spacer(flex: 2),
                    const HomeTitle(),
                    const HomeSubtitle(),

                    // Arrow
                    verticalSpaceMedium,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100),
                      child: SvgPicture.asset('assets/sign-up-arrow.svg'),
                    ),
                    verticalSpaceSmall,

                    Row(
                      children: [
                        InputField(),
                        horizontalSpaceSmall,
                        HomeNotifyButton(
                          onTap: () {},
                        )
                      ],
                    ),
                    const Spacer(flex: 3)
                  ],
                ),
                // Right side of screen
                const HomeImage()
              ],
            ),
          ),
        ));
  }
}
