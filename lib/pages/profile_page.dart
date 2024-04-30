import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});
  final nameController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
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
              child: Form(
                key: formkey,
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
                        hintText: "Name",
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: SvgPicture.asset(
                          "assets/icons/person.svg",
                          height: 20,
                          width: 16,
                          fit: BoxFit.none,
                        ),
                        hintText: "Short Name",
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: SvgPicture.asset(
                          "assets/icons/cnic.svg",
                          height: 20,
                          width: 16,
                          fit: BoxFit.none,
                        ),
                        hintText: "CNIC",
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null) {
                          return "Please enter your email";
                        }
                        if (value.isEmpty) {
                          return "Please enter your email";
                        }
                        if (!value.contains("@") || !value.contains(".")) {
                          return "Please enter your valid email";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        prefixIcon: SvgPicture.asset(
                          "assets/icons/cnic.svg",
                          height: 20,
                          width: 16,
                          fit: BoxFit.none,
                        ),
                        hintText: "email",
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FilledButton(
                      onPressed: () {
                        bool isValid = formkey.currentState!.validate();
                        if (!isValid) {
                          return;
                        }
                        // do logic
                      },
                      child: const Text('Save'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
