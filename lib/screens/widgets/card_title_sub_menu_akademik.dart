import 'package:flutter/material.dart';

import '../../core/constant_finals.dart';

class CardTitleSubMenuAkademik extends StatelessWidget {
  const CardTitleSubMenuAkademik({
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