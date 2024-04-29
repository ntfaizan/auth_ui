import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/custom_textfield.dart';

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
                  CustomTextField(
                    iconPath: "assets/icons/person.svg",
                    hint: "Name",
                    controller: nameController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    iconPath: "assets/icons/person.svg",
                    hint: "Short Name",
                    controller: nameController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    iconPath: "assets/icons/person.svg",
                    hint: "CNIC",
                    controller: nameController,
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
