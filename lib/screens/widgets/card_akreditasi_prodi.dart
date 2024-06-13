import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/constant_finals.dart';
import 'base_container.dart';

class CardAkreditasiProdi extends StatelessWidget {
  const CardAkreditasiProdi({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      padding: const EdgeInsets.symmetric(
        vertical: 14,
        horizontal: 16,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Akreditasi Prodi',
                style: Styles.kPublicSemiBoldBodyOne.copyWith(
                  color: kGrey,
                ),
              ),
              Text(
                'Lihat semua',
                style: Styles.kPublicRegularBodyThree.copyWith(
                  color: kBlue,
                ),
              ),
            ],
          ),
          Container(
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
                            .copyWith(color: kGrey),
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
          const DeskripsiChartProdi(
            color: kGreen,
            title: 'Unggul',
            percent: '45%',
            value: '4',
          ),
          kGap12,
          const DeskripsiChartProdi(
            color: kBlue,
            title: 'Baik Sekali',
            percent: '30%',
            value: '8',
          ),
          kGap12,
          const DeskripsiChartProdi(
            color: kLightBlue,
            title: 'Baik',
            percent: '20%',
            value: '8',
          ),
          kGap12,
          const DeskripsiChartProdi(
            color: kYellow,
            title: 'Izin Operasional',
            percent: '15%',
            value: '1',
          ),
        ],
      ),
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

class DeskripsiChartProdi extends StatelessWidget {
  final Color color;
  final String title;
  final String percent;
  final String value;
  const DeskripsiChartProdi(
      {super.key,
      required this.color,
      required this.title,
      required this.percent,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            kGap8,
            Text(
              title,
              style:
                  Styles.kPublicRegularBodyTwo.copyWith(color: kLightGrey800),
            ),
            const Spacer(),
            Text(
              percent,
              style:
                  Styles.kPublicRegularBodyTwo.copyWith(color: kLightGrey500),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              width: 4,
              height: 4,
              decoration: BoxDecoration(
                color: kLightGrey100,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            Text(
              value,
              style: Styles.kPublicSemiBoldBodyTwo.copyWith(color: kGrey),
            ),
            kGap16,
            SvgPicture.asset(
              icRightArrow,
              width: 24,
            ),
          ],
        ),
      ],
    );
  }
}
