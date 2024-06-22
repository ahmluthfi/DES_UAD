import 'package:des_uad/core/constant_finals.dart';
import 'package:des_uad/data/datasources/data_sources.dart';
import 'package:des_uad/data/datasources/data_sources_impl.dart';
import 'package:des_uad/init_screens/fragment_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [

      ],
      child: MaterialApp(
        // initialRoute: akademikRoute,
        // routes: Routes.routes,
        theme: ThemeData(
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
        home: FragmentPage(),
      ),
    );
  }
}
