// import 'package:des_uad/data/models/persebaran_berdasarkan.dart';
// import 'package:community_charts_flutter/community_charts_flutter.dart'
//     as charts;

// List<charts.Series<T, String>> getList<T extends Object>({
//   required String id,
//   required List<T> data,
//   required String Function(T, int?) domainFn,
//   required num Function(T, int?) measureFn,
//   required num Function(T, int?) secondMeasureFn,
//   required String Function(T, int?) labelAccessorFn,
// }) =>
//     [
//       charts.Series<T, String>(
//         id: id,
//         data: data,
//         domainFn: domainFn,
//         measureFn: measureFn,
//         labelAccessorFn: labelAccessorFn,
//         // (datum, index) =>
//         //     '${(datum as PersebaranFakultas).fakultas} ${datum.getPercent}% ● ${datum.total}',
//         insideLabelStyleAccessorFn: (datum, index) =>
//             const charts.TextStyleSpec(
//           color: charts.MaterialPalette.white,
//           fontWeight: 'bold',
//         ),
//         outsideLabelStyleAccessorFn: (datum, index) =>
//             const charts.TextStyleSpec(
//           color: charts.MaterialPalette.black,
//           fontWeight: 'bold',
//         ),
//       ),
//       charts.Series<T, String>(
//         id: id,
//         domainFn: domainFn,
//         measureFn: secondMeasureFn,
//         data: data,
//         labelAccessorFn: (datum, index) => '',
//         colorFn: (datum, index) =>
//             const charts.Color(r: 52, g: 144, b: 252, a: 32),
//       )
//     ];
