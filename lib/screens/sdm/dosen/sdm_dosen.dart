// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:des_uad/cubit/home_cubit.dart';
import 'package:des_uad/cubit/sdm_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constant_finals.dart';
import '../../widgets/card_ratio.dart';
import '../widgets/card_bar_chart.dart';
import '../widgets/card_persebaran.dart';
import '../widgets/card_total_gender.dart';

class SDMDosen extends StatelessWidget {
  const SDMDosen({
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
              bloc: cubit..getJumlahDosen(),
              buildWhen: (previous, current) => current is SdmJumlah,
              builder: (context, state) {
                print(state);
                if (state is SdmJumlahDosenLoaded) {
                  return CardRatio(
                    title: 'Dosen',
                    total: state.data.totalDosen,
                    ratio: state.data.rasioDosen,
                    svgIcon: icProfileTwoUser,
                  );
                }
                //temporary return - nanti diganti pake circular
                return CardRatio(
                    title: 'Dosen',
                    total: '--',
                    ratio: '--',
                    svgIcon: icBriefcase);
              },
            ),
            kGap16,
            BlocBuilder<SdmCubit, SdmState>(
              bloc: cubit..getGenderDosen(),
              buildWhen: (previous, current) => current is SdmGender,
              builder: (context, state) {
                print(state);
                if (state is SdmGenderDosenLoaded) {
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
                        title: 'Perempuan',
                        value: state.data.perempuan,
                        color: kRed,
                      ),
                    ],
                  );
                }
                //temporary return - nanti diganti pake circular
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
