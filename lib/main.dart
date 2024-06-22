import 'package:des_uad/core/constant_finals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/routes.dart';
import 'cubit/akademik_cubit.dart';
import 'cubit/mutu_cubit.dart';
import 'cubit/prestasi_cubit.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => MutuCubit()),
        BlocProvider(create: (context) => AkademikCubit()),
        BlocProvider(create: (context) => PrestasiCubit()),
      ],
      child: MaterialApp(
        // initialRoute: homeRoute,
        // routes: Routes.routes,
        theme: ThemeData(
          scaffoldBackgroundColor: kBackground,
          appBarTheme: AppBarTheme(
            backgroundColor: kWhite,
            surfaceTintColor: Colors.transparent,
            titleTextStyle:
                Styles.kPublicSemiBoldHeadingThree.copyWith(color: kGrey900),
          ),
          navigationBarTheme: NavigationBarThemeData(
            indicatorColor: kWhite.withOpacity(0 / 100),
            labelTextStyle: MaterialStateProperty.resolveWith(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.selected)) {
                  return Styles.kPublicMediumBodyThree.copyWith(color: kBlue);
                }
                return Styles.kPublicMediumBodyThree
                    .copyWith(color: kLightGrey300);
              },
            ),
          ),
        ),
        routes: Routes.routes,
        initialRoute: homeRoute,
      ),
    );
  }
}
