import 'package:des_uad/screens/widgets/big_card_title.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../core/constant_finals.dart';
import 'base_container.dart';
import 'pie_chart_legend.dart';

class CardAkreditasiProdi extends StatelessWidget {
  const CardAkreditasiProdi({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseContainer.styledBigCard(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const BigCardTitle(title: 'Akreditasi Prodi'),
            Text(
              'Lihat semua',
              style: Styles.kPublicRegularBodyThree.copyWith(color: kBlue),
            ),
          ],
        ),
        SizedBox(
          height: 300,
          child: Stack(
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
                      '68',
                      style: Styles.kPublicSemiBoldHeadingTwo
                          .copyWith(color: kGrey900),
                    ),
                    Text(
                      'Total Prodi',
                      style: Styles.kPublicRegularBodyOne
                          .copyWith(color: kLightGrey400),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        kGap24,
        const PieChartLegend(
          color: kGreen,
          title: 'Unggul',
          percent: '45%',
          value: '4',
        ),
        kGap12,
        const PieChartLegend(
          color: kBlue,
          title: 'Baik Sekali',
          percent: '30%',
          value: '8',
        ),
        kGap12,
        const PieChartLegend(
          color: kLightBlue,
          title: 'Baik',
          percent: '20%',
          value: '8',
        ),
        kGap12,
        const PieChartLegend(
          color: kYellow,
          title: 'Izin Operasional',
          percent: '15%',
          value: '1',
        ),
      ],
    );
  }

  //list data temporary buat nampilin chart di card prodi
  List<PieChartSectionData> getSectionsProdi() {
    return [
      PieChartSectionData(
        showTitle: false,
        color: kGreen,
        value: 45,
        radius: 15,
      ),
      PieChartSectionData(
        showTitle: false,
        color: kYellow,
        value: 5,
        radius: 15,
      ),
      PieChartSectionData(
        showTitle: false,
        color: kLightBlue,
        value: 20,
        radius: 15,
      ),
      PieChartSectionData(
        showTitle: false,
        color: kBlue,
        value: 30,
        radius: 15,
      ),
    ];
  }
}
