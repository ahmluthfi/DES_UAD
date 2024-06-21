import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constant_finals.dart';
import '../../../cubit/akademik_cubit.dart';
import '../../widgets/active_button.dart';
import '../../widgets/base_container.dart';
import '../../widgets/big_card_title.dart';
import '../../widgets/chart/line_chart.dart';
import '../../widgets/chart/line_chart_checkbox.dart';
import '../../widgets/horizontal_bar_chart.dart';
import '../../widgets/rounded_icon_container.dart';
import '../widgets/app_bar_sub_menu_akademik.dart';
import '../widgets/body_sub_menu_akademik.dart';

class MahasiswaAsingPage extends StatelessWidget {
  const MahasiswaAsingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final akademikCubit = context.read<AkademikCubit>();

    return Scaffold(
      
      body: BodySubMenuAkademik(
        appBar: const AppBarSubMenuAkademik(
          title: 'Mahasiswa Asing',
        ),
        height: 1050,
        children: [
          BaseContainer.styledBigCard(
            isRow: true,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Mahasiswa Asing',
                    style: Styles.kPublicRegularBodyTwo,
                  ),
                  Text(
                    '10.524',
                    style: Styles.kPublicSemiBoldHeadingTwo,
                  ),
                ],
              ),
              const RoundedIconContainer(
                side: 64,
                color: kLightGrey100,
                iconColor: kGrey100,
                asset: icFrame,
              ),
            ],
          ),
          kGap16,
          BaseContainer.styledBigCard(
            children: [
              const BigCardTitle(title: 'Tren Mahasiswa Asing'),
              const LineChartCustomized(),
              BlocBuilder<AkademikCubit, AkademikState>(
                builder: (context, state) {
                  return const Row(
                    children: [
                      LineChartCheckBox(
                        activeColor: kLightPurple,
                        year: '2021',
                        index: 0,
                      ),
                      LineChartCheckBox(
                        activeColor: kPurple,
                        year: '2022',
                        index: 1,
                      ),
                      LineChartCheckBox(
                        activeColor: kBlue,
                        year: '2023',
                        index: 2,
                      ),
                      LineChartCheckBox(
                        activeColor: kGreen,
                        year: '2024',
                        index: 3,
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
          kGap16,
          BaseContainer.styledBigCard(
            children: [
              const BigCardTitle(title: 'Persebaran Negara'),
              kGap28,
              BlocBuilder<AkademikCubit, AkademikState>(
                builder: (context, state) {
                  return BaseContainer.activeButtonContainer(
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () =>
                                akademikCubit.clickActiveButtonMhsAsing(0),
                            child: ActiveButton(
                                title: 'Fakultas',
                                isActive: akademikCubit.indexMhsAsing == 0),
                          ),
                        ),
                        kGap4,
                        Expanded(
                          child: InkWell(
                            onTap: () =>
                                akademikCubit.clickActiveButtonMhsAsing(1),
                            child: ActiveButton(
                                title: 'Prodi',
                                isActive: akademikCubit.indexMhsAsing == 1),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(
                height: 300,
                child: HorizontalBarLabelChart(dataAkreditasi),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
