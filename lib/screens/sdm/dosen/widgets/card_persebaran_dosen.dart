import 'package:flutter/material.dart';

import '../../../../core/constant_finals.dart';
import '../../../widgets/base_container.dart';

class PersebaranDosen extends StatefulWidget {
  const PersebaranDosen({
    super.key,
  });

  @override
  State<PersebaranDosen> createState() => _PersebaranDosenState();
}

class _PersebaranDosenState extends State<PersebaranDosen> {
  bool isFakultasSelected = true; // Menambahkan variabel status

  void toggleSelection(bool isDosen) {
    setState(() {
      isFakultasSelected = isDosen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Jabatan Fungsional Dosen',
              style: Styles.kPublicSemiBoldBodyOne.copyWith(
                color: kGrey,
              ),
            ),
            kGap20,
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: kLightGrey100,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => toggleSelection(true), // Mengubah status
                        child: Container(
                          height: 32,
                          decoration: BoxDecoration(
                            color: isFakultasSelected
                                ? kWhite
                                : kLightGrey100, // Mengubah warna berdasarkan status
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              'Fakultas',
                              style: Styles.kPublicSemiBoldBodyThree.copyWith(
                                color: kGrey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    kGap8,
                    Expanded(
                      child: GestureDetector(
                        onTap: () => toggleSelection(false), // Mengubah status
                        child: Container(
                          height: 32,
                          decoration: BoxDecoration(
                            color: isFakultasSelected
                                ? kLightGrey100
                                : kWhite, // Mengubah warna berdasarkan status
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              'Prodi',
                              style: Styles.kPublicSemiBoldBodyThree.copyWith(
                                color: kGrey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
