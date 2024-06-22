import 'package:flutter/material.dart';

import '../../../core/constant_finals.dart';
import '../../widgets/base_container.dart';

class CardBarChart extends StatelessWidget {
  final String title;
  final String barTitle;
  final String percent;
  final String value;
  const CardBarChart({
    required this.title,
    required this.barTitle,
    required this.percent,
    required this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Styles.kPublicSemiBoldBodyOne.copyWith(
                color: kGrey,
              ),
            ),
            kGap20,
            Row(
              children: [
                Expanded(
                  flex: (37 / 74 * 100).round(),
                  child: Container(
                      height: 24,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(4),
                        ),
                        color: kBlue,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 10),
                        child: Row(
                          children: [
                            Text(
                              '${barTitle}: ',
                              style: Styles.kPublicRegularBodyTwo.copyWith(
                                color: kWhite,
                              ),
                            ),
                            Text(
                              percent,
                              style: Styles.kPublicBoldBodyTwo.copyWith(
                                color: kWhite,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsetsDirectional.symmetric(
                                horizontal: 4,
                              ),
                              width: 3,
                              height: 3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: kGrey50,
                              ),
                            ),
                            Text(
                              value,
                              style: Styles.kPublicBoldBodyTwo.copyWith(
                                color: kWhite,
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
                Expanded(
                  flex: (37 / 80 * 100).round(),
                  child: Container(
                    height: 24,
                    color: kBlue.withOpacity(16 / 100),
                  ),
                ),
              ],
            ),
            kGap12,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '0',
                  style: Styles.kPublicRegularBodyThree
                      .copyWith(color: kLightGrey500),
                ),
                Text(
                  '15',
                  style: Styles.kPublicRegularBodyThree
                      .copyWith(color: kLightGrey500),
                ),
                Text(
                  '30',
                  style: Styles.kPublicRegularBodyThree
                      .copyWith(color: kLightGrey500),
                ),
                Text(
                  '45',
                  style: Styles.kPublicRegularBodyThree
                      .copyWith(color: kLightGrey500),
                ),
                Text(
                  '60',
                  style: Styles.kPublicRegularBodyThree
                      .copyWith(color: kLightGrey500),
                ),
                Text(
                  '75',
                  style: Styles.kPublicRegularBodyThree
                      .copyWith(color: kLightGrey500),
                ),
                Text(
                  '90',
                  style: Styles.kPublicRegularBodyThree
                      .copyWith(color: kLightGrey500),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
