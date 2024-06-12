import 'package:d_chart/commons/data_model.dart';
import 'package:d_chart/commons/enums.dart';

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
