import 'package:flutter/material.dart';

import '../../core/constant_finals.dart';

class BigCardTitle extends StatelessWidget {
  const BigCardTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Styles.kPublicSemiBoldBodyOne,
    );
  }
}
