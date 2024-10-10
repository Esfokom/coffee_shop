import 'package:coffee_shop/data/coffee_data.dart';
import 'package:coffee_shop/screens/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        height: 100,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              iconSize: 35,
              icon: const Icon(
                FontAwesomeIcons.house,
                color: Color(0xFFC67C4E),
              ),
            ),
            IconButton(
              onPressed: () {},
              iconSize: 35,
              icon: const Icon(Icons.shopping_bag, color: Colors.grey),
            ),
            IconButton(
              onPressed: () {},
              iconSize: 35,
              icon: const Icon(Icons.shopping_cart, color: Colors.grey),
            ),
            IconButton(
              onPressed: () {},
              iconSize: 35,
              icon: const Icon(Icons.notifications, color: Colors.grey),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 40),
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xFF313131),
                  Color(0xFF131313),
                ], begin: Alignment.centerLeft, end: Alignment.topRight),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
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
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: double.infinity,
                    height: 70,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
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
                              FontAwesomeIcons.search,
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
                  )
                ],
              ),
            ),
          ),
          Expanded(
              flex: 6,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
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
                                  padding: WidgetStateProperty.all(
                                      const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 8)),
                                  shape: WidgetStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30))),
                                  backgroundColor: WidgetStateProperty.all(
                                      index == 0
                                          ? const Color(0xFFC67C4E)
                                          : Colors.white),
                                ),
                                child: Text(
                                  CoffeeData.coffee_types[index],
                                  style: GoogleFonts.sora(
                                      color: index == 0
                                          ? Colors.white
                                          : const Color(0xFF2F4B4E),
                                      fontSize: 16,
                                      fontWeight: index == 0
                                          ? FontWeight.w600
                                          : FontWeight.w500),
                                )),
                          );
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.95,
                      child: GridView.builder(
                        padding: const EdgeInsets.only(bottom: 120),
                        scrollDirection: Axis.vertical,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisExtent: 300, crossAxisCount: 2),
                        itemCount: CoffeeData.coffeeList.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
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
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            borderRadius:
                                                const BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(20)),
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
                                                CoffeeData
                                                    .coffeeList[index].rating
                                                    .toString(),
                                                style: GoogleFonts.sora(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.bold),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                                  builder: (context) =>
                                                      const DetailScreen(),
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
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
