// ignore_for_file: , prefer_const_constructors

import 'package:flutter/material.dart';

import '../../core/constant_finals.dart';
import '../widgets/card_ratio.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CardRatio(
              title: 'Dosen',
              total: '736',
              ratio: '1:36',
              svgIcon: icProfileTwoUser,
            ),
            SizedBox(
              height: 16,
            ),
            CardRatio(
              title: 'Tendik',
              total: '494',
              ratio: '1:58',
              svgIcon: icBriefcase,
            ),
          ],
        ),
      ),
    );
  }
}
