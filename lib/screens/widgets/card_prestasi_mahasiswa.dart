import 'package:flutter/material.dart';

import '../../core/constant_finals.dart';
import 'base_container.dart';

class CardPrestasiMahasiswa extends StatelessWidget {
  const CardPrestasiMahasiswa({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Prestasi Mahasiswa',
                  style: Styles.kPublicSemiBoldBodyOne.copyWith(
                    color: kGrey,
                  ),
                ),
                Text(
                  'Lihat semua',
                  style: Styles.kPublicRegularBodyThree.copyWith(
                    color: kBlue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
