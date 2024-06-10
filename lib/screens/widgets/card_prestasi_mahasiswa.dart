import 'package:flutter/material.dart';

import '../../core/constant_finals.dart';
import 'chart_prestasi.dart';
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
            Container(
              margin: const EdgeInsets.symmetric(vertical: 24),
              height: 240,
              child: PrestasiChart(),
            ),
            Row(
              children: [
                Row(
                  children: [
                    Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        color: kLightBlue,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Mahasiswa Berprestasi',
                      style:
                          Styles.kPublicRegularBodyTwo.copyWith(color: kGrey),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 16,
                ),
                Row(
                  children: [
                    Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        color: kGreen,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Score',
                      style:
                          Styles.kPublicRegularBodyTwo.copyWith(color: kGrey),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
