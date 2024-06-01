import 'package:flutter/material.dart';

import '../../core/constant_finals.dart';
import 'base_container.dart';

class CardTotalRegistration extends StatelessWidget {
  const CardTotalRegistration({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      border: Border.all(color: kWhite, width: 1.5),
      boxShadow: [
        BoxShadow(
          color: const Color(0xFF4F4E55).withOpacity(.1),
          blurRadius: 26,
          offset: const Offset(0, 16),
        )
      ],
      color: kBlue,
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      height: 200,
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
                    style: Styles.kPublicRegularBodyThree
                        .copyWith(color: kLightGrey100),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    height: 3,
                    width: 3,
                    decoration: BoxDecoration(
                        color: kLightGrey100,
                        borderRadius: BorderRadius.circular(3)),
                  ),
                  Text(
                    '23 Des',
                    style: Styles.kPublicRegularBodyThree
                        .copyWith(color: kLightGrey100),
                  ),
                ],
              ),
            ],
          ),
          Text(
            '736',
            style: Styles.kPublicSemiBoldHeadingTwo.copyWith(color: kWhite),
          ),
        ],
      ),
    );
  }
}
