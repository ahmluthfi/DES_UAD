import 'package:des_uad/core/constant_finals.dart';
import 'package:des_uad/screens/widgets/app_bar_sub_menu_akademik.dart';
import 'package:des_uad/screens/widgets/base_container.dart';
import 'package:des_uad/screens/widgets/body_sub_menu_akademik.dart';
import 'package:des_uad/screens/widgets/big_card_title.dart';
import 'package:des_uad/screens/widgets/rounded_icon_container.dart';
import 'package:flutter/material.dart';

class MahasiswaLokalPage extends StatelessWidget {
  const MahasiswaLokalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: BodySubMenuAkademik(
        appBar: const AppBarSubMenuAkademik(
          title: 'Mahasiswa Lokal',
        ),
        children: [
          BaseContainer.styledBigCard(
            isRow: true,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Total Mahasiswa Lokal',
                      style: Styles.kPublicRegularBodyTwo),
                  Text('10.524', style: Styles.kPublicSemiBoldHeadingTwo),
                ],
              ),
              const RoundedIconContainer(
                  side: 64,
                  color: kLightGrey100,
                  iconColor: kGrey100,
                  asset: icFrame),
            ],
          ),
          kGap16,
          BaseContainer.styledBigCard(
            children: const [
              BigCardTitle(title: 'Tren Mahasiswa Lokal'),
            ],
          ),
          kGap16,
          BaseContainer.styledBigCard(
            children: const [
              BigCardTitle(title: 'Persebaran PMB'),
            ],
          ),
        ],
      ),
    );
  }
}
