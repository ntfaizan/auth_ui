import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final lightInputDecorationTheme = InputDecorationTheme(
  contentPadding: const EdgeInsets.only(
    top: 16,
    bottom: 15,
  ),
  filled: true,
  fillColor: const Color(0xffF1F1F1),
  hintStyle: GoogleFonts.redHatDisplay(
    color: const Color(0xff444444),
    fontSize: 18,
    // fontWeight: FontWeight.normal,
  ),
  border: const OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
    borderSide: BorderSide.none,
  ),
);
