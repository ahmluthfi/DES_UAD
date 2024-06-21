import 'package:flutter/material.dart';

import '../../../../core/constant_finals.dart';
import '../../../widgets/rounded_icon_container.dart';

class ItemDataPMB extends StatelessWidget {
  const ItemDataPMB({
    super.key,
    required this.asset,
    required this.title,
    required this.value,
    required this.iconColor,
  });

  final String asset;
  final String title;
  final String value;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            RoundedIconContainer(
              asset: asset,
              color: iconColor.withOpacity(.12),
              iconColor: iconColor,
              side: 36,
            ),
            kGap8,
            Text(
              title,
              style: Styles.kPublicRegularBodyTwo.copyWith(color: kGrey900),
            ),
          ],
        ),
        Text(
          value,
          style: Styles.kPublicSemiBoldBodyOne.copyWith(color: kGrey900),
        ),
      ],
    );
  }
}
