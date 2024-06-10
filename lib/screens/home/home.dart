import 'package:des_uad/init_screens/fragment_view.dart';
import 'package:flutter/material.dart';

import '../../core/constant_finals.dart';
import '../widgets/card_akreditasi_prodi.dart';
import '../widgets/card_baitul_arqom.dart';
import '../widgets/card_prestasi_mahasiswa.dart';
import '../widgets/card_tbq.dart';
import '../widgets/card_ratio.dart';
import '../widgets/card_student_body.dart';
import '../widgets/card_total_registrasi.dart';

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
                style:
                    Styles.kPublicSemiBoldHeadingThree.copyWith(color: kGrey),
              ),
              const SizedBox(
                height: 20,
              ),
              const CardTotalRegistrasi(),
              const SizedBox(
                height: 16,
              ),
              const CardStudentBody(),
              const SizedBox(
                height: 16,
              ),
              const CardRatio(
                title: 'Dosen',
                total: '736',
                ratio: '1:36',
                svgIcon: icProfileTwoUser,
              ),
              const SizedBox(
                height: 16,
              ),
              const CardRatio(
                title: 'Tendik',
                total: '494',
                ratio: '1:58',
                svgIcon: icBriefcase,
              ),
              const SizedBox(
                height: 16,
              ),
              const CardAkreditasiProdi(),
              const SizedBox(
                height: 16,
              ),
              const CardMahasiswaLulusTBQ(),
              const SizedBox(
                height: 16,
              ),
              const CardBaitulArqom(),
              const SizedBox(
                height: 16,
              ),
              const CardPrestasiMahasiswa(),
            ],
          ),
        ),
      ),
    );
  }
}
