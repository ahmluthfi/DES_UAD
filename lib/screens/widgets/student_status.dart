import 'package:flutter/material.dart';

import '../../core/constant_finals.dart';

class StudentStatus extends StatelessWidget {
  final String status;
  final String value;
  final Color color;
  const StudentStatus({
    super.key,
    required this.status,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          status,
          style: Styles.kPublicRegularBodyTwo.copyWith(color: kLightGrey500),
        ),
        Row(
          children: [
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              value,
              style: Styles.kPublicMediumBodyOne.copyWith(color: kLightGrey800),
            ),
          ],
        ),
      ],
    );
  }
}
