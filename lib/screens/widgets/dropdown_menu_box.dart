import 'package:flutter/material.dart';

import '../../core/constant_finals.dart';

class DropdownMenuBox extends StatelessWidget {
  const DropdownMenuBox({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: kGrey100),
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Styles.kPublicRegularBodyTwo.copyWith(color: kGrey900),
            ),
            const Icon(Icons.keyboard_arrow_down, color: kGrey600),
          ],
        ),
      ),
    );
  }
}
