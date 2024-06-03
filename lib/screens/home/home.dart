// ignore_for_file: , prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../core/constant_finals.dart';
import '../widgets/card_akreditasi_prodi.dart';
import '../widgets/card_lulus_tbq.dart';
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
          padding: EdgeInsets.symmetric(vertical: 48, horizontal: 16),
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
              CardTotalRegistrasi(),
              SizedBox(
                height: 16,
              ),
              CardStudentBody(),
              SizedBox(
                height: 16,
              ),
              CardRatio(
                title: 'Dosen',
                total: '736',
                ratio: '1:36',
                svgIcon: icProfileTwoUser,
              ),
              SizedBox(
                height: 16,
              ),
              CardRatio(
                title: 'Tendik',
                total: '494',
                ratio: '1:58',
                svgIcon: icBriefcase,
              ),
              SizedBox(
                height: 16,
              ),
              CardAkreditasiProdi(),
              SizedBox(
                height: 16,
              ),
              CardMahasiswaLulusTBQ()
            ],
          ),
        ),
      ),
    );
  }
}
