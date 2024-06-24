import 'package:des_uad/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/constant_finals.dart';
import '../../data/datasources/data_sources_impl.dart';
import 'base_container.dart';
import 'big_card_title.dart';
import 'student_status.dart';

class CardStudentBody extends StatelessWidget {
  CardStudentBody({super.key});

  final HomeCubit cubit = HomeCubit(DataSourceImpl());

  @override
  Widget build(BuildContext context) {
    // temporary chart
    double total = 29800;
    double active = 24750;
    double onLeave = 2430;
    double inactive = 2620;

    return BlocBuilder<HomeCubit, HomeState>(
      bloc: cubit..getStudentBody(),
      builder: (context, state) {
        if (state is HomeLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is HomeLoaded) {
          return BaseContainer.styledBigCard(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BigCardTitle(title: 'Student Body'),
                  Text(
                    'TA ${state.data.tahun}',
                    style: Styles.kPublicRegularBodyThree
                        .copyWith(color: kLightGrey500),
                  ),
                ],
              ),
              Text(
                state.data.studentBody,
                style:
                    Styles.kPublicSemiBoldHeadingTwo.copyWith(color: kGrey900),
              ),
              kGap24,
              Row(
                children: [
                  Expanded(
                    flex: (active / total * 100).round(),
                    child: Container(
                      height: 20,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(4),
                        ),
                        color: kLightBlue,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: (onLeave / total * 100).round(),
                    child: Container(
                      height: 20,
                      color: kYellow,
                    ),
                  ),
                  Expanded(
                    flex: (inactive / total * 100).round(),
                    child: Container(
                      height: 20,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(4),
                        ),
                        color: kPink,
                      ),
                    ),
                  ),
                ],
              ),
              kGap24,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StudentStatus(
                    status: 'Aktif',
                    value: '24.750',
                    color: kLightBlue,
                  ),
                  StudentStatus(
                    status: 'Cuti',
                    value: '2.430',
                    color: kYellow,
                  ),
                  StudentStatus(
                    status: 'Non Aktif',
                    value: '2.620',
                    color: kPink,
                  ),
                ],
              ),
            ],
          );
        }
        return Container();
      },
    );
  }
}
