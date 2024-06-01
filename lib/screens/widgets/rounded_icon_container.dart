import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RoundedIconContainer extends StatelessWidget {
  const RoundedIconContainer({
    super.key,
    required this.side,
    required this.color,
    required this.iconColor,
    required this.asset,
  });

  final double side;
  final Color color;
  final Color iconColor;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(side),
        color: color,
      ),
      height: side,
      width: side,
      child: SvgPicture.asset(
        asset,
        colorFilter: ColorFilter.mode(
          iconColor,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
