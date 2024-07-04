import 'package:flutter/material.dart';

import '../../core/constant_finals.dart';
import '../widgets/card_akreditasi_prodi.dart';
import '../widgets/card_baitul_arqom.dart';
import '../widgets/card_prestasi_mahasiswa.dart';
import '../widgets/card_tbq.dart';
import '../widgets/card_ratio.dart';
import '../widgets/card_student_body.dart';
import '../widgets/card_total_registration.dart';
import 'dosen.dart';
import 'tendik.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Assalamualaikum 👋',
                style: Styles.kPublicRegularBodyOne.copyWith(
                  color: kLightGrey500,
                ),
              ),
              Text(
                'Yuk Mulai Pantau DES!',
                style: Styles.kPublicSemiBoldHeadingThree
                    .copyWith(color: kGrey900),
              ),
              kGap20,
              const CardTotalRegistration(),
              kGap16,
              const CardStudentBody(),
              kGap16,
              // const CardRatio(
              //   title: 'Dosen',
              //   total: '0',
              //   ratio: '0',
              //   svgIcon: icProfileTwoUser,
              // ),
              CardDosenHome(),
              kGap16,
              // const CardRatio(
              //   title: 'Tendik',
              //   total: '0',
              //   ratio: '0',
              //   svgIcon: icBriefcase,
              // ),

              CardTendikHome(),
              kGap16,
              const CardAkreditasiProdi(),
              kGap16,
              const CardMahasiswaLulusTBQ(),
              kGap16,
              const CardBaitulArqom(),
              kGap16,
              const CardPrestasiMahasiswa(),
              kGap16
            ],
          ),
        ),
      ),
    );
  }
}
