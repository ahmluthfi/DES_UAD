import 'package:flutter/material.dart';

import '../../core/constant_finals.dart';

class ActiveButton extends StatelessWidget {
  const ActiveButton({
    super.key,
    required this.title,
    this.isActive = true,
  });

  final String title;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: isActive ? kWhite : Colors.transparent,
      ),
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        title,
        style: Styles.kPublicSemiBoldBodyThree
            .copyWith(color: isActive ? kGrey900 : kGrey300),
        textAlign: TextAlign.center,
      ),
    );
  }
}
