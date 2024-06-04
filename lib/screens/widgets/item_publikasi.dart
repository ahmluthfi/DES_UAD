import 'package:flutter/material.dart';

import '../../core/constant_finals.dart';

class ItemPublikasi extends StatelessWidget {
  const ItemPublikasi({
    super.key,
    required this.title,
    required this.asset,
    required this.value,
  });

  final String title;
  final String asset;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(asset, width: 36, height: 36),
            kGap12,
            Text(title, style: Styles.kPublicRegularBodyTwo),
          ],
        ),
        Text(value, style: Styles.kPublicRegularBodyOne)
      ],
    );
  }
}
