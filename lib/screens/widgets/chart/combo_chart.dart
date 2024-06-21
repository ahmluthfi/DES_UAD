import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

import '../../../core/constant_finals.dart';

class ComboChart extends StatelessWidget {
  const ComboChart({super.key});

  @override
  Widget build(BuildContext context) {
    return DChartComboO(
      groupList: ordinalGroup,
      fillColor: (group, ordinalData, index) {
        switch (group.chartType) {
          case ChartType.scatterPlot:
            return kGrey800;
          case ChartType.line:
            return kPink;
          default:
            return Colors.blue;
        }
      },
    );
  }
}

final ordinalData = [
  OrdinalData(domain: '2021', measure: 50.3),
  OrdinalData(domain: '2022', measure: 88.2),
  OrdinalData(domain: '2023', measure: 70.2),
  OrdinalData(domain: '2024', measure: 44.3),
];

final ordinalGroup = [
  OrdinalGroup(
    id: '1',
    chartType: ChartType.bar,
    data: ordinalData,
  ),
  OrdinalGroup(
    id: '2',
    chartType: ChartType.line,
    data: ordinalData,
  ),
  OrdinalGroup(
    id: '3',
    chartType: ChartType.scatterPlot,
    data: ordinalData,
  ),
];
