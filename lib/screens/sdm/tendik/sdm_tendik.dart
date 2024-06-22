// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

import '../../../core/constant_finals.dart';
import '../../widgets/card_ratio.dart';
import '../widgets/card_bar_chart.dart';
import '../widgets/card_persebaran.dart';
import '../widgets/card_total_gender.dart';

class SDMTendik extends StatelessWidget {
  const SDMTendik({
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
              title: 'Tendik',
              total: '494',
              ratio: '1:58',
              svgIcon: icBriefcase,
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
              title: 'Jabatan Fungsional Tendik',
              barTitle: 'Guru Besar',
              percent: '50%',
              value: '37',
            ),
            kGap16,
            Persebaran(
              title: 'Persebaran Tendik',
            ),
            kGap16,
            CardBarChart(
              title: 'Pendidikan Tendik',
              barTitle: 'S1',
              percent: '50%',
              value: '37',
            ),
            kGap16,
            CardBarChart(
              title: 'Usia Tendik',
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
