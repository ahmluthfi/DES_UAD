import 'package:flutter/material.dart';

import '../../../core/constant_finals.dart';
import '../../widgets/card_ratio.dart';
import '../widgets/card_total_gender.dart';

class SDMTendik extends StatelessWidget {
  const SDMTendik({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
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
          )
        ],
      ),
    );
  }
}
