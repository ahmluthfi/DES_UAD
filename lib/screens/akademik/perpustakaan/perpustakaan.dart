import 'package:flutter/material.dart';

import '../../../core/constant_finals.dart';
import '../widgets/app_bar_sub_menu_akademik.dart';
import '../../widgets/base_container.dart';
import '../widgets/body_sub_menu_akademik.dart';
import '../../widgets/rounded_icon_container.dart';

class PerpustakaanPage extends StatelessWidget {
  const PerpustakaanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodySubMenuAkademik(
        appBar: const AppBarSubMenuAkademik(
          title: 'Perpustakaan',
        ),
        height: MediaQuery.sizeOf(context).height,
        children: [
          BaseContainer.styledBigCard(
            isRow: true,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Judul Koleksi',
                    style: Styles.kPublicRegularBodyTwo,
                  ),
                  Text(
                    '520',
                    style: Styles.kPublicSemiBoldHeadingTwo,
                  ),
                ],
              ),
              const RoundedIconContainer(
                side: 64,
                color: kLightGrey100,
                iconColor: kGrey100,
                asset: icNoteTwo,
              ),
            ],
          ),
          kGap16,
          GridView.count(
            childAspectRatio: 150 / 110,
            crossAxisCount: 2,
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              for (int i = 0; i < 3; i++)
                BaseContainer.styledBigCard(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const RoundedIconContainer(
                          side: 36,
                          color: kLightGrey100,
                          iconColor: kBlue,
                          asset: icBook,
                        ),
                        kGap8,
                        Text(
                          'Total Buku',
                          style: Styles.kPublicMediumBodyThree
                              .copyWith(color: kGrey600),
                        )
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        '320',
                        style: Styles.kPublicSemiBoldHeadingThree,
                      ),
                    )
                  ],
                ),
            ],
          ),
        ],
      ),
    );
  }
}
