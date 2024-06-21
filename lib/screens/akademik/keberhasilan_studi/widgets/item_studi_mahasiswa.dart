import 'package:flutter/material.dart';

import '../../../../core/constant_finals.dart';

class ItemStudiMahasiswa extends StatelessWidget {
  const ItemStudiMahasiswa({
    super.key,
    required this.title,
    required this.value,
    required this.color,
  });

  final String title;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Styles.kPublicRegularBodyTwo.copyWith(
            color: kGrey400,
          ),
        ),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: color,
              ),
              width: 10,
              height: 10,
            ),
            kGap8,
            Text(
              value,
              style: Styles.kPublicMediumHeadingFour.copyWith(color: kGrey800),
            ),
          ],
        ),
      ],
    );
  }
}
