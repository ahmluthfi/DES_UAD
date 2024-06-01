import 'package:flutter/material.dart';

import '../../core/constant_finals.dart';
import 'base_container.dart';
import 'rounded_icon_container.dart';

class ItemAkademikMenu extends StatelessWidget {
  const ItemAkademikMenu({
    super.key,
    required this.asset,
    required this.iconColor,
    required this.side,
    required this.title,
    required this.route,
  });

  final String asset;
  final Color iconColor;
  final double side;
  final String title;
  final String route;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, route),
      child: BaseContainer(
        padding: const EdgeInsets.all(14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundedIconContainer(
              asset: asset,
              color: iconColor.withOpacity(.12),
              side: side,
              iconColor: iconColor,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              title,
              style: Styles.kPublicRegularBodyThree,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
