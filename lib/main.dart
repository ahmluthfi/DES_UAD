import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/constant_finals.dart';
import 'core/routes.dart';
import 'cubit/akademik_cubit.dart';
import 'cubit/mutu_cubit.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => MutuCubit()),
        BlocProvider(create: (context) => AkademikCubit()),
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
