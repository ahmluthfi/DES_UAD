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

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
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

  factory BaseContainer.styledSubMenuAkademik(
          {required final List<Widget> children,
          final bool isRow = false,
          final MainAxisAlignment mainAxisAlignment =
              MainAxisAlignment.start}) =>
      BaseContainer(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        child: isRow
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: children,
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: mainAxisAlignment,
                children: children,
              ),
      );
}
