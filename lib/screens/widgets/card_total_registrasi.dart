import 'package:des_uad/core/constant_finals.dart';
import 'package:des_uad/screens/widgets/base_container.dart';
import 'package:flutter/material.dart';

class CardTotalRegistrasi extends StatelessWidget {
  const CardTotalRegistrasi({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      color: kBlue,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
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
                          .copyWith(color: kWhite),
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
                      style: Styles.kPublicRegularBodyThree
                          .copyWith(color: kWhite),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              '736',
              style: Styles.kPublicSemiBoldHeadingTwo.copyWith(color: kWhite),
            )
          ],
        ),
      ),
    );
  }
}
