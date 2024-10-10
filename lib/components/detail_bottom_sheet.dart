import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailBottomSheet extends StatelessWidget {
  const DetailBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Price",
                      style: GoogleFonts.sora(
                        color: const Color(0xFF9B9B9B),
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      )),
                  Text("\$4.53",
                      style: GoogleFonts.sora(
                        color: const Color(0xFFC67C4E),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              )),
          Expanded(
            flex: 5,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/order");
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
                minimumSize: WidgetStateProperty.all(
                  Size(MediaQuery.sizeOf(context).width * 0.8, 80),
                ),
              ),
              child: Text(
                "Buy Now",
                style: GoogleFonts.sora(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
