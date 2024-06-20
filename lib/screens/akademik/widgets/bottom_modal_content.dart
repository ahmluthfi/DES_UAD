import 'package:flutter/material.dart';

import '../../../core/constant_finals.dart';
import 'bottom_modal_content_item.dart';

class BottomModalContent extends StatelessWidget {
  const BottomModalContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        BottomModalContentItem(title: 'Teknologi Industri'),
        Divider(color: kGrey50),
        kGap16,
        BottomModalContentItem(title: 'Teknologi Industri'),
        Divider(color: kGrey50),
        kGap16,
        BottomModalContentItem(title: 'Teknologi Industri'),
        Divider(color: kGrey50),
        kGap16,
        BottomModalContentItem(title: 'Teknologi Industri'),
        Divider(color: kGrey50),
        kGap16,
        BottomModalContentItem(title: 'Teknologi Industri'),
        Divider(color: kGrey50),
      ],
    );
  }
}
