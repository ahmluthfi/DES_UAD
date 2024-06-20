import 'package:des_uad/cubit/akademik_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constant_finals.dart';
import '../../widgets/active_button.dart';
import '../../widgets/app_bar_sub_menu_akademik.dart';
import '../../widgets/base_container.dart';
import '../../widgets/big_card_title.dart';
import '../../widgets/body_sub_menu_akademik.dart';
import '../../widgets/bottom_modal.dart';
import '../../widgets/card_total_registration.dart';
import '../../widgets/dropdown_menu_box.dart';
import '../../widgets/horizontal_bar_chart.dart';
import '../../widgets/item_data_pmb.dart';
import '../../widgets/line_chart.dart';
import '../widgets/bottom_modal_content.dart';

class PenerimaanMahasiswaBaruPage extends StatelessWidget {
  const PenerimaanMahasiswaBaruPage({super.key});

  @override
  Widget build(BuildContext context) {
    final akademikCubit = context.read<AkademikCubit>();

    return Scaffold(
      backgroundColor: kBackground,
      body: BodySubMenuAkademik(
        appBar: const AppBarSubMenuAkademik(
          title: 'PMB',
        ),
        children: [
          const CardTotalRegistration(),
          kGap16,
          // Data PMB
          BaseContainer.styledBigCard(
            children: const [
              BigCardTitle(title: 'Data PMB 2024'),
              kGap20,
              ItemDataPMB(
                asset: icPeople,
                iconColor: Color(0xFF3AA0DF),
                title: 'Total Pendaftar',
                value: '1254',
              ),
              kGap20,
              ItemDataPMB(
                asset: icProfileTick,
                iconColor: Color(0xFF18C07A),
                title: 'Diterima',
                value: '817',
              ),
              kGap20,
              ItemDataPMB(
                asset: icTaskSquare,
                iconColor: Color(0xFF5CB1C5),
                title: 'Registrasi',
                value: '317',
              ),
              kGap20,
              ItemDataPMB(
                asset: icFrame,
                iconColor: Color(0xFF9292EC),
                title: 'Pendaftar Reguler',
                value: '317',
              ),
              kGap20,
              ItemDataPMB(
                asset: icNoteTwo,
                iconColor: Color(0xFFFBA458),
                title: 'Pendaftar Non Reguler',
                value: '0',
              ),
            ],
          ),
          kGap16,
          // Line Chart Mahasiswa Baru
          BaseContainer.styledBigCard(
            children: [
              const BigCardTitle(title: 'Tren Mahasiswa Baru'),
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
          // Horizontal Bar Chart Persebaran Mahasiswa
          BaseContainer.styledBigCard(
            children: [
              const BigCardTitle(title: 'PMB Berdasarkan Persebaran'),
              kGap28,
              BlocBuilder<AkademikCubit, AkademikState>(
                builder: (context, state) {
                  return BaseContainer.activeButtonContainer(
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () =>
                                akademikCubit.click(JenisPMB.persebaran, 0),
                            child: ActiveButton(
                                title: 'Fakultas',
                                isActive: akademikCubit.indexJenisPMB[
                                        JenisPMB.persebaran.index] ==
                                    0),
                          ),
                        ),
                        kGap4,
                        Expanded(
                          child: InkWell(
                            onTap: () =>
                                akademikCubit.click(JenisPMB.persebaran, 1),
                            child: ActiveButton(
                                title: 'Prodi',
                                isActive: akademikCubit.indexJenisPMB[
                                        JenisPMB.persebaran.index] ==
                                    1),
                          ),
                        ),
                        kGap4,
                        Expanded(
                          child: InkWell(
                            onTap: () =>
                                akademikCubit.click(JenisPMB.persebaran, 2),
                            child: ActiveButton(
                                title: 'Provinsi',
                                isActive: akademikCubit.indexJenisPMB[
                                        JenisPMB.persebaran.index] ==
                                    2),
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
          kGap16,
          // Horizontal Bar Chart Jalur Reguler
          BaseContainer.styledBigCard(
            children: [
              const BigCardTitle(title: 'PMB Jalur Reguler'),
              kGap28,
              BaseContainer.activeButtonContainer(
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () => akademikCubit.click(JenisPMB.reguler, 0),
                        child: ActiveButton(
                            title: 'Fakultas',
                            isActive: akademikCubit
                                    .indexJenisPMB[JenisPMB.reguler.index] ==
                                0),
                      ),
                    ),
                    kGap4,
                    Expanded(
                      child: InkWell(
                        onTap: () => akademikCubit.click(JenisPMB.reguler, 1),
                        child: ActiveButton(
                            title: 'Prodi',
                            isActive: akademikCubit
                                    .indexJenisPMB[JenisPMB.reguler.index] ==
                                1),
                      ),
                    ),
                  ],
                ),
              ),
              kGap20,
              DropdownMenuBox(
                onTap: () => showModalBottomSheet(
                  context: context,
                  builder: (context) => const BottomModal(
                    title: 'Pilih Fakultas',
                    child: BottomModalContent(),
                  ),
                ),
                title: 'Pilih Fakultas',
              ),
              SizedBox(
                height: 250,
                child: HorizontalBarLabelChart(dataAkreditasi),
              ),
            ],
          ),
          kGap16,
          // Horizontal Bar Chart Non Reguler
          BlocBuilder<AkademikCubit, AkademikState>(
            builder: (context, state) {
              return BaseContainer.styledBigCard(
                children: [
                  const BigCardTitle(title: 'PMB Jalur Non Reguler'),
                  kGap28,
                  BaseContainer.activeButtonContainer(
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () =>
                                akademikCubit.click(JenisPMB.nonReguler, 0),
                            child: ActiveButton(
                                title: 'Fakultas',
                                isActive: akademikCubit.indexJenisPMB[
                                        JenisPMB.nonReguler.index] ==
                                    0),
                          ),
                        ),
                        kGap4,
                        Expanded(
                          child: InkWell(
                            onTap: () =>
                                akademikCubit.click(JenisPMB.nonReguler, 1),
                            child: ActiveButton(
                                title: 'Prodi',
                                isActive: akademikCubit.indexJenisPMB[
                                        JenisPMB.nonReguler.index] ==
                                    1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  kGap20,
                  DropdownMenuBox(
                    onTap: () => showModalBottomSheet(
                      context: context,
                      builder: (context) => const BottomModal(
                        title: 'Pilih Fakultas',
                        child: BottomModalContent(),
                      ),
                    ),
                    title: 'Pilih Fakultas',
                  ),
                  SizedBox(
                    height: 250,
                    child: HorizontalBarLabelChart(dataAkreditasi),
                  ),
                ],
              );
            },
          ),
          kGap24,
        ],
      ),
    );
  }
}

class LineChartCheckBox extends StatelessWidget {
  const LineChartCheckBox({
    super.key,
    required this.activeColor,
    required this.year,
    required this.index,
  });

  final Color activeColor;
  final String year;
  final int index;

  @override
  Widget build(BuildContext context) {
    final akademikCubit = context.read<AkademikCubit>();

    return BlocBuilder<AkademikCubit, AkademikState>(
      builder: (context, state) => Row(
        children: [
          Checkbox(
            activeColor: activeColor,
            value: akademikCubit.isChecked[index],
            onChanged: (value) => akademikCubit.check(index),
          ),
          Text(
            year,
            style: Styles.kPublicRegularBodyTwo.copyWith(color: kGrey900),
          ),
        ],
      ),
    );
  }
}
