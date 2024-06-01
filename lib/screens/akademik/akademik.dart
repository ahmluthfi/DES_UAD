import 'package:flutter/material.dart';

import '../../core/constant_finals.dart';
import '../widgets/card_student_body.dart';
import '../widgets/item_akademik_menu.dart';

class AkademikPage extends StatelessWidget {
  const AkademikPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      appBar: AppBar(
        backgroundColor: kWhite,
        title: Text('Akademik', style: Styles.kPublicSemiBoldHeadingThree),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CardStudentBody(),
              const SizedBox(
                height: 24,
              ),
              Text(
                'Menu Akademik',
                style: Styles.kPublicSemiBoldHeadingFour,
              ),
              const SizedBox(
                height: 12,
              ),
              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 100 / 120,
                physics: const ScrollPhysics(),
                children: const [
                  ItemAkademikMenu(
                    asset: icProfileAdd,
                    iconColor: Color(0xFF3490FC),
                    side: 40,
                    title: 'PMB',
                    route: pmbRoute,
                  ),
                  ItemAkademikMenu(
                    asset: icFrame,
                    iconColor: Color(0xFF00A991),
                    side: 40,
                    title: 'Mahasiswa Lokal',
                    route: pmbRoute,
                  ),
                  ItemAkademikMenu(
                    asset: icUserOctagon,
                    iconColor: Color(0xFFFFB444),
                    side: 40,
                    title: 'Mahasiswa Asing',
                    route: pmbRoute,
                  ),
                  ItemAkademikMenu(
                    asset: icTeacher,
                    iconColor: Color(0xFF3490FC),
                    side: 40,
                    title: 'Kelulusan',
                    route: pmbRoute,
                  ),
                  ItemAkademikMenu(
                    asset: icAward,
                    iconColor: Color(0xFFFFB444),
                    side: 40,
                    title: 'Keberhasilan Studi',
                    route: pmbRoute,
                  ),
                  ItemAkademikMenu(
                    asset: icBook,
                    iconColor: Color(0xFF00A991),
                    side: 40,
                    title: 'Perpustakaan',
                    route: pmbRoute,
                  ),
                  ItemAkademikMenu(
                    asset: icSearchStatus,
                    iconColor: Color(0xFF3490FC),
                    side: 40,
                    title: 'Publikasi',
                    route: pmbRoute,
                  ),
                  ItemAkademikMenu(
                    asset: icClipboard,
                    iconColor: Color(0xFF00A991),
                    side: 40,
                    title: 'Jurnal UAD',
                    route: pmbRoute,
                  ),
                  ItemAkademikMenu(
                    asset: icNote,
                    iconColor: Color(0xFFFFB444),
                    side: 40,
                    title: 'AIK',
                    route: pmbRoute,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
