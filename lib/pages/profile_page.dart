import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              top: 0,
              child: SvgPicture.asset(
                "assets/svgs/bg.svg",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 141,
                  ),
                  Text(
                    'Personal Information',
                    style: GoogleFonts.redHatDisplay(
                      color: const Color(0xff8B010B),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      prefixIcon: SvgPicture.asset(
                        "assets/icons/person.svg",
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
                      hintText: "Name",
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
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      prefixIcon: SvgPicture.asset(
                        "assets/icons/person.svg",
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
                      hintText: "Short Name",
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
