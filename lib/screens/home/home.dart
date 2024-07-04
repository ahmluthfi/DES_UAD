import 'package:des_uad/cubit/sdm_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/constant_finals.dart';
import '../widgets/card_akreditasi_prodi.dart';
import '../widgets/card_baitul_arqom.dart';
import '../widgets/card_prestasi_mahasiswa.dart';
import '../widgets/card_tbq.dart';
import '../widgets/card_ratio.dart';
import '../widgets/card_student_body.dart';
import '../widgets/card_total_registration.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SdmCubit cubit = context.read<SdmCubit>();
    // cubit.getJumlahDosen();
    // cubit.getJumlahTendik();

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
              CardStudentBody(),
              kGap16,
              BlocBuilder<SdmCubit, SdmState>(
                bloc: cubit..getJumlahDosenTendik(),
                builder: (context, state) {
                  // print(state);
                  if (state is SdmJumlahDosenTendikLoaded) {
                    return Column(
                      children: [
                        CardRatio(
                          title: 'Dosen',
                          total: state.dataDosen.totalDosen,
                          ratio: state.dataDosen.rasioDosen,
                          svgIcon: icProfileTwoUser,
                        ),
                        kGap16,
                        CardRatio(
                          title: 'Tendik',
                          total: state.dataTendik.totalTendik,
                          ratio: state.dataTendik.rasioTendik,
                          svgIcon: icBriefcase,
                        )
                      ],
                    );
                  }
                  return Column(
                    children: [
                      const CardRatio(
                        title: 'Dosen',
                        total: '--',
                        ratio: '--',
                        svgIcon: icProfileTwoUser,
                      ),
                      kGap16,
                      CardRatio(
                        title: 'Tendik',
                        total: '--',
                        ratio: '--',
                        svgIcon: icBriefcase,
                      )
                    ],
                  );
                },
              ),
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
