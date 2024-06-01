import 'package:flutter/material.dart';

import '../../core/constant_finals.dart';

class CardTitlePMB extends StatelessWidget {
  const CardTitlePMB({
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