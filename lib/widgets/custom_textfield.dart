import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.hint,
    required this.iconPath,
    this.controller,
  });

  final String hint;
  final String iconPath;
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: SvgPicture.asset(
          iconPath,
          height: 20,
          width: 16,
          fit: BoxFit.none,
        ),
        contentPadding: const EdgeInsets.only(
          top: 16,
          bottom: 15,
        ),
        filled: true,
        fillColor: const Color(0xffF1F1F1),
        hintText: hint,
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
      ),
    );
  }
}
