import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:coffee_shop/data/coffee_data.dart';

class CoffeeTypesBar extends StatelessWidget {
  const CoffeeTypesBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: ListView.builder(
        itemCount: CoffeeData.coffee_types.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (true) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding: WidgetStateProperty.all(const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 8)),
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                    backgroundColor: WidgetStateProperty.all(
                        index == 0 ? const Color(0xFFC67C4E) : Colors.white),
                  ),
                  child: Text(
                    CoffeeData.coffee_types[index],
                    style: GoogleFonts.sora(
                        color:
                            index == 0 ? Colors.white : const Color(0xFF2F4B4E),
                        fontSize: 16,
                        fontWeight:
                            index == 0 ? FontWeight.w600 : FontWeight.w500),
                  )),
            );
          }
        },
      ),
    );
  }
}
