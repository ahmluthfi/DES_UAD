import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../core/constant_finals.dart';

class PieChartWithDetails extends StatelessWidget {
  const PieChartWithDetails({
    super.key,
    required this.title,
    required this.value,
    required this.sections,
  });

  final String title;
  final int value;
  final List<PieChartSectionData> sections;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PieChart(
          PieChartData(
            sections: sections,
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
                style:
                    Styles.kPublicSemiBoldHeadingTwo.copyWith(color: kGrey900),
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

  factory PieChartWithDetails.prodi({
    required final String title,
    required final int value,
  }) =>
      PieChartWithDetails(
        title: title,
        value: value,
        sections: getSectionsProdi(),
      );

  factory PieChartWithDetails.succeededStudy({
    required final String title,
    required final int value,
  }) =>
      PieChartWithDetails(
        title: title,
        value: value,
        sections: getSucceededSections(),
      );
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
      radius: 15,
    ),
  );
}

// Keberhasilan Studi
List<PieChartSectionData> getSucceededSections() {
  const values = [2.0, 1.0];
  const colors = [kBlue, kYellow];
  return List.generate(
    values.length,
    (index) => PieChartSectionData(
      showTitle: false,
      color: colors[index],
      value: values[index],
      radius: 15,
    ),
  );
}
