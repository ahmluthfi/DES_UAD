import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../core/constant_finals.dart';

class PieChartWithDetails extends StatelessWidget {
  const PieChartWithDetails({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PieChart(
          PieChartData(
            sections: getSectionsProdi(),
            centerSpaceRadius: 105,
            sectionsSpace: 3,
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$value',
                style: Styles.kPublicSemiBoldHeadingTwo.copyWith(color: kGrey),
              ),
              Text(
                title,
                style:
                    Styles.kPublicRegularBodyOne.copyWith(color: kLightGrey400),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// Prodi
List<PieChartSectionData> getSectionsProdi() {
  const values = [14.0, 25.0, 24.0, 5.0];
  const colors = [kGreen, kBlue, kLightSkyBlue, kYellow];
  return List.generate(
      values.length,
      (index) => PieChartSectionData(
          showTitle: false,
          color: colors[index],
          value: values[index],
          radius: 15));
}
