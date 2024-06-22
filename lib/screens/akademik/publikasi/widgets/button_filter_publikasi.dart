import 'package:flutter/material.dart';

import '../../../../core/constant_finals.dart';
import '../../../widgets/base_container.dart';

class ButtonFilterPublikasi extends StatelessWidget {
  final String title;
  final bool isActive;
  const ButtonFilterPublikasi({
    super.key,
    required this.title,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      border: Border.all(color: isActive ? kBlue : kGrey300),
      color: isActive ? kBlue : Colors.transparent,
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ),
      child: Center(
        child: Text(
          title,
          style: Styles.kPublicRegularBodyTwo
              .copyWith(color: isActive ? kWhite : kGrey300),
        ),
      ),
    );
  }
}
