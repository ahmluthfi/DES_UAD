import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/constant_finals.dart';
import 'core/routes.dart';
import 'core/theme/theme.dart';
import 'cubit/akademik_cubit.dart';
import 'cubit/mutu_cubit.dart';
import 'cubit/prestasi_cubit.dart';
import 'data/datasources/data_sources_impl.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final dataSource = DataSourceImpl();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MutuCubit(dataSource: dataSource),
        ),
        BlocProvider(
          create: (context) => AkademikCubit(dataSource: dataSource),
        ),
        BlocProvider(
          create: (context) => PrestasiCubit(dataSource: dataSource),
        ),
      ],
      child: MaterialApp(
        theme: theme,
        routes: Routes.routes,
        initialRoute: homeRoute,
      ),
    );
  }
}
