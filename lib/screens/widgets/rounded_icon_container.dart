import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RoundedIconContainer extends StatelessWidget {
  const RoundedIconContainer({
    super.key,
    required this.side,
    required this.color,
    required this.iconColor,
    required this.asset,
    this.isSvg = true,
    this.border,
  });

  final double side;
  final Color color;
  final Color iconColor;
  final String asset;
  final bool isSvg;
  final Border? border;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: border,
        borderRadius: BorderRadius.circular(side),
        color: color,
      ),
      height: side,
      width: side,
      child: isSvg
          ? SvgPicture.asset(
              asset,
              colorFilter: ColorFilter.mode(
                iconColor,
                BlendMode.srcIn,
              ),
            )
          : Image.asset(asset),
    );
  }
}
