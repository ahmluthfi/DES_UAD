import 'package:des_uad/screens/widgets/chart/chart_legend.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constant_finals.dart';

class PieChartLegend extends ChartLegend {
  // final Color color;
  // final String title;
  final String percent;
  final String value;
  const PieChartLegend({
    super.key,
    // required this.color,
    // required this.title,
    required super.color,
    required super.title,
    required this.percent,
    required this.value,
  });

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
        SizedBox(
          width: 120,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  percent,
                  textAlign: TextAlign.end,
                  style: Styles.kPublicRegularBodyTwo
                      .copyWith(color: kLightGrey500),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                width: 4,
                height: 4,
                decoration: BoxDecoration(
                  color: kLightGrey100,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              Expanded(
                child: Text(
                  value,
                  style:
                      Styles.kPublicSemiBoldBodyTwo.copyWith(color: kGrey900),
                ),
              ),
              SvgPicture.asset(
                icRightArrow,
                width: 24,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
