import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileBar extends StatelessWidget {
  const ProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Location",
              style: GoogleFonts.sora(
                  color: const Color(0xFFB7B7B7),
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
            ),
            Row(
              children: [
                Text(
                  "Bilzen, Tanjungbalai",
                  style: GoogleFonts.sora(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 6,
                ),
                const Icon(
                  FontAwesomeIcons.chevronDown,
                  size: 15,
                  color: Colors.white,
                )
              ],
            ),
          ],
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            "assets/images/profile.png",
            width: 60,
          ),
        )
      ],
    );
  }
}
