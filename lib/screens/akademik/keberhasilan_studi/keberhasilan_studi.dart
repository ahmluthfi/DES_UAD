import 'package:flutter/material.dart';

import '../../../core/constant_finals.dart';
import '../../widgets/base_container.dart';
import '../../widgets/big_card_title.dart';
import '../../widgets/chart/chart_legend.dart';
import '../../widgets/chart/combo_chart.dart';
import '../../widgets/chart_prestasi.dart';
import '../../widgets/chart/pie_chart_with_details.dart';
import '../widgets/app_bar_sub_menu_akademik.dart';
import '../widgets/body_sub_menu_akademik.dart';
import 'widgets/item_studi_mahasiswa.dart';

class KeberhasilanStudiPage extends StatelessWidget {
  const KeberhasilanStudiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodySubMenuAkademik(
        appBar: const AppBarSubMenuAkademik(
          title: 'Keberhasilan Studi',
        ),
        height: 1425,
        children: [
          BaseContainer.styledBigCard(
            children: [
              const BigCardTitle(
                title: 'Studi Mahasiswa',
              ),
              Text(
                'TA 2023/2024',
                style: Styles.kPublicRegularBodyThree.copyWith(color: kGrey400),
              ),
              SizedBox(
                height: 300,
                child: PieChartWithDetails.succeededStudy(
                  title: 'Total Mahasiswa',
                  value: 29800,
                ),
              ),
              const Row(
                children: [
                  ItemStudiMahasiswa(
                    title: 'Berhasil',
                    value: '3.872',
                    color: kBlue,
                  ),
                  kGap32,
                  ItemStudiMahasiswa(
                    title: 'Drop Out',
                    value: '1.696',
                    color: kYellow,
                  ),
                ],
              ),
            ],
          ),
          kGap16,
          BaseContainer.styledBigCard(
            children: const [
              BigCardTitle(
                title: 'Tren Keberhasilan Studi',
              ),
              kGap24,
              SizedBox(
                height: 300,
                child: ComboChart(
                  datas: [],
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
                  ChartLegend(
                    color: kBlue,
                    title: 'Total Mahasiswa',
                  ),
                  ChartLegend(
                    color: kGreen,
                    title: 'Mahasiswa Berhasil',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
