import 'package:flutter/material.dart';

import '../../core/constant_finals.dart';
import 'base_container.dart';
import 'chart_total_registrasi.dart';

class CardTotalRegistration extends StatelessWidget {
  const CardTotalRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      border: Border.all(color: kWhite, width: 2),
      boxShadow: [
        BoxShadow(
          color: const Color(0xFF4F4E55).withOpacity(.1),
          blurRadius: 26,
          offset: const Offset(0, 16),
        )
      ],
      color: kBlue,
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Registrasi',
                style: Styles.kPublicSemiBoldBodyOne.copyWith(color: kWhite),
              ),
              Row(
                children: [
                  Text(
                    'TA 2023/2024',
                    style:
                        Styles.kPublicRegularBodyThree.copyWith(color: kWhite),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: 3,
                    height: 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kWhite,
                    ),
                  ),
                  Text(
                    '23 Des',
                    style:
                        Styles.kPublicRegularBodyThree.copyWith(color: kWhite),
                  ),
                ],
              ),
            ],
          ),
          Text(
            '736',
            style: Styles.kPublicSemiBoldHeadingTwo.copyWith(color: kWhite),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: const ChartTotalRegistrasi(),
          ),
        ],
      ),
    );
  }
}
