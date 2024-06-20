import 'package:des_uad/core/constant_finals.dart';
import 'package:des_uad/cubit/akademik_cubit.dart';
import 'package:des_uad/screens/akademik/pmb/pmb.dart';
import 'package:des_uad/screens/widgets/active_button.dart';
import 'package:des_uad/screens/widgets/app_bar_sub_menu_akademik.dart';
import 'package:des_uad/screens/widgets/base_container.dart';
import 'package:des_uad/screens/widgets/body_sub_menu_akademik.dart';
import 'package:des_uad/screens/widgets/big_card_title.dart';
import 'package:des_uad/screens/widgets/horizontal_bar_chart.dart';
import 'package:des_uad/screens/widgets/line_chart.dart';
import 'package:des_uad/screens/widgets/rounded_icon_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MahasiswaLokalPage extends StatelessWidget {
  const MahasiswaLokalPage({super.key});

  @override
  Widget build(BuildContext context) {
    final akademikCubit = context.read<AkademikCubit>();

    return Scaffold(
      backgroundColor: kBackground,
      body: BodySubMenuAkademik(
        appBar: const AppBarSubMenuAkademik(
          title: 'Mahasiswa Lokal',
        ),
        children: [
          BaseContainer.styledBigCard(
            isRow: true,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Total Mahasiswa Lokal',
                      style: Styles.kPublicRegularBodyTwo),
                  Text('10.524', style: Styles.kPublicSemiBoldHeadingTwo),
                ],
              ),
              const RoundedIconContainer(
                  side: 64,
                  color: kLightGrey100,
                  iconColor: kGrey100,
                  asset: icFrame),
            ],
          ),
          kGap16,
          BaseContainer.styledBigCard(
            children: [
              const BigCardTitle(title: 'Tren Mahasiswa Lokal'),
              const LineChartCustomized(),
              BlocBuilder<AkademikCubit, AkademikState>(
                builder: (context, state) {
                  return const Row(
                    children: [
                      LineChartCheckBox(
                          activeColor: kLightPurple, year: '2021', index: 0),
                      LineChartCheckBox(
                          activeColor: kPurple, year: '2022', index: 1),
                      LineChartCheckBox(
                          activeColor: kBlue, year: '2023', index: 2),
                      LineChartCheckBox(
                          activeColor: kGreen, year: '2024', index: 3),
                    ],
                  );
                },
              ),
            ],
          ),
          kGap16,
          BaseContainer.styledBigCard(
            children: [
              const BigCardTitle(title: 'Persebaran PMB'),
              kGap28,
              BlocBuilder<AkademikCubit, AkademikState>(
                builder: (context, state) {
                  return BaseContainer.activeButtonContainer(
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () =>
                                akademikCubit.clickActiveButtonMhsLokal(0),
                            child: ActiveButton(
                                title: 'Fakultas',
                                isActive: akademikCubit.indexMhsLokal == 0),
                          ),
                        ),
                        kGap4,
                        Expanded(
                          child: InkWell(
                            onTap: () =>
                                akademikCubit.clickActiveButtonMhsLokal(1),
                            child: ActiveButton(
                                title: 'Prodi',
                                isActive: akademikCubit.indexMhsLokal == 1),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(
                height: 250,
                child: HorizontalBarLabelChart(dataAkreditasi),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
