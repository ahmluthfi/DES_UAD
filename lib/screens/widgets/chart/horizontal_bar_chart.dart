import 'package:community_charts_flutter/community_charts_flutter.dart'
    as charts;
import 'package:flutter/material.dart';

import '../../../data/data_chart.dart';

class HorizontalBarLabelChart extends StatelessWidget {
  final List<charts.Series<dynamic, String>> seriesList;
  final bool animate;

  const HorizontalBarLabelChart(this.seriesList,
      {super.key, this.animate = true});

  /// Creates a [BarChart] with sample data and no transition.
  factory HorizontalBarLabelChart.withSampleData() {
    return HorizontalBarLabelChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  // [BarLabelDecorator] will automatically position the label
  // inside the bar if the label will fit. If the label will not fit and the
  // area outside of the bar is larger than the bar, it will draw outside of the
  // bar. Labels can always display inside or outside using [LabelPosition].
  //
  // Text style for inside / outside can be controlled independently by setting
  // [insideLabelStyleSpec] and [outsideLabelStyleSpec].
  @override
  Widget build(BuildContext context) {
    return charts.BarChart(
      seriesList,
      animate: animate,
      barGroupingType: charts.BarGroupingType.stacked,
      vertical: false,

      // Set a bar label decorator.
      // Example configuring different styles for inside/outside:
      //       barRendererDecorator: new charts.BarLabelDecorator(
      //          insideLabelStyleSpec: new charts.TextStyleSpec(...),
      //          outsideLabelStyleSpec: new charts.TextStyleSpec(...)),
      barRendererDecorator: charts.BarLabelDecorator<String>(),
      // Hide domain axis.
      domainAxis:
          const charts.OrdinalAxisSpec(renderSpec: charts.NoneRenderSpec()),
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final data = [
      OrdinalSales('2014', 5),
      OrdinalSales('2015', 25),
      OrdinalSales('2016', 100),
      OrdinalSales('2017', 75),
    ];

    return [
      charts.Series<OrdinalSales, String>(
          id: 'Sales',
          domainFn: (OrdinalSales sales, _) => sales.year,
          measureFn: (OrdinalSales sales, _) => sales.sales,
          data: data,
          // Set a label accessor to control the text of the bar label.
          labelAccessorFn: (OrdinalSales sales, _) =>
              '${sales.year}: \$${sales.sales.toString()}')
    ];
  }
}

final akreditasis = [
  AkreditasiInternasional('Informatika', 50, '37'),
  AkreditasiInternasional('Teknik Elektro', 20, '33'),
  AkreditasiInternasional('Teknik Industri', 15, '33'),
  AkreditasiInternasional('Teknik Kimia', 10, '33'),
  AkreditasiInternasional('Teknik Pangan', 5, '33'),
];

final dataAkreditasi = [
  charts.Series<AkreditasiInternasional, String>(
    id: 'Akreditasi',
    domainFn: (datum, index) => datum.prodi,
    measureFn: (datum, index) => datum.percent,
    data: akreditasis,
    // labelAccessorFn: (datum, index) => '${datum.percent}% ● ${datum.value}',
    labelAccessorFn: (datum, index) =>
        '${datum.prodi} ${datum.percent}% ● ${datum.value}',
    insideLabelStyleAccessorFn: (datum, index) => const charts.TextStyleSpec(
      color: charts.MaterialPalette.white,
      fontWeight: 'bold',
    ),
    outsideLabelStyleAccessorFn: (datum, index) => const charts.TextStyleSpec(
      color: charts.MaterialPalette.black,
      fontWeight: 'bold',
    ),
  ),
  charts.Series<AkreditasiInternasional, String>(
    id: 'Akreditasi',
    domainFn: (datum, index) => datum.prodi,
    measureFn: (datum, index) => 75 - datum.percent,
    data: akreditasis,
    labelAccessorFn: (datum, index) => '',
  )
];
