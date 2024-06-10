import 'package:flutter/material.dart';

import '../../core/constant_finals.dart';

class AppBarSubMenuAkademik extends StatelessWidget {
  const AppBarSubMenuAkademik({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBlue,
      width: double.infinity,
      height: 170,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              highlightColor: Colors.transparent,
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back,
                color: kWhite,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              title,
              style: Styles.kPublicSemiBoldHeadingFour.copyWith(color: kWhite),
            ),
          ),
        ],
      ),
    );
  }
}
