import 'package:asift_flutter/presentation/common/ui_helpers.dart';
import 'package:flutter/material.dart';

class UnknownMain extends StatelessWidget {
  const UnknownMain({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '404',
            style: TextStyle(
              color: Colors.white,
              fontSize: 80,
              fontWeight: FontWeight.w800,
              height: 0.95,
              letterSpacing: 20.0,
            ),
          ),
          verticalSpaceSmall,
          Text(
            'PAGE NOT FOUND',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              letterSpacing: 20.0,
              wordSpacing: 10.0,
            ),
          ),
        ],
      ),
    );
  }
}
