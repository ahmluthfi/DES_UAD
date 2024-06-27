import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constant_finals.dart';
import '../../widgets/base_container.dart';
import '../../widgets/big_card_title.dart';
import '../../widgets/chart/horizontal_bar_chart.dart';
import '../../widgets/chart/pie_chart_legend.dart';
import '../../widgets/chart/pie_chart_with_details.dart';
import '../../widgets/rounded_icon_container.dart';

class AkreditasiSection extends StatelessWidget {
  const AkreditasiSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Total Prodi
        BaseContainer.styledBigCard(
          isRow: true,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total Prodi',
                  style: Styles.kPublicRegularBodyTwo.copyWith(color: kGrey600),
                ),
                Text(
                  '68',
                  style: Styles.kPublicSemiBoldHeadingTwo,
                ),
              ],
            ),
            const RoundedIconContainer(
                side: 64,
                color: kLightGrey100,
                iconColor: kGrey100,
                asset: icAward),
          ],
        ),
        kGap16,
        // Pie Chart
        BaseContainer.styledBigCard(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const BigCardTitle(title: 'Akreditasi Prodi'),
                RoundedIconContainer(
                    side: 32,
                    color: kBlue.withOpacity(.12),
                    iconColor: kBlue,
                    asset: icNoteTwo),
              ],
            ),
            SizedBox(
              height: 300,
              child: PieChartWithDetails.prodi(
                title: 'Total Prodi',
                value: '68',
              ),
            ),
            const PieChartLegend(
                color: kGreen, title: 'Unggul', percent: '20%', value: '14'),
            kGap12,
            const PieChartLegend(
                color: kBlue,
                title: 'Baik Sekali',
                percent: '38%',
                value: '25'),
            kGap12,
            const PieChartLegend(
                color: kLightSkyBlue,
                title: 'Baik',
                percent: '37%',
                value: '24'),
            kGap12,
            const PieChartLegend(
                color: kYellow,
                title: 'Izin Operasional',
                percent: '5%',
                value: '5'),
          ],
        ),
        kGap16,
        // Small Card
        Row(
          children: [
            Expanded(
              child: BaseContainer(
                height: 130,
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const RoundedIconContainer(
                            side: 32,
                            color: kGrey100,
                            iconColor: kGrey900,
                            asset: icMedal),
                        kGap8,
                        Text(
                          'Akreditasi \nInternasional',
                          style: Styles.kPublicMediumBodyThree
                              .copyWith(color: kGrey600),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '46%',
                          style: Styles.kPublicSemiBoldHeadingTwo
                              .copyWith(color: kGrey900),
                        ),
                        SvgPicture.asset(
                          icRightArrow,
                          width: 24,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            kGap12,
            Expanded(
              child: BaseContainer(
                height: 130,
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const RoundedIconContainer(
                            side: 32,
                            color: kGrey100,
                            iconColor: kGrey900,
                            asset: icMedalStar),
                        kGap8,
                        Text(
                          'Sertifikasi \nInternasional',
                          style: Styles.kPublicMediumBodyThree
                              .copyWith(color: kGrey600),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '32%',
                          style: Styles.kPublicSemiBoldHeadingTwo
                              .copyWith(color: kGrey900),
                        ),
                        SvgPicture.asset(
                          icRightArrow,
                          width: 24,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        kGap12,
        // Horizontal Bar Chart
        BaseContainer.styledBigCard(
          children: [
            const BigCardTitle(title: 'Akreditasi Internasional'),
            SizedBox(
              height: 325,
              child: HorizontalBarLabelChart(dataAkreditasi),
            ),
          ],
        ),
      ],
    );
  }
}
