import 'package:flutter/material.dart';

import '../../core/constant_finals.dart';
import 'base_container.dart';
import 'big_card_title.dart';
import 'student_status.dart';

class CardStudentBody extends StatelessWidget {
  const CardStudentBody({super.key});

  @override
  Widget build(BuildContext context) {
    // temporary chart
    double total = 29800;
    double active = 24750;
    double onLeave = 2430;
    double inactive = 2620;

    return BaseContainer.styledBigCard(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const BigCardTitle(title: 'Student Body'),
            Text(
              'TA 2023/2024',
              style:
                  Styles.kPublicRegularBodyThree.copyWith(color: kLightGrey500),
            ),
          ],
        ),
        Text(
          '29.800',
          style: Styles.kPublicSemiBoldHeadingTwo.copyWith(color: kGrey900),
        ),
        kGap24,
        Row(
          children: [
            Expanded(
              flex: (active / total * 100).round(),
              child: Container(
                height: 20,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(4),
                  ),
                  color: kLightBlue,
                ),
              ),
            ),
            Expanded(
              flex: (onLeave / total * 100).round(),
              child: Container(
                height: 20,
                color: kYellow,
              ),
            ),
            Expanded(
              flex: (inactive / total * 100).round(),
              child: Container(
                height: 20,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(4),
                  ),
                  color: kPink,
                ),
              ),
            ),
          ],
        ),
        kGap24,
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StudentStatus(
              status: 'Aktif',
              value: '24.750',
              color: kLightBlue,
            ),
            StudentStatus(
              status: 'Cuti',
              value: '2.430',
              color: kYellow,
            ),
            StudentStatus(
              status: 'Non Aktif',
              value: '2.620',
              color: kPink,
            ),
          ],
        ),
      ],
    );
  }
}
