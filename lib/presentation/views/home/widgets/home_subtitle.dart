import 'package:asift_flutter/presentation/common/shared_styles.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeSubtitle extends StatelessWidget {
  const HomeSubtitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final children = [
      Text(
        'Build amazing software, the right way.',
        style: ktsBodyLarge.copyWith(fontWeight: FontWeight.w600),
      ),
      Text(
        ' Sign up to be notified',
        style: ktsBodyLarge.copyWith(
          fontWeight: FontWeight.w600,
          color: Color(0xff0CFF60),
        ),
      )
    ];

    return ScreenTypeLayout.builder(
      mobile: (_) => Column(children: children),
      desktop: (_) => Row(children: children),
    );
  }
}
