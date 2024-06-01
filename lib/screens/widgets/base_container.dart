import 'package:des_uad/core/constant_finals.dart';
import 'package:flutter/material.dart';

class BaseContainer extends StatelessWidget {
  final Widget child;
  final Color color;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double? height;
  final double? width;
  final BoxBorder? border;
  final List<BoxShadow>? boxShadow;
  const BaseContainer({
    super.key,
    required this.child,
    this.color = kWhite,
    this.padding,
    this.margin,
    this.height,
    this.width,
    this.border,
    this.boxShadow,
  });

  factory BaseContainer.styledPMB({
    required final List<Widget> children,
  }) =>
      BaseContainer(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        border: border,
        boxShadow: boxShadow,
      ),
      padding: padding,
      margin: margin,
      height: height,
      width: width,
      child: child,
    );
  }
}
