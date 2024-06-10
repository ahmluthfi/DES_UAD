import 'package:flutter/material.dart';

import '../../../core/constant_finals.dart';
import '../../widgets/app_bar_sub_menu_akademik.dart';
import '../../widgets/base_container.dart';
import '../../widgets/body_sub_menu_akademik.dart';
import '../../widgets/card_title_sub_menu_akademik.dart';

class AIKPage extends StatelessWidget {
  const AIKPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: BodySubMenuAkademik(
        appBar: const AppBarSubMenuAkademik(
          title: 'AIK',
        ),
        children: [
          BaseContainer.styledSubMenuAkademik(
            children: [
              const CardTitleSubMenuAkademik(title: 'Mahasiswa Lulus TBQ'),
              Text(
                'TA 2023/2024',
                style: Styles.kPublicRegularBodyThree.copyWith(color: kGrey400),
              ),
            ],
          ),
          kGap16,
          BaseContainer.styledSubMenuAkademik(
            children: const [
              CardTitleSubMenuAkademik(title: 'Baca Quran'),
            ],
          ),
          kGap16,
          BaseContainer.styledSubMenuAkademik(
            children: [
              const CardTitleSubMenuAkademik(
                  title: 'Mahasiswa Lulus Baitul Arqam'),
              Text(
                'TA 2023/2024',
                style: Styles.kPublicRegularBodyThree.copyWith(color: kGrey400),
              ),
            ],
          ),
          kGap16,
          BaseContainer.styledSubMenuAkademik(
            children: const [
              CardTitleSubMenuAkademik(title: 'Baitul Arqam'),
            ],
          ),
        ],
      ),
    );
  }
}
