import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

import '../../../core/constant_finals.dart';
import '../../widgets/app_bar_sub_menu_akademik.dart';
import '../../widgets/base_container.dart';
import '../../widgets/big_card_title.dart';
import '../../widgets/body_sub_menu_akademik.dart';
import '../../widgets/chart_legend.dart';
import '../../widgets/chart_prestasi.dart';
import '../../widgets/combo_chart.dart';
import '../../widgets/pie_chart_with_details.dart';

class KeberhasilanStudiPage extends StatelessWidget {
  const KeberhasilanStudiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: BodySubMenuAkademik(
        appBar: const AppBarSubMenuAkademik(
          title: 'Keberhasilan Studi',
        ),
        children: [
          BaseContainer.styledBigCard(
            children: [
              const BigCardTitle(title: 'Studi Mahasiswa'),
              Text(
                'TA 2023/2024',
                style: Styles.kPublicRegularBodyThree.copyWith(color: kGrey400),
              ),
              const SizedBox(
                height: 300,
                child:
                    PieChartWithDetails(title: 'Total Mahasiswa', value: 29800),
              ),
              const Row(
                children: [
                  ItemStudiMahasiswa(
                      title: 'Berhasil', value: '3.872', color: kBlue),
                  kGap32,
                  ItemStudiMahasiswa(
                      title: 'Drop Out', value: '1.696', color: kYellow),
                ],
              ),
            ],
          ),
          kGap16,
          BaseContainer.styledBigCard(
            children: [
              const BigCardTitle(title: 'Tren Keberhasilan Studi'),
              kGap24,
              SizedBox(
                height: 240,
                child: DChartComboO(
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
                ),
              ),
            ],
          ),
          kGap16,
          BaseContainer.styledBigCard(
            children: [
              const BigCardTitle(
                title: 'Perbandingan Keberhasilan Studi Dengan Total Mahasiswa',
              ),
              kGap24,
              SizedBox(
                height: 300,
                child: PrestasiChart(),
              ),
              kGap24,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ChartLegend(color: kBlue, title: 'Total Mahasiswa'),
                  ChartLegend(color: kGreen, title: 'Mahasiswa Berhasil'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ItemStudiMahasiswa extends StatelessWidget {
  const ItemStudiMahasiswa({
    super.key,
    required this.title,
    required this.value,
    required this.color,
  });

  final String title;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Styles.kPublicRegularBodyTwo.copyWith(color: kGrey400),
        ),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: color,
              ),
              width: 10,
              height: 10,
            ),
            kGap8,
            Text(
              value,
              style: Styles.kPublicMediumHeadingFour.copyWith(color: kGrey800),
            ),
          ],
        ),
      ],
    );
  }
}
