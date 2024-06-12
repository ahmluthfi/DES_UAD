import 'package:flutter/material.dart';

import '../../../core/constant_finals.dart';

class ButtonListviewRanking extends StatelessWidget {
  const ButtonListviewRanking({
    super.key,
    required this.title,
    this.isSelected = false,
  });

  final String title;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: isSelected ? Colors.transparent : kGrey100),
        borderRadius: BorderRadius.circular(8),
        color: isSelected ? kBlue : Colors.transparent,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Center(
        child: Text(
          title,
          style: Styles.kPublicRegularBodyTwo
              .copyWith(color: isSelected ? kWhite : kGrey300),
        ),
      ),
    );
  }
}
