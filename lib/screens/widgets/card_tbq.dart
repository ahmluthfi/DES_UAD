import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../core/constant_finals.dart';
import 'base_container.dart';

class CardMahasiswaLulusTBQ extends StatelessWidget {
  const CardMahasiswaLulusTBQ({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Mahasiswa Lulus TBQ',
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
                      sections: getSectionsTBQ(),
                      centerSpaceRadius: 105,
                      sectionsSpace: 3,
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '29.800',
                          style: Styles.kPublicSemiBoldHeadingTwo
                              .copyWith(color: kGrey),
                        ),
                        Text(
                          'Mahasiswa',
                          style: Styles.kPublicRegularBodyOne
                              .copyWith(color: kLightGrey400),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const DeskripsiChartTBQ(
              color: kGreen,
              title: 'Lulus',
              percent: '50%',
              value: '14.900',
            ),
            const SizedBox(
              height: 12,
            ),
            const DeskripsiChartTBQ(
              color: kPink,
              title: 'Tidak Lulus',
              percent: '25%',
              value: '7.460',
            ),
            const SizedBox(
              height: 12,
            ),
            const DeskripsiChartTBQ(
              color: kBlue,
              title: 'Belum Lulus',
              percent: '25%',
              value: '7.460',
            ),
          ],
        ),
      ),
    );
  }

  //list temporary buat nampilin data di card jumlah lulusan TBQ
  List<PieChartSectionData> getSectionsTBQ() {
    return [
      PieChartSectionData(
        showTitle: false,
        color: kGreen,
        value: 25,
        radius: 15,
      ),
      PieChartSectionData(
        showTitle: false,
        color: kRed,
        value: 25,
        radius: 15,
      ),
      PieChartSectionData(
        showTitle: false,
        color: kBlue,
        value: 50,
        radius: 15,
      ),
    ];
  }
}

class DeskripsiChartTBQ extends StatelessWidget {
  final Color color;
  final String title;
  final String percent;
  final String value;
  const DeskripsiChartTBQ(
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
            const SizedBox(
              width: 8,
            ),
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
          ],
        ),
      ],
    );
  }
}
