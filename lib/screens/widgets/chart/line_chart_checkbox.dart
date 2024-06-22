import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constant_finals.dart';
import '../../../cubit/akademik_cubit.dart';

class LineChartCheckBox extends StatelessWidget {
  const LineChartCheckBox({
    super.key,
    required this.activeColor,
    required this.year,
    required this.index,
  });

  final Color activeColor;
  final String year;
  final int index;

  @override
  Widget build(BuildContext context) {
    final akademikCubit = context.read<AkademikCubit>();

    return BlocBuilder<AkademikCubit, AkademikState>(
      builder: (context, state) => Row(
        children: [
          Checkbox(
            activeColor: activeColor,
            value: akademikCubit.isChecked[index],
            onChanged: (value) => akademikCubit.check(index),
          ),
          Text(
            year,
            style: Styles.kPublicRegularBodyTwo.copyWith(color: kGrey900),
          ),
        ],
      ),
    );
  }
}
