import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constant_finals.dart';
import '../../../cubit/mutu_cubit.dart';
import '../../../data/data_chart.dart';
import '../../widgets/base_container.dart';
import '../../widgets/big_card_title.dart';
import '../../widgets/chart/combo_chart.dart';
import '../../widgets/rounded_icon_container.dart';
import 'button_listview_ranking.dart';
import 'item_ranking.dart';

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
              child: ComboChart(datas: []),
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
