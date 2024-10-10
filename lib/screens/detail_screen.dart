import 'package:coffee_shop/components/detail_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Detail",
          style: GoogleFonts.sora(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
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
        actions: [
          IconButton(
            padding: const EdgeInsets.only(right: 20),
            iconSize: 30,
            icon: const Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      bottomSheet: const DetailBottomSheet(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("assets/images/coffee1.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Cappucino",
                                style: GoogleFonts.sora(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "with Chocolate",
                                style: GoogleFonts.sora(
                                  color: const Color(0xFF9B9B9B),
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Color(0xFFFBBE21),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    "4.8",
                                    style: GoogleFonts.sora(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text("(230)",
                                      style: GoogleFonts.sora(
                                        color: const Color(0xFF9B9B9B),
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("assets/icons/bean.png",
                                width: 50, height: 50),
                            const SizedBox(width: 10),
                            Image.asset("assets/icons/milk.png",
                                width: 50, height: 50),
                          ],
                        ))
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Divider(
                      endIndent: 10,
                      indent: 10,
                      thickness: 1,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Description",
                      style: GoogleFonts.sora(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ReadMoreText(
                      "A macchiato is an espresso coffee drink with a small amount of milk,"
                      " usually foamed. In Italian, macchiato means"
                      " stained or spotted so the literal translation of caffè macchiato is stained coffee, or coffee with a spot of milk.",
                      style: GoogleFonts.sora(
                        color: const Color(0xFF9B9B9B),
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                      trimMode: TrimMode.Line,
                      trimLines: 3,
                      colorClickableText: const Color(0xFFC67C4E),
                      trimCollapsedText: 'Show more',
                      trimExpandedText: 'Show less',
                      moreStyle: GoogleFonts.sora(
                        color: const Color(0xFFC67C4E),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      lessStyle: GoogleFonts.sora(
                        color: const Color(0xFFC67C4E),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Size",
                      style: GoogleFonts.sora(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        for (var size in sizes)
                          Expanded(
                            child: Container(
                              height: 60,
                              margin: const EdgeInsets.only(right: 10),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                color: size == sizes[1]
                                    ? const Color(0xFFC67C4E).withOpacity(0.2)
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: size == sizes[1]
                                    ? Border.all(
                                        color: const Color(0xFFC67C4E),
                                      )
                                    : Border.all(color: Colors.grey),
                              ),
                              child: Center(
                                child: Text(
                                  size,
                                  style: GoogleFonts.sora(
                                    color: size == sizes[1]
                                        ? const Color(0xFFC67C4E)
                                        : Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }

  static List<String> sizes = ["S", "M", "L"];
}
