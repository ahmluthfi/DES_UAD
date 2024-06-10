// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:des_uad/core/constant_finals.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PrestasiChart extends StatefulWidget {
  @override
  _PrestasiChartState createState() => _PrestasiChartState();
}

class _PrestasiChartState extends State<PrestasiChart> {
  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
          alignment: BarChartAlignment.spaceAround,
          maxY: 10000,
          barTouchData: BarTouchData(
            enabled: true,
            touchTooltipData: BarTouchTooltipData(
              // direction: TooltipDirection.top,

              tooltipRoundedRadius: 8,
              maxContentWidth: 180,
              getTooltipColor: (_) => kWhite,
              getTooltipItem: (group, groupIndex, rod, rodIndex) {
                String year;
                switch (group.x.toInt()) {
                  case 0:
                    year = '2021';
                    break;
                  case 1:
                    year = '2022';
                    break;
                  case 2:
                    year = '2023';
                    break;
                  case 3:
                    year = '2024';
                    break;
                  default:
                    throw Error();
                }
                return BarTooltipItem(
                  '$year\n',
                  Styles.kPublicRegularBodyThree.copyWith(color: kLightGrey800),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Internasional: Juara 3\n',
                        style: Styles.kPublicRegularBodyThree
                            .copyWith(color: kLightGrey500)),
                    TextSpan(
                        text: 'Nasional: Juara 2\n',
                        style: Styles.kPublicRegularBodyThree
                            .copyWith(color: kLightGrey500)),
                    TextSpan(
                        text: 'Lokal: Juara 1\n',
                        style: Styles.kPublicRegularBodyThree
                            .copyWith(color: kLightGrey500)),
                  ],
                );
              },
            ),
          ),
          titlesData: FlTitlesData(
            show: true,
            rightTitles: const AxisTitles(
              sideTitles: SideTitles(
                showTitles: false,
              ),
            ),
            topTitles: const AxisTitles(
              sideTitles: SideTitles(
                showTitles: false,
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: getTitles,
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 40,
                interval: 2500,
                getTitlesWidget: (value, meta) {
                  return Text(formatLargeNumber(value.toInt()),
                      style: Styles.kPublicRegularBodyThree
                          .copyWith(color: kLightGrey800));
                },
              ),
            ),
          ),
          borderData: FlBorderData(
            show: false,
          ),
          barGroups: [
            makeGroupData(0, 6500, 2700),
            makeGroupData(1, 7800, 4900),
            makeGroupData(2, 9200, 3100),
            makeGroupData(3, 3200, 1200),
          ],
          gridData: const FlGridData(show: false)),
    );
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(
      barsSpace: 4,
      x: x,
      barRods: [
        BarChartRodData(
          borderRadius: BorderRadius.zero,
          toY: y1,
          color: kLightBlue,
          width: 25,
        ),
        BarChartRodData(
          borderRadius: BorderRadius.zero,
          toY: y2,
          color: kGreen,
          width: 25,
        ),
      ],
    );
  }

  Widget getTitles(double value, TitleMeta meta) {
    final style = Styles.kPublicRegularBodyThree.copyWith(color: klightGrey450);
    String text;
    switch (value.toInt()) {
      case 0:
        text = '2021';
        break;
      case 1:
        text = '2022';
        break;
      case 2:
        text = '2023';
        break;
      case 3:
        text = '2024';
        break;
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text, style: style),
    );
  }

  String formatLargeNumber(int number) {
    if (number >= 1000) {
      return '${(number / 1000).toStringAsFixed(0)}K';
    }
    return number.toString();
  }
}
