import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFF313131),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(
                FontAwesomeIcons.magnifyingGlass,
                color: Color(0xFFB7B7B7),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Search",
                style: GoogleFonts.sora(
                    color: const Color(0xFFB7B7B7),
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xFFC67C4E),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              FontAwesomeIcons.sliders,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
