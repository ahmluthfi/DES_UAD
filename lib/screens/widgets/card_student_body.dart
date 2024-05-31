// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
            Row(
              children: [
                Text(
                  '29.800',
                  style: Styles.kPublicSemiBoldHeadingTwo.copyWith(
                    color: kGrey,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Expanded(
                  flex: (active / total * 100).round(),
                  child: Container(
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4),
                        bottomLeft: Radius.circular(4),
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
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(4),
                        bottomRight: Radius.circular(4),
                      ),
                      color: kPink,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Aktif',
                      style: Styles.kPublicRegularBodyTwo
                          .copyWith(color: kLightGrey500),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: kLightBlue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '24.750',
                          style: Styles.kPublicMediumBodyOne
                              .copyWith(color: kLightGrey800),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cuti',
                      style: Styles.kPublicRegularBodyTwo.copyWith(
                        color: kLightGrey500,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: kYellow,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '2.430',
                          style: Styles.kPublicMediumBodyOne.copyWith(
                            color: kLightGrey800,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Non Aktif',
                      style: Styles.kPublicRegularBodyTwo
                          .copyWith(color: kLightGrey500),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: kPink,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '2.620',
                          style: Styles.kPublicMediumBodyOne.copyWith(
                            color: kLightGrey800,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
