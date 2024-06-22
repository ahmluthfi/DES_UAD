import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constant_finals.dart';

class TotalGender extends StatelessWidget {
  final String icon;
  final String title;
  final String value;
  final Color color;
  const TotalGender({
    required this.icon,
    required this.title,
    required this.value,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: color.withOpacity(20 / 100),
                        borderRadius: BorderRadius.circular(100)),
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: SvgPicture.asset(icon),
                    ),
                  ),
                  kGap8,
                  Text(
                    title,
                    style: Styles.kPublicMediumBodyThree
                        .copyWith(color: kLightGrey500),
                  )
                ],
              ),
              kGap32,
              Text(
                value,
                style: Styles.kPublicSemiBoldHeadingThree.copyWith(
                  color: kGrey900,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
