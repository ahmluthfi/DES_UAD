import 'package:des_uad/cubit/akademik_cubit.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/constant_finals.dart';

// const showingTooltipOnSpots = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];

class Params {
  final List<FlSpot> spots;
  final List<Color> spotColor;

  Params(this.spots, this.spotColor);
}

class LineChartCustomized extends StatefulWidget {
  const LineChartCustomized({super.key});

  @override
  State<LineChartCustomized> createState() => LineChartCustomizedState();
}

class LineChartCustomizedState extends State<LineChartCustomized> {
  @override
  Widget build(BuildContext context) {
    const yCoordinate = [
      .5,
      .51,
      .52,
      .53,
      .54,
      .55,
      .5,
      .52,
      .53,
      .57,
      .6,
      .4,
      .3
    ];
    final firstSpot = List.generate(
        13, (index) => FlSpot(index.toDouble(), yCoordinate[index]));
    final secondSpot = List.generate(
        13, (index) => FlSpot(index.toDouble(), yCoordinate[index] + 1));
    final thirdSpot = List.generate(
        13, (index) => FlSpot(index.toDouble(), yCoordinate[index] + 2));
    final fourthSpot = List.generate(
        13, (index) => FlSpot(index.toDouble(), yCoordinate[index] + 3));
    const firstSpotColor = [kLightPurple, kLightPurple];
    const secondSpotColor = [kPurple, kPurple];
    const thirdSpotColor = [kBlue, kBlue];
    const fourthSpotColor = [kGreen, kGreen];
    final List<Params> datas = [
      Params(firstSpot, firstSpotColor),
      Params(secondSpot, secondSpotColor),
      Params(thirdSpot, thirdSpotColor),
      Params(fourthSpot, fourthSpotColor),
    ];
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      height: 220,
      child: BlocBuilder<AkademikCubit, AkademikState>(
        builder: (context, state) {
          return LineChart(mainData(context, datas));
        },
      ),
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    final style = Styles.kPublicRegularBodyThree.copyWith(color: klightGrey450);
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = Text('Jan', style: style);
        break;
      case 3:
        text = Text('Mar', style: style);
        break;
      case 6:
        text = Text('Jun', style: style);
        break;
      case 9:
        text = Text('Sep', style: style);
        break;
      case 12:
        text = Text('Des', style: style);
        break;
      default:
        text = Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    final style = Styles.kPublicRegularBodyThree.copyWith(color: klightGrey450);

    String text;
    switch (value.toInt()) {
      case 0:
        text = '0';
        break;
      case 1:
        text = '10k';
        break;
      case 2:
        text = '20k';
        break;
      case 3:
        text = '30k';
      case 4:
        text = '40k';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  LineChartData mainData(BuildContext context, final List<Params> params) {
    return LineChartData(
      lineTouchData: const LineTouchData(
        enabled: false,
        handleBuiltInTouches: false,
        // getTouchedSpotIndicator: (barData, spotIndexes) => spotIndexes
        //     .map(
        //       (e) => TouchedSpotIndicatorData(
        //         const FlLine(color: kTransparent),
        //         FlDotData(
        //           show: true,
        //           getDotPainter: (p0, p1, p2, p3) => FlDotCirclePainter(
        //             radius: 4,
        //             color: kLightPurple,
        //             strokeWidth: 2,
        //             strokeColor: kLightPurple,
        //           ),
        //         ),
        //       ),
        //     )
        //     .toList(),
      ),
      gridData: FlGridData(
        getDrawingHorizontalLine: (value) => const FlLine(
          color: kGrey100,
          strokeWidth: 1,
        ),
        getDrawingVerticalLine: (value) => const FlLine(strokeWidth: 0),
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: const Border.symmetric(horizontal: BorderSide(color: kGrey100)),
      ),
      minX: 0,
      maxX: 12,
      minY: 0,
      maxY: 4,
      lineBarsData: [
        lineChartBarData(context: context, params: params[0], index: 0),
        lineChartBarData(context: context, params: params[1], index: 1),
        lineChartBarData(context: context, params: params[2], index: 2),
        lineChartBarData(context: context, params: params[3], index: 3),
      ],
    );
  }

  LineChartBarData lineChartBarData({
    required final BuildContext context,
    required final Params params,
    required final int index,
  }) {
    final akademikCubit = context.read<AkademikCubit>();

    return LineChartBarData(
      spots: akademikCubit.isChecked[index] ? params.spots : [],
      isCurved: true,
      gradient: LinearGradient(colors: params.spotColor),
      barWidth: 3,
      isStrokeCapRound: true,
      dotData: const FlDotData(show: true),
      // showingIndicators: showingTooltipOnSpots,
      belowBarData: BarAreaData(
        show: false,
        gradient: LinearGradient(
          colors:
              params.spotColor.map((color) => color.withOpacity(0.3)).toList(),
        ),
      ),
    );
  }
}
