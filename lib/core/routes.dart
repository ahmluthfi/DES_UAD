import 'package:flutter/material.dart';

import '../screens/akademik/akademik.dart';
import '../screens/akademik/pmb/pmb.dart';
import 'constant_finals.dart';

class Routes {
  static Map<String, Widget Function(BuildContext context)> routes = {
    akademikRoute: (context) => const AkademikPage(),
    pmbRoute: (context) => const PenerimaanMahasiswaBaruPage(),
  };
}