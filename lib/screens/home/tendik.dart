import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/constant_finals.dart';
import '../../cubit/akademik_cubit.dart';
import '../../cubit/sdm_cubit.dart';
import '../widgets/base_container.dart';
import '../widgets/card_ratio.dart';

class CardTendikHome extends StatelessWidget {
  const CardTendikHome({super.key});

  @override
  Widget build(BuildContext context) {
    final SdmCubit cubit = context.read<SdmCubit>();
    // cubit.getJumlahTendik();
    // BlocBuilder<SdmCubit, SdmState>(
    //   bloc: cubit..getJumlahTendik(),
    //   buildWhen: (previous, current) => current is SdmState,
    //   builder: (context, state) {
    //     print(state);
    //     if (state is SdmJumlahTendikLoading) {
    //       return SizedBox();
    //     }
    //     if (state is SdmJumlahTendikLoaded) {
    //       return CardRatio(
    //         title: 'Tendik',
    //         total: state.data.totalTendik,
    //         ratio: state.data.rasioTendik,
    //         svgIcon: icProfileTwoUser,
    //       );
    //     }
    //     return SizedBox();
    //   },
    // );

    return CardRatio(
      title: 'Tendik',
      total: '0',
      ratio: '0',
      svgIcon: icProfileTwoUser,
    );
  }
}
