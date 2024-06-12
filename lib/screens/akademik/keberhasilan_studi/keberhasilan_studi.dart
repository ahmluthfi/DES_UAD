import 'package:flutter/material.dart';

import '../../../core/constant_finals.dart';
import '../../widgets/app_bar_sub_menu_akademik.dart';
import '../../widgets/base_container.dart';
import '../../widgets/body_sub_menu_akademik.dart';
import '../../widgets/big_card_title.dart';

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
              )
            ],
          ),
          kGap16,
          BaseContainer.styledBigCard(
            children: const [
              BigCardTitle(title: 'Tren Keberhasilan Studi'),
            ],
          ),
          kGap16,
          BaseContainer.styledBigCard(
            children: const [
              BigCardTitle(
                  title:
                      'Perbandingan Keberhasilan Studi Dengan Total Mahasiswa'),
            ],
          ),
        ],
      ),
    );
  }
}
