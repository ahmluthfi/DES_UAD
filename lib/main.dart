import 'package:des_uad/core/constant_finals.dart';
import 'package:des_uad/init_screens/fragment_view.dart';
import 'package:flutter/material.dart';
import 'core/constant_finals.dart';
import 'core/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: akademikRoute,
      routes: Routes.routes,
      theme: ThemeData(
        navigationBarTheme: NavigationBarThemeData(
          indicatorColor: kWhite,
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
    );
  }
}
