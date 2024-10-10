import 'package:coffee_shop/data/coffee_data.dart';
import 'package:coffee_shop/screens/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CoffeeGrid extends StatelessWidget {
  const CoffeeGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.95,
      child: GridView.builder(
        padding: const EdgeInsets.only(bottom: 120),
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 300, crossAxisCount: 2),
        itemCount: CoffeeData.coffeeList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    clipBehavior: Clip.antiAlias,
                    child: Stack(children: [
                      Image.asset(
                        CoffeeData.coffeeList[index].image,
                        height: 170,
                        width: 170,
                        fit: BoxFit.fitHeight,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 65,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(20)),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 5,
                              ),
                              const Icon(
                                FontAwesomeIcons.solidStar,
                                color: Color(0xFFFBBE21),
                                size: 15,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                CoffeeData.coffeeList[index].rating.toString(),
                                style: GoogleFonts.sora(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      )
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  CoffeeData.coffeeList[index].name,
                  style: GoogleFonts.sora(
                      color: const Color(0xFF2F4B4E),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  CoffeeData.coffeeList[index].complement,
                  style: GoogleFonts.sora(
                      color: const Color(0xFFA9A9A9),
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${CoffeeData.coffeeList[index].price}",
                      style: GoogleFonts.sora(
                          color: const Color(0xFF2F4B4E),
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFC67C4E),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const DetailScreen(),
                                ));
                          },
                          icon: const Icon(
                            FontAwesomeIcons.plus,
                            color: Colors.white,
                          )),
                    ),
                  ],
                ),
                const Spacer()
              ],
            ),
          );
        },
      ),
    );
  }
}
