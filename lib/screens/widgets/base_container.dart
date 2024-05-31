import 'package:des_uad/core/constant_finals.dart';
import 'package:flutter/material.dart';

class BaseContainer extends StatelessWidget {
  final Widget child;
  const BaseContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: child,
    );
  }
}
