// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../core/constant_finals.dart';
import '../../widgets/card_ratio.dart';
import '../widgets/card_total_gender.dart';
import '../widgets/card_bar_chart.dart';
import '../widgets/card_persebaran.dart';

class SDMDosen extends StatelessWidget {
  const SDMDosen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CardRatio(
              title: 'Dosen',
              total: '736',
              ratio: '1:36',
              svgIcon: icProfileTwoUser,
            ),
            kGap16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TotalGender(
                  icon: icManGender,
                  title: 'Laki-laki',
                  value: '400',
                  color: kLightBlue,
                ),
                kGap12,
                TotalGender(
                  icon: icWomanGender,
                  title: 'Perempuan',
                  value: '365',
                  color: kRed,
                ),
              ],
            ),
            kGap16,
            CardBarChart(
              title: 'Jabatan Fungsional Dosen',
              barTitle: 'Guru Besar',
              percent: '50%',
              value: '37',
            ),
            kGap16,
            Persebaran(
              title: 'Persebaran Dosen',
            ),
            kGap16,
            CardBarChart(
              title: 'Pendidikan Dosen',
              barTitle: 'S1',
              percent: '50%',
              value: '37',
            ),
            kGap16,
            CardBarChart(
              title: 'Usia Dosen',
              barTitle: '21 - 30',
              percent: '50%',
              value: '37',
            ),
            kGap16,
            CardBarChart(
              title: 'Sertifikasi',
              barTitle: 'Bersertifikasi',
              percent: '50%',
              value: '33',
            ),
            kGap70,
          ],
        ),
      ),
    );
  }
}
