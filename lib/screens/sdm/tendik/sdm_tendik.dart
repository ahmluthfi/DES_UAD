// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:des_uad/cubit/sdm_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    final SdmCubit cubit = context.read<SdmCubit>();
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            BlocBuilder<SdmCubit, SdmState>(
              bloc: cubit..getJumlahTendik(),
              buildWhen: (previous, current) => current is SdmJumlah,
              builder: (context, state) {
                if (state is SdmJumlahTendikLoaded) {
                  return CardRatio(
                    title: 'Tendik',
                    total: state.data.totalTendik,
                    ratio: state.data.rasioTendik,
                    svgIcon: icBriefcase,
                  );
                }
                //temporary return - nanti diganti sama yang lain
                return CardRatio(
                    title: 'Tendik',
                    total: '--',
                    ratio: '--',
                    svgIcon: icBriefcase);
              },
            ),
            kGap16,
            BlocBuilder<SdmCubit, SdmState>(
              bloc: cubit..getGenderTendik(),
              buildWhen: (previous, current) => current is SdmGender,
              builder: (context, state) {
                if (state is SdmGenderTendikLoaded) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TotalGender(
                        icon: icManGender,
                        title: 'Laki-laki',
                        value: state.data.lakiLaki,
                        color: kLightBlue,
                      ),
                      kGap12,
                      TotalGender(
                        icon: icWomanGender,
                        title: state.data.perempuan,
                        value: '--',
                        color: kRed,
                      ),
                    ],
                  );
                }
                //temporary return - nanti diganti sama yang lain
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TotalGender(
                      icon: icManGender,
                      title: 'Laki-laki',
                      value: '--',
                      color: kLightBlue,
                    ),
                    kGap12,
                    TotalGender(
                      icon: icWomanGender,
                      title: 'Perempuan',
                      value: '--',
                      color: kRed,
                    ),
                  ],
                );
              },
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
