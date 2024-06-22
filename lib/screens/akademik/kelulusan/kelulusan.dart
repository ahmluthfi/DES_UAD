import 'package:flutter/material.dart';

import '../../../core/constant_finals.dart';
import '../../widgets/base_container.dart';
import '../../widgets/big_card_title.dart';
import '../../widgets/chart/chart_legend.dart';
import '../../widgets/chart/combo_chart.dart';
import '../../widgets/chart_prestasi.dart';
import '../../widgets/rounded_icon_container.dart';
import '../widgets/app_bar_sub_menu_akademik.dart';
import '../widgets/body_sub_menu_akademik.dart';

class KelulusanPage extends StatelessWidget {
  const KelulusanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: BodySubMenuAkademik(
        appBar: const AppBarSubMenuAkademik(
          title: 'Kelulusan Mahasiswa',
        ),
        height: 1100,
        children: [
          BaseContainer.styledBigCard(
            isRow: true,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Lulus Tepat Waktu 2024',
                    style: Styles.kPublicRegularBodyTwo,
                  ),
                  Text(
                    '320',
                    style: Styles.kPublicSemiBoldHeadingTwo,
                  ),
                ],
              ),
              const RoundedIconContainer(
                  side: 64,
                  color: kLightGrey100,
                  iconColor: kGrey100,
                  asset: icTeacherFill),
            ],
          ),
          kGap12,
          // Combo Chart Kelulusan Tepat Waktu
          BaseContainer.styledBigCard(
            children: const [
              BigCardTitle(
                title: 'Tren Kelulusan Tepat Waktu',
              ),
              kGap24,
              SizedBox(
                height: 300,
                child: ComboChart(),
              ),
            ],
          ),
          kGap16,
          // Bar Chart
          BaseContainer.styledBigCard(
            children: [
              const BigCardTitle(
                title: 'Perbandingan Kelulusan Dengan Total Mahasiswa',
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
                    title: 'Mahasiswa Lulus',
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
