import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          OverflowBox(
            alignment: const Alignment(0, -1),
            fit: OverflowBoxFit.max,
            maxHeight: MediaQuery.sizeOf(context).height * 0.8,
            minWidth: MediaQuery.sizeOf(context).width,
            child: Image.asset(
              "assets/images/coffee-mug.png",
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: const Alignment(0, 1),
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * 0.5,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [0.7, 1],
              )),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Coffee so good,\nyour taste buds\nwill love it",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.sora(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "The best grain, the finest roast, the\npowerful flavor",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.sora(
                      color: const Color(0xFFA9A9A9),
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/home");
                    },
                    style: ButtonStyle(
                      elevation: WidgetStateProperty.all(0),
                      backgroundColor: WidgetStateProperty.all(
                        const Color(0xFFC67C4E),
                      ),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      minimumSize: WidgetStatePropertyAll(
                        Size(MediaQuery.sizeOf(context).width * 0.8, 80),
                      ),
                    ),
                    child: Text(
                      "Get Started",
                      style: GoogleFonts.sora(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
