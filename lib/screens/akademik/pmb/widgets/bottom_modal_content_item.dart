import 'package:flutter/material.dart';

import '../../../../core/constant_finals.dart';

class BottomModalContentItem extends StatelessWidget {
  const BottomModalContentItem({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.check, color: kBlue),
        kGap24,
        Text(
          title,
          style: Styles.kPublicMediumBodyOne.copyWith(color: kGrey900),
        ),
      ],
    );
  }
}
