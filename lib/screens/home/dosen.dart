import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/constant_finals.dart';
import '../../cubit/akademik_cubit.dart';
import '../../cubit/sdm_cubit.dart';
import '../widgets/base_container.dart';
import '../widgets/card_ratio.dart';

class CardDosenHome extends StatelessWidget {
  const CardDosenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final SdmCubit cubit = context.read<SdmCubit>();
    cubit.getJumlahDosen();
    BlocBuilder<SdmCubit, SdmState>(
      bloc: cubit..getJumlahDosen(),
      buildWhen: (previous, current) => current is SdmState,
      builder: (context, state) {
        print(state);
        if (state is SdmJumlahDosenLoading) {
          return SizedBox();
        }
        if (state is SdmJumlahDosenLoaded) {
          return CardRatio(
            title: 'Dosen',
            total: state.data.totalDosen,
            ratio: state.data.rasioDosen,
            svgIcon: icProfileTwoUser,
          );
        }
        return SizedBox();
      },
    );

    return CardRatio(
      title: 'Dosen',
      total: '0',
      ratio: '0',
      svgIcon: icProfileTwoUser,
    );
  }
}
