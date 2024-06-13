// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:des_uad/screens/widgets/student_status.dart';
import 'package:flutter/material.dart';

import '../../core/constant_finals.dart';
import 'base_container.dart';

class CardStudentBody extends StatelessWidget {
  const CardStudentBody({super.key});

  @override
  Widget build(BuildContext context) {
    //temporary chart
    double total = 29800;
    double active = 24750;
    double onLeave = 2430;
    double inactive = 2620;

    return BaseContainer(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Student Body',
                  style: Styles.kPublicSemiBoldBodyOne.copyWith(
                    color: kGrey,
                  ),
                ),
                Text(
                  'TA 2023/2024',
                  style: Styles.kPublicRegularBodyThree.copyWith(
                    color: kLightGrey500,
                  ),
                ),
              ],
            ),
            Text(
              '29.800',
              style: Styles.kPublicSemiBoldHeadingTwo.copyWith(
                color: kGrey,
              ),
            ),
            kGap24,
            Row(
              children: [
                Expanded(
                  flex: (active / total * 100).round(),
                  child: Container(
                    height: 20,
                    decoration: BoxDecoration(
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
                    decoration: BoxDecoration(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StudentStatus(
                    status: 'Aktif', value: '24.750', color: kLightBlue),
                StudentStatus(status: 'Cuti', value: '2.430', color: kYellow),
                StudentStatus(
                    status: 'Non Aktif', value: '2.620', color: kPink),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
