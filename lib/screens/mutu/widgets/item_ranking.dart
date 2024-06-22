import 'package:flutter/material.dart';

import '../../../core/constant_finals.dart';
import '../../../data/data_chart.dart';

class ItemRanking extends StatelessWidget {
  const ItemRanking({
    super.key,
    required this.rank,
  });

  final DetailRanking rank;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(rank.scope),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                  text: 'Peringkat ',
                  style:
                      Styles.kPublicRegularBodyOne.copyWith(color: kGrey300)),
              TextSpan(
                  text: '${rank.rank}',
                  style:
                      Styles.kPublicRegularBodyOne.copyWith(color: kGrey900)),
            ],
          ),
        ),
      ],
    );
  }
}
