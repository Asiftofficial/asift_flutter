import 'package:asift_flutter/presentation/common/shared_styles.dart';
import 'package:flutter/material.dart';

class AcademyIcon extends StatelessWidget {
  const AcademyIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'ASIFT GROUP',
      style: ktsBodyRegular.copyWith(fontWeight: FontWeight.w800),
    );
  }
}
