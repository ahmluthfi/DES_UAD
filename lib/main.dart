import 'package:des_uad/core/constant_finals.dart';
import 'package:des_uad/cubit/mutu_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => MutuCubit()),
      ],
      child: MaterialApp(
        initialRoute: homeRoute,
        routes: Routes.routes,
        theme: ThemeData(
          scaffoldBackgroundColor: kBackground,
          appBarTheme: AppBarTheme(
            backgroundColor: kWhite,
            surfaceTintColor: Colors.transparent,
            titleTextStyle:
                Styles.kPublicSemiBoldHeadingThree.copyWith(color: kGrey900),
          ),
          navigationBarTheme: NavigationBarThemeData(
            indicatorColor: kWhite,
            labelTextStyle: WidgetStateProperty.resolveWith(
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.selected)) {
                  return Styles.kPublicMediumBodyThree.copyWith(color: kBlue);
                }
                return Styles.kPublicMediumBodyThree
                    .copyWith(color: kLightGrey300);
              },
            ),
          ),
        ),
      ),
    );
  }
}
