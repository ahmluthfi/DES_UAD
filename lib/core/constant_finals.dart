import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

// Spacing (Gap)
const Gap kGap8 = Gap(8);
const Gap kGap12 = Gap(12);
const Gap kGap16 = Gap(16);
const Gap kGap20 = Gap(20);
const Gap kGap24 = Gap(24);

// Route
const String homeRoute = 'home/';
const String akademikRoute = 'akademik/';
const String pmbRoute = '${akademikRoute}pmb/';
const String mhsLokalRoute = '${akademikRoute}mhslokal/';
const String mhsAsingRoute = '${akademikRoute}mhsasing/';
const String kelulusanRoute = '${akademikRoute}kelulusan/';
const String keberhasilanStudiRoute = '${akademikRoute}keberhasilanstudi/';
const String perpustakaanRoute = '${akademikRoute}perpustakaan/';
const String publikasiRoute = '${akademikRoute}publikasi/';
const String jurnalRoute = '${akademikRoute}jurnal/';
const String aikRoute = '${akademikRoute}aik/';

// Image
const String imgLoc = 'assets/images/';
const String imgScopus = '${imgLoc}scopus.png';
const String imgGaruda = '${imgLoc}garuda.png';
const String imgScholar = '${imgLoc}scholar.png';

// Icon
const String icLoc = 'assets/svgs/';
const String icBriefcase = '${icLoc}briefcase.svg';
const String icProfileTwoUser = '${icLoc}profiletwouser.svg';
const String icHome = '${icLoc}home.svg';
const String icPeople = '${icLoc}people.svg';
const String icProfileTwoUserOutline = '${icLoc}profiletwouseroutline.svg';
const String icChart = '${icLoc}chart.svg';
const String icTeacher = '${icLoc}teacher.svg';
const String icMedal = '${icLoc}medal.svg';
const String icFrame = '${icLoc}frame.svg';
const String icNoteTwo = '${icLoc}note-2.svg';
const String icProfileTick = '${icLoc}profile-tick.svg';
const String icTaskSquare = '${icLoc}task-square.svg';
const String icNote = '${icLoc}note.svg';
const String icClipboard = '${icLoc}clipboard.svg';
const String icSearchStatus = '${icLoc}search-status.svg';
const String icBook = '${icLoc}book.svg';
const String icAward = '${icLoc}award.svg';
const String icUserOctagon = '${icLoc}user-octagon.svg';
const String icProfileAdd = '${icLoc}profile-add.svg';
const String icRightArrow = 'assets/svgs/circulararrowright.svg';

//Warna
const Color kTempBackground = Color.fromARGB(255, 222, 234, 255);
const Color kBackground = Color(0xFFEFF3FA);
const Color kWhite = Color(0xFFFFFFFF);
const Color kBlue = Color(0xFF2080F9);
const Color kLightBlue = Color(0xFF3490FC);
const Color kYellow = Color(0xFFFFB444);
const Color kPink = Color(0xFFFF5C76);
const Color kRed = Color(0xFFFF7368);
const Color kGreen = Color(0xFF00A991);
const Color kPurple = Color(0xFF5F23FD);
const Color kLightGrey100 = Color(0xFFF0F1F3);
const Color kLightGrey300 = Color(0xFF989FAD);
const Color kLightGrey400 = Color(0xFF858D9D);
const Color klightGrey450 = Color(0xFF6E7880);
const Color kLightGrey500 = Color(0xFF667085);
const Color kLightGrey800 = Color(0xFF383E49);
const Color kGrey = Color(0xFF2B2F38);
const Color kGrey100 = Color(0xFFD0D3D9);
const Color kGrey300 = Color(0xFF989FAD);
const Color kGrey400 = Color(0xFF858D9D);
const Color kGrey600 = Color(0xFF5D6679);

class Styles {
  //W400 - Regular
  static final TextStyle kPublicRegularHeadingOne =
      GoogleFonts.publicSans(fontWeight: FontWeight.w400, fontSize: 36);
  static final TextStyle kPublicRegularHeadingTwo =
      GoogleFonts.publicSans(fontWeight: FontWeight.w400, fontSize: 32);
  static final TextStyle kPublicRegularHeadingThree =
      GoogleFonts.publicSans(fontWeight: FontWeight.w400, fontSize: 24);
  static final TextStyle kPublicRegularHeadingFour =
      GoogleFonts.publicSans(fontWeight: FontWeight.w400, fontSize: 20);
  static final TextStyle kPublicRegularHeadingFive =
      GoogleFonts.publicSans(fontWeight: FontWeight.w400, fontSize: 18);
  static final TextStyle kPublicRegularBodyOne =
      GoogleFonts.publicSans(fontWeight: FontWeight.w400, fontSize: 16);
  static final TextStyle kPublicRegularBodyTwo =
      GoogleFonts.publicSans(fontWeight: FontWeight.w400, fontSize: 14);
  static final TextStyle kPublicRegularBodyThree =
      GoogleFonts.publicSans(fontWeight: FontWeight.w400, fontSize: 12);
  static final TextStyle kPublicRegularBodyFour =
      GoogleFonts.publicSans(fontWeight: FontWeight.w400, fontSize: 10);

