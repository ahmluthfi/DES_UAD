import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../core/constant_finals.dart';

class ChartTotalRegistrasi extends StatefulWidget {
  const ChartTotalRegistrasi({super.key});

  @override
  State<ChartTotalRegistrasi> createState() => _ChartTotalRegistrasiState();
}

class _ChartTotalRegistrasiState extends State<ChartTotalRegistrasi> {
  List<int> showingTooltipOnSpots = [1, 3, 5];

  List<FlSpot> get allSpots => const [
        FlSpot(0, 1),
        FlSpot(1, 2),
        FlSpot(2, 1.5),
        FlSpot(3, 3),
        FlSpot(4, 3.5),
        FlSpot(5, 5),
        FlSpot(6, 8),
      ];

  Widget bottomTitleWidgets(double value, TitleMeta meta, double chartWidth) {
    final style = Styles.kPublicBoldBodyFour.copyWith(
      color: kWhite,
    );
    String time;
    switch (value.toInt()) {
      case 0:
        time = '00:00';
        break;
      case 1:
        time = '04:00';
        break;
      case 2:
        time = '08:00';
        break;
      case 3:
        time = '12:00';
        break;
      case 4:
        time = '16:00';
        break;
      case 5:
        time = '20:00';
        break;
      case 6:
        time = '23:59';
        break;
      default:
        return Container();
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(time, style: style),
    );
  }

  @override
  Widget build(BuildContext context) {
    final lineBarsData = [
      LineChartBarData(
        showingIndicators: showingTooltipOnSpots,
        spots: allSpots,
        isCurved: true,
        barWidth: 4,
        color: kWhite,
        belowBarData: BarAreaData(
          show: true,
          color: kWhite.withOpacity(20 / 100),
        ),
        dotData: const FlDotData(show: false),
      ),
    ];

    final tooltipsOnBar = lineBarsData[0];

    return AspectRatio(
      aspectRatio: 2.5,
      child: LayoutBuilder(builder: (context, constraints) {
        return LineChart(
          LineChartData(
            showingTooltipIndicators: showingTooltipOnSpots.map((index) {
              return ShowingTooltipIndicators(
                [
                  LineBarSpot(
                    tooltipsOnBar,
                    lineBarsData.indexOf(tooltipsOnBar),
                    tooltipsOnBar.spots[index],
                  ),
                ],
              );
            }).toList(),
            lineTouchData: LineTouchData(
              enabled: false,
              handleBuiltInTouches: false,
              touchCallback: (FlTouchEvent event, LineTouchResponse? response) {
                if (response == null || response.lineBarSpots == null) {
                  return;
                }
                if (event is FlTapUpEvent) {
                  final spotIndex = response.lineBarSpots!.first.spotIndex;
                  setState(() {
                    if (showingTooltipOnSpots.contains(spotIndex)) {
                      showingTooltipOnSpots.remove(spotIndex);
                    } else {
                      showingTooltipOnSpots.add(spotIndex);
                    }
                  });
                }
              },
              mouseCursorResolver:
                  (FlTouchEvent event, LineTouchResponse? response) {
                if (response == null || response.lineBarSpots == null) {
                  return SystemMouseCursors.basic;
                }
                return SystemMouseCursors.click;
              },
              getTouchedSpotIndicator:
                  (LineChartBarData barData, List<int> spotIndexes) {
                return spotIndexes.map((index) {
                  return TouchedSpotIndicatorData(
                    const FlLine(
                      color: Colors.white,
                    ),
                    FlDotData(
                      show: true,
                      getDotPainter: (spot, percent, barData, index) =>
                          FlDotCirclePainter(
                        radius: 8,
                        color: kBlue,
                        strokeWidth: 2,
                        strokeColor: kWhite,
                      ),
                    ),
                  );
                }).toList();
              },
              touchTooltipData: LineTouchTooltipData(
                getTooltipColor: (touchedSpot) => Colors.white,
                tooltipRoundedRadius: 8,
                getTooltipItems: (List<LineBarSpot> lineBarsSpot) {
                  return lineBarsSpot.map((lineBarSpot) {
                    return LineTooltipItem(
                      lineBarSpot.y.toStringAsFixed(0),
                      const TextStyle(
                        color: kBlue,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  }).toList();
                },
              ),
            ),
            lineBarsData: lineBarsData,
            minY: 0,
            titlesData: FlTitlesData(
              leftTitles: const AxisTitles(
                axisNameSize: 24,
                sideTitles: SideTitles(
                  showTitles: false,
                  reservedSize: 0,
                ),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: 1,
                  getTitlesWidget: (value, meta) {
                    return bottomTitleWidgets(
                      value,
                      meta,
                      constraints.maxWidth,
                    );
                  },
                  reservedSize: 30,
                ),
              ),
              rightTitles: const AxisTitles(
                sideTitles: SideTitles(
                  showTitles: false,
                  reservedSize: 0,
                ),
              ),
              topTitles: const AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 0,
                ),
              ),
            ),
            gridData: const FlGridData(show: false),
            borderData: FlBorderData(
              show: false,
            ),
          ),
        );
      }),
    );
  }
}
