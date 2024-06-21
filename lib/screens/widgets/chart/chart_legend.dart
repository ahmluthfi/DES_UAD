import 'package:des_uad/core/constant_finals.dart';
import 'package:flutter/material.dart';

class ChartLegend extends StatelessWidget {
  const ChartLegend({
    super.key,
    required this.color,
    required this.title,
  });

  final Color color;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            kGap8,
            Text(
              title,
              style:
                  Styles.kPublicRegularBodyTwo.copyWith(color: kLightGrey800),
            ),
          ],
        ),
      ],
    );
  }
}