  //W500 - Medium
  static final TextStyle kPublicMediumHeadingOne =
      GoogleFonts.publicSans(fontWeight: FontWeight.w500, fontSize: 36);
  static final TextStyle kPublicMediumHeadingTwo =
      GoogleFonts.publicSans(fontWeight: FontWeight.w500, fontSize: 32);
  static final TextStyle kPublicMediumHeadingThree =
      GoogleFonts.publicSans(fontWeight: FontWeight.w500, fontSize: 24);
  static final TextStyle kPublicMediumHeadingFour =
      GoogleFonts.publicSans(fontWeight: FontWeight.w500, fontSize: 20);
  static final TextStyle kPublicMediumHeadingFive =
      GoogleFonts.publicSans(fontWeight: FontWeight.w500, fontSize: 18);
  static final TextStyle kPublicMediumBodyOne =
      GoogleFonts.publicSans(fontWeight: FontWeight.w500, fontSize: 16);
  static final TextStyle kPublicMediumBodyTwo =
      GoogleFonts.publicSans(fontWeight: FontWeight.w500, fontSize: 14);
  static final TextStyle kPublicMediumBodyThree =
      GoogleFonts.publicSans(fontWeight: FontWeight.w500, fontSize: 12);
  static final TextStyle kPublicMediumBodyFour =
      GoogleFonts.publicSans(fontWeight: FontWeight.w500, fontSize: 10);

  //W600 - SemiBold
  static final TextStyle kPublicSemiBoldHeadingOne =
      GoogleFonts.publicSans(fontWeight: FontWeight.w600, fontSize: 36);
  static final TextStyle kPublicSemiBoldHeadingTwo =
      GoogleFonts.publicSans(fontWeight: FontWeight.w600, fontSize: 32);
  static final TextStyle kPublicSemiBoldHeadingThree =
      GoogleFonts.publicSans(fontWeight: FontWeight.w600, fontSize: 24);
  static final TextStyle kPublicSemiBoldHeadingFour =
      GoogleFonts.publicSans(fontWeight: FontWeight.w600, fontSize: 20);
  static final TextStyle kPublicSemiBoldHeadingFive =
      GoogleFonts.publicSans(fontWeight: FontWeight.w600, fontSize: 18);
  static final TextStyle kPublicSemiBoldBodyOne =
      GoogleFonts.publicSans(fontWeight: FontWeight.w600, fontSize: 16);
  static final TextStyle kPublicSemiBoldBodyTwo =
      GoogleFonts.publicSans(fontWeight: FontWeight.w600, fontSize: 14);
  static final TextStyle kPublicSemiBoldBodyThree =
      GoogleFonts.publicSans(fontWeight: FontWeight.w600, fontSize: 12);
  static final TextStyle kPublicSemiBoldBodyFour =
      GoogleFonts.publicSans(fontWeight: FontWeight.w600, fontSize: 10);

  //W700 - Bold
  static final TextStyle kPublicBoldHeadingOne =
      GoogleFonts.publicSans(fontWeight: FontWeight.w700, fontSize: 36);
  static final TextStyle kPublicBoldHeadingTwo =
      GoogleFonts.publicSans(fontWeight: FontWeight.w700, fontSize: 32);
  static final TextStyle kPublicBoldHeadingThree =
      GoogleFonts.publicSans(fontWeight: FontWeight.w700, fontSize: 24);
  static final TextStyle kPublicBoldHeadingFour =
      GoogleFonts.publicSans(fontWeight: FontWeight.w700, fontSize: 20);
  static final TextStyle kPublicBoldHeadingFive =
      GoogleFonts.publicSans(fontWeight: FontWeight.w700, fontSize: 18);
  static final TextStyle kPublicBoldBodyOne =
      GoogleFonts.publicSans(fontWeight: FontWeight.w700, fontSize: 16);
  static final TextStyle kPublicBoldBodyTwo =
      GoogleFonts.publicSans(fontWeight: FontWeight.w700, fontSize: 14);
  static final TextStyle kPublicBoldBodyThree =
      GoogleFonts.publicSans(fontWeight: FontWeight.w700, fontSize: 12);
  static final TextStyle kPublicBoldBodyFour =
      GoogleFonts.publicSans(fontWeight: FontWeight.w700, fontSize: 10);
}
