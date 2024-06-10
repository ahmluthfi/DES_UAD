import 'package:des_uad/screens/akademik/aik/aik.dart';
import 'package:des_uad/screens/akademik/jurnal_uad/jurnal_uad.dart';
import 'package:des_uad/screens/akademik/keberhasilan_studi/keberhasilan_studi.dart';
import 'package:des_uad/screens/akademik/kelulusan/kelulusan.dart';
import 'package:des_uad/screens/akademik/mahasiswa_asing/mahasiswa_asing.dart';
import 'package:des_uad/screens/akademik/mahasiswa_lokal/mahasiswa_lokal.dart';
import 'package:des_uad/screens/akademik/perpustakaan/perpustakaan.dart';
import 'package:des_uad/screens/akademik/publikasi/publikasi.dart';
import 'package:flutter/material.dart';

import '../screens/akademik/akademik.dart';
import '../screens/akademik/pmb/pmb.dart';
import '../screens/home/home.dart';
import 'constant_finals.dart';

class Routes {
  static Map<String, Widget Function(BuildContext context)> routes = {
    homeRoute: (context) => const HomeScreen(),
    akademikRoute: (context) => const AkademikPage(),
    pmbRoute: (context) => const PenerimaanMahasiswaBaruPage(),
    mhsLokalRoute: (context) => const MahasiswaLokalPage(),
    mhsAsingRoute: (context) => const MahasiswaAsingPage(),
    kelulusanRoute: (context) => const KelulusanPage(),
    keberhasilanStudiRoute: (context) => const KeberhasilanStudiPage(),
    perpustakaanRoute: (context) => const PerpustakaanPage(),
    publikasiRoute: (context) => const PublikasiPage(),
    jurnalRoute: (context) => const JurnalUADPage(),
    aikRoute: (context) => const AIKPage(),
  };
}
