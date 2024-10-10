import 'package:coffee_shop/components/order_bottom_sheet.dart';
import 'package:coffee_shop/components/order_top_menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomSheet: const OrderBottomSheet(),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          padding: const EdgeInsets.only(left: 20),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Order",
          style: GoogleFonts.sora(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const OrderTopMenu(),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Delivery Address",
                    style: GoogleFonts.sora(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Jl. Kpg Sutoyo",
                    style: GoogleFonts.sora(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.",
                    style: GoogleFonts.sora(
                      color: const Color(0xFF808080),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFFDEDEDE),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            const Icon(FontAwesomeIcons.penToSquare),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("Edit Address",
                                style: GoogleFonts.sora(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFFDEDEDE),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.sticky_note_2_outlined),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("Add Note",
                                style: GoogleFonts.sora(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xFFDEDEDE),
                            ),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/coffee1.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Cappucino",
                                style: GoogleFonts.sora(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text(
                              "with Chocolate",
                              style: GoogleFonts.sora(
                                  color: const Color(0xFF9B9B9B), fontSize: 14),
                            ),
                          ],
                        ),
                        const Spacer(),
                        IconButton(
                          style: ButtonStyle(
                            padding: WidgetStateProperty.all(
                              const EdgeInsets.all(0),
                            ),
                            shape: WidgetStateProperty.all(const CircleBorder(
                              side: BorderSide(
                                color: Color(0xFFDEDEDE),
                              ),
                            )),
                          ),
                          iconSize: 20,
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.minus,
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("1",
                              style: GoogleFonts.sora(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        IconButton(
                          style: ButtonStyle(
                            padding: WidgetStateProperty.all(
                              const EdgeInsets.all(0),
                            ),
                            shape: WidgetStateProperty.all(const CircleBorder(
                              side: BorderSide(
                                color: Color(0xFFDEDEDE),
                              ),
                            )),
                          ),
                          iconSize: 20,
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.plus,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Color(0xFFF4F4F4),
              thickness: 4,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFFDEDEDE),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.discount_rounded,
                          color: Color(0xFFC67C4E),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "1 Discount is applied",
                          style: GoogleFonts.sora(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            iconSize: 30,
                            icon: const Icon(
                              Icons.navigate_next,
                              color: Colors.black,
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Payment Summary",
                    style: GoogleFonts.sora(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Price",
                        style: GoogleFonts.sora(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "\$4.53",
                        style: GoogleFonts.sora(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Delivery Fee",
                        style: GoogleFonts.sora(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "\$2.00",
                        style: GoogleFonts.sora(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "\$1.00",
                        style: GoogleFonts.sora(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Divider(),
                  ),
                  Row(
                    children: [
                      Text(
                        "Total Payment",
                        style: GoogleFonts.sora(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "\$5.53",
                        style: GoogleFonts.sora(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
