import 'package:flutter/material.dart';

import '../../core/constant_finals.dart';

class BottomModal extends StatelessWidget {
  const BottomModal({
    super.key,
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        color: kWhite,
      ),
      padding: const EdgeInsets.symmetric(vertical: 32),
      width: double.infinity,
      child: Column(
        children: [
          Text(
            title,
            style: Styles.kPublicSemiBoldHeadingFour.copyWith(color: kGrey900),
          ),
          const Divider(color: kGrey50),
          kGap32,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: child,
          ),
        ],
      ),
    );
  }
}
