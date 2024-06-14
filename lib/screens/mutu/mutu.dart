import 'package:des_uad/screens/widgets/base_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/constant_finals.dart';
import '../../cubit/mutu_cubit.dart';
import '../widgets/active_button.dart';
import 'widgets/akreditasi_section.dart';
import 'widgets/ranking_section.dart';

class MutuPage extends StatelessWidget {
  const MutuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mutuCubit = context.read<MutuCubit>();

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Mutu'),
            kGap16,
            BaseContainer.activeButtonContainer(
              child: BlocBuilder<MutuCubit, MutuState>(
                builder: (context, state) {
                  return Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () => mutuCubit.clickAppBarButton(),
                          child: ActiveButton(
                            title: 'Akreditasi',
                            isActive: mutuCubit.isAkreditasi,
                          ),
                        ),
                      ),
                      kGap8,
                      Expanded(
                        child: InkWell(
                          onTap: () =>
                              mutuCubit.clickAppBarButton(isActive: false),
                          child: ActiveButton(
                            title: 'Ranking',
                            isActive: !mutuCubit.isAkreditasi,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
        toolbarHeight: 120,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            BlocBuilder<MutuCubit, MutuState>(
              builder: (context, state) {
                return mutuCubit.isAkreditasi
                    ? const AkreditasiSection()
                    : const RankingSection();
              },
            ),
            kGap80,
          ],
        ),
      ),
    );
  }
}
