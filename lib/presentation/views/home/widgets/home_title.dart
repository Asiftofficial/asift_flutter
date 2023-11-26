import 'package:asift_flutter/presentation/common/shared_styles.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: getValueForScreenType<CrossAxisAlignment>(
        context: context,
        mobile: CrossAxisAlignment.center,
        desktop: CrossAxisAlignment.start,
      ),
      children: [
        Text(
          'ASIFT\nFLUTTER',
          // Use 60 for mobile and 80 for desktop <====== #1
          style: ktsTitleText.copyWith(
              fontSize: getValueForScreenType<double>(
                context: context,
                mobile: 60,
                desktop: 80,
              ),
              color: Color(0xff0091FB)),
        ),
        Text(
          'MOBILE & WEB',
          // Use 60 for mobile and 80 for desktop <====== #1
          style: ktsTitleText.copyWith(
            fontSize: getValueForScreenType<double>(
              context: context,
              mobile: 60,
              desktop: 80,
            ),
          ),
        ),
      ],
    );
  }
}
