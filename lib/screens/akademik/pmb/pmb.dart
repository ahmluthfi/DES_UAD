import 'package:flutter/material.dart';

import '../../../core/constant_finals.dart';
import '../../widgets/app_bar_sub_menu_akademik.dart';
import '../../widgets/base_container.dart';
import '../../widgets/body_sub_menu_akademik.dart';
import '../../widgets/big_card_title.dart';
import '../../widgets/card_total_registration.dart';
import '../../widgets/item_data_pmb.dart';

class PenerimaanMahasiswaBaruPage extends StatelessWidget {
  const PenerimaanMahasiswaBaruPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: BodySubMenuAkademik(
        appBar: const AppBarSubMenuAkademik(
          title: 'PMB',
        ),
        children: [
          const CardTotalRegistration(),
          kGap16,
          BaseContainer.styledBigCard(
            children: const [
              BigCardTitle(title: 'Data PMB 2024'),
              kGap20,
              ItemDataPMB(
                asset: icPeople,
                iconColor: Color(0xFF3AA0DF),
                title: 'Total Pendaftar',
                value: '1254',
              ),
              kGap20,
              ItemDataPMB(
                asset: icProfileTick,
                iconColor: Color(0xFF18C07A),
                title: 'Diterima',
                value: '817',
              ),
              kGap20,
              ItemDataPMB(
                asset: icTaskSquare,
                iconColor: Color(0xFF5CB1C5),
                title: 'Registrasi',
                value: '317',
              ),
              kGap20,
              ItemDataPMB(
                asset: icFrame,
                iconColor: Color(0xFF9292EC),
                title: 'Pendaftar Reguler',
                value: '317',
              ),
              kGap20,
              ItemDataPMB(
                asset: icNoteTwo,
                iconColor: Color(0xFFFBA458),
                title: 'Pendaftar Non Reguler',
                value: '0',
              ),
            ],
          ),
          kGap16,
          BaseContainer.styledBigCard(
            children: const [
              BigCardTitle(title: 'Tren Mahasiswa Baru'),
            ],
          ),
          kGap16,
          BaseContainer.styledBigCard(
            children: const [
              BigCardTitle(title: 'PMB Berdasarkan Persebaran'),
              kGap24,
            ],
          ),
          kGap16,
          BaseContainer.styledBigCard(
            children: const [
              BigCardTitle(title: 'PMB Jalur Reguler'),
            ],
          ),
          kGap16,
          BaseContainer.styledBigCard(
            children: const [
              BigCardTitle(title: 'PMB Jalur Non Reguler'),
            ],
          ),
          kGap24,
        ],
      ),
    );
  }
}
