import 'package:d_chart/d_chart.dart';
import 'package:des_uad/cubit/mutu_cubit.dart';
import 'package:des_uad/data/data_chart.dart';
import 'package:des_uad/screens/mutu/widgets/button_listview_ranking.dart';
import 'package:des_uad/screens/widgets/combo_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/constant_finals.dart';
import '../widgets/app_bar_button.dart';
import '../widgets/base_container.dart';
import '../widgets/big_card_title.dart';
import '../widgets/horizontal_bar_chart.dart';
import '../widgets/pie_chart_legend.dart';
import '../widgets/pie_chart_with_details.dart';
import '../widgets/rounded_icon_container.dart';
import 'widgets/item_ranking.dart';

class MutuPage extends StatelessWidget {
  const MutuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mutuCubit = context.read<MutuCubit>();

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Mutu'),
            kGap16,
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: kLightGrey100,
              ),
              padding: const EdgeInsets.all(4),
              width: double.infinity,
              child: BlocBuilder<MutuCubit, MutuState>(
                builder: (context, state) {
                  return Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () => mutuCubit.clickAppBarButton(),
                          child: AppBarButton(
                            title: 'Akreditasi',
                            isActive: mutuCubit.isAkreditasi,
                          ),
                        ),
                      ),
                      kGap8,
                      Expanded(
                        child: InkWell(
                          onTap: () =>
                              mutuCubit.clickAppBarButton(isActive: false),
                          child: AppBarButton(
                            title: 'Ranking',
                            isActive: !mutuCubit.isAkreditasi,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
        toolbarHeight: 120,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            BlocBuilder<MutuCubit, MutuState>(
              builder: (context, state) {
                return mutuCubit.isAkreditasi
                    ? const AkreditasiSection()
                    : const RankingSection();
              },
            ),
            kGap80,
          ],
        ),
      ),
    );
  }
}

class AkreditasiSection extends StatelessWidget {
  const AkreditasiSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Total Prodi
        BaseContainer.styledBigCard(
          isRow: true,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total Prodi',
                  style: Styles.kPublicRegularBodyTwo.copyWith(color: kGrey600),
                ),
                Text(
                  '68',
                  style: Styles.kPublicSemiBoldHeadingTwo,
                ),
              ],
            ),
            const RoundedIconContainer(
                side: 64,
                color: kLightGrey100,
                iconColor: kGrey100,
                asset: icAward),
          ],
        ),
        kGap16,
        // Pie Chart
        BaseContainer.styledBigCard(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const BigCardTitle(title: 'Akreditasi Prodi'),
                RoundedIconContainer(
                    side: 32,
                    color: kBlue.withOpacity(.12),
                    iconColor: kBlue,
                    asset: icNoteTwo),
              ],
            ),
            const SizedBox(
              height: 300,
              child: PieChartWithDetails(
                title: 'Total Prodi',
                value: 68,
              ),
            ),
            const PieChartLegend(
                color: kGreen, title: 'Unggul', percent: '20%', value: '14'),
            kGap12,
            const PieChartLegend(
                color: kBlue,
                title: 'Baik Sekali',
                percent: '38%',
                value: '25'),
            kGap12,
            const PieChartLegend(
                color: kLightSkyBlue,
                title: 'Baik',
                percent: '37%',
                value: '24'),
            kGap12,
            const PieChartLegend(
                color: kYellow,
                title: 'Izin Operasional',
                percent: '5%',
                value: '5'),
          ],
        ),
        kGap16,
        // Small Card
        Row(
          children: [
            Expanded(
              child: BaseContainer(
                height: 130,
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const RoundedIconContainer(
                            side: 32,
                            color: kGrey100,
                            iconColor: kGrey900,
                            asset: icMedal),
                        kGap8,
                        Text(
                          'Akreditasi \nInternasional',
                          style: Styles.kPublicMediumBodyThree
                              .copyWith(color: kGrey600),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '46%',
                          style: Styles.kPublicSemiBoldHeadingTwo
                              .copyWith(color: kGrey900),
                        ),
                        SvgPicture.asset(
                          icRightArrow,
                          width: 24,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            kGap12,
            Expanded(
              child: BaseContainer(
                height: 130,
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const RoundedIconContainer(
                            side: 32,
                            color: kGrey100,
                            iconColor: kGrey900,
                            asset: icMedalStar),
                        kGap8,
                        Text(
                          'Sertifikasi \nInternasional',
                          style: Styles.kPublicMediumBodyThree
                              .copyWith(color: kGrey600),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '32%',
                          style: Styles.kPublicSemiBoldHeadingTwo
                              .copyWith(color: kGrey900),
                        ),
                        SvgPicture.asset(
                          icRightArrow,
                          width: 24,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        kGap12,
        // Horizontal Bar Chart
        BaseContainer.styledBigCard(
          children: [
            const BigCardTitle(title: 'Akreditasi Internasional'),
            SizedBox(
              height: 325,
              child: HorizontalBarLabelChart(dataAkreditasi),
            ),
          ],
        ),
      ],
    );
  }
}

class RankingSection extends StatelessWidget {
  const RankingSection({super.key});

  @override
  Widget build(BuildContext context) {
    final mutuCubit = context.read<MutuCubit>();
    const titles = ['Webometris', 'WUR', 'UI Green Metric', 'QS Rank'];
    final ranks = [
      DetailRanking('Internasional', 37),
      DetailRanking('Nasional', 40),
      DetailRanking('PTS', 42),
      DetailRanking('PTMA', 56),
    ];
    return Column(
      children: [
        SizedBox(
          height: 40,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => BlocBuilder<MutuCubit, MutuState>(
              builder: (context, state) {
                return InkWell(
                  onTap: () => mutuCubit.clickListViewButton(index),
                  borderRadius: BorderRadius.circular(8),
                  child: ButtonListviewRanking(
                      title: titles[index],
                      isSelected: mutuCubit.index == index),
                );
              },
            ),
            separatorBuilder: (context, index) => kGap12,
            itemCount: titles.length,
          ),
        ),
        kGap20,
        BaseContainer.styledBigCard(
          children: [
            const BigCardTitle(title: 'Tren Ranking'),
            SizedBox(
              height: 240,
              child: DChartComboO(
                groupList: ordinalGroup,
                fillColor: (group, ordinalData, index) {
                  switch (group.chartType) {
                    case ChartType.scatterPlot:
                      return kGrey800;
                    default:
                      return Colors.blue;
                  }
                },
              ),
            ),
          ],
        ),
        kGap16,
        BaseContainer.styledBigCard(
          children: [
            Row(
              children: [
                RoundedIconContainer(
                    border: Border.all(color: kGrey100),
                    side: 36,
                    color: Colors.transparent,
                    iconColor: Colors.transparent,
                    asset: 'assets/images/webometrics.png',
                    isSvg: false),
                kGap4,
                const BigCardTitle(title: 'Webometrics'),
                const Spacer(),
                TextButton(
                  onPressed: () async {},
                  child: Text(
                    '2023',
                    style: Styles.kPublicRegularBodyTwo
                        .copyWith(color: klightGrey450),
                  ),
                ),
              ],
            ),
            kGap24,
            ListView.separated(
              itemBuilder: (context, index) => ItemRanking(rank: ranks[index]),
              separatorBuilder: (context, index) => kGap20,
              itemCount: ranks.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
            )
          ],
        ),
      ],
    );
  }
}
