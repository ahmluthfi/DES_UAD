import 'package:flutter/material.dart';

import '../../../core/constant_finals.dart';
import '../../widgets/app_bar_sub_menu_akademik.dart';
import '../../widgets/base_container.dart';
import '../../widgets/card_title_pmb.dart';
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
      body: SingleChildScrollView(
        child: SizedBox(
          height: 1000,
          child: Stack(
            children: [
              const AppBarSubMenuAkademik(
                title: 'PMB',
              ),
              Positioned(
                top: 120,
                left: 0,
                right: 0,
                bottom: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    children: [
                      const CardTotalRegistration(),
                      const SizedBox(
                        height: 16,
                      ),
                      BaseContainer.styledPMB(
                        children: const [
                          CardTitlePMB(title: 'Data PMB 2024'),
                          SizedBox(
                            height: 20,
                          ),
                          ItemDataPMB(
                            asset: icPeople,
                            iconColor: Color(0xFF3AA0DF),
                            title: 'Total Pendaftar',
                            value: '1254',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ItemDataPMB(
                            asset: icProfileTick,
                            iconColor: Color(0xFF18C07A),
                            title: 'Diterima',
                            value: '817',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ItemDataPMB(
                            asset: icTaskSquare,
                            iconColor: Color(0xFF5CB1C5),
                            title: 'Registrasi',
                            value: '317',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ItemDataPMB(
                            asset: icFrame,
                            iconColor: Color(0xFF9292EC),
                            title: 'Pendaftar Reguler',
                            value: '317',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ItemDataPMB(
                            asset: icNoteTwo,
                            iconColor: Color(0xFFFBA458),
                            title: 'Pendaftar Non Reguler',
                            value: '0',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      BaseContainer.styledPMB(
                        children: const [
                          CardTitlePMB(title: 'Tren Mahasiswa Baru'),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      BaseContainer.styledPMB(
                        children: const [
                          CardTitlePMB(title: 'PMB Berdasarkan Persebaran'),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      BaseContainer.styledPMB(
                        children: const [
                          CardTitlePMB(title: 'PMB Jalur Reguler'),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      BaseContainer.styledPMB(
                        children: const [
                          CardTitlePMB(title: 'PMB Jalur Non Reguler'),
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
