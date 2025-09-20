import 'package:aspen_travel_app/screen/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> categories = [
    "Location",
    "Hotels",
    "Food",
    "Adventure",
    "Adventure",
  ];

  final List<PopularCard> popularCards = [
    PopularCard(
      image: "assets/images/Rectangle 992.png",
      title: "Alley Palace",
      star: 4.1,
    ),
    PopularCard(
      image: "assets/images/Rectangle 994.png",
      title: "Coeurdes Alpes",
      star: 4.5,
    ),
    PopularCard(
      image: "assets/images/Rectangle 992.png",
      title: "Alley Palace",
      star: 4.1,
    ),
    PopularCard(
      image: "assets/images/Rectangle 994.png",
      title: "Coeurdes Alpes",
      star: 4.5,
    ),
  ];

  final List<Recommended> recommendeds = [
    Recommended(
      "assets/images/Rectangle 991.png",
      "4N/5D",
      "Explore Aspen",
      "Hot Deal",
      "assets/icons/shape2.svg",
    ),
    Recommended(
      "assets/images/Rectangle 990.png",
      "2N/3D",
      "Luxurious Aspen",
      "Hot Deal",
      "assets/icons/shape2.svg",
    ),
    Recommended(
      "assets/images/Rectangle 991.png",
      "4N/5D",
      "Explore Aspen",
      "Hot Deal",
      "assets/icons/shape2.svg",
    ),
    Recommended(
      "assets/images/Rectangle 990.png",
      "2N/3D",
      "Luxurious Aspen",
      "Hot Deal",
      "assets/icons/shape2.svg",
    ),
  ];

  int selectedCategoryIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 44, left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Explore",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Aspen",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/location-1.svg",
                            width: 16,
                            height: 16,
                          ),
                          const SizedBox(width: 6),
                          Text(
                            "Aspen, USA",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff606060),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(width: 6),
                          SvgPicture.asset(
                            "assets/icons/Arrow - Down 2.svg",
                            width: 16,
                            height: 16,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    height: 52,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffF3F8FE),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(
                            left: 16,
                            top: 16,
                            bottom: 16,
                          ),
                          child: SvgPicture.asset("assets/icons/Search.svg"),
                        ),
                        hintText: "Find things to do",
                        hintStyle: TextStyle(
                          fontSize: 13,
                          color: Color(0xffB8B8B8),
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  SizedBox(
                    height: 41,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories
                          .length, // "Opting x 4 Hug" uchun 4 ta element
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedCategoryIndex = index;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 14),
                            width: 100,
                            height: 41,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(33),
                              gradient: selectedCategoryIndex == index
                                  ? LinearGradient(
                                      colors: [
                                        Color(0xFF176FF2).withValues(alpha: 0.05),
                                        Color(0xFF196EEE).withValues(alpha: 0.05),
                                      ],
                                    )
                                  : null,
                            ),
                            child: Center(
                              child: Text(
                                categories[index],
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: selectedCategoryIndex == index
                                      ? FontWeight.bold
                                      : FontWeight.w400,
                                  color: selectedCategoryIndex == index
                                      ? Color(0xFF176FF2)
                                      : Color(0xFFB8B8B8),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff232323),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "See all",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff176FF2),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 240,
                    child: ListView.builder(
                      clipBehavior: Clip.none,
                      scrollDirection: Axis.horizontal,
                      itemCount: popularCards.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsScreen(popularCards[index].image),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 16),
                            width: 188,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              borderRadius: BorderRadius.circular(24),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xff2481D8).withValues(alpha: 0.29),
                                    spreadRadius: 0,
                                    blurRadius: 25.79,
                                    offset: Offset(0, 11.05),

                                )
                              ]
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        popularCards[index].image,
                                      ),
                                    ),
                                  ),
                                ),
                               Positioned(
                                  bottom: 12,
                                  left: 12,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 12,
                                          vertical: 4,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xff4D5652),
                                          borderRadius: BorderRadius.circular(
                                            59,
                                          ),
                                        ),
                                        child: Text(
                                          popularCards[index].title,
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      TextButton(
                                        onPressed: () {},
                                        style: TextButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                          minimumSize: Size(61, 27),
                                          tapTargetSize: MaterialTapTargetSize
                                              .shrinkWrap,
                                        ),
                                        child: Container(
                                          width: 61,
                                          height: 27,
                                          decoration: BoxDecoration(
                                            color: Color(0xff4D5652),
                                            borderRadius:
                                                BorderRadius.circular(59),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                "assets/icons/shape.svg",
                                                width: 12,
                                                height: 12,
                                              ),
                                              const SizedBox(width: 6),
                                              Text(
                                                popularCards[index].star
                                                    .toString(),
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Text(
                        "Recommended",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff232323),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 154,
                    child: ListView.builder(
                      itemCount: recommendeds.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsScreen(recommendeds[index].image),
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.all(4),
                            width: 174,
                            margin: EdgeInsets.only(right: 16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                color: Color(0xFFF4F4F4),
                                width: 1,
                              ),
                              gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                stops: [0.0, 1.0], // 0% dan 100% gacha
                                colors: [
                                  Color(0xFFFFFFFF), // 0% - FFFFFF (oq)
                                  Color(
                                    0xFFF5F5F5,
                                  ), // 100% - F5F5F5 (och kulrang)
                                ],
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 102,
                                  width: 166,
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        height: 96,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          image: DecorationImage(
                                            alignment: Alignment.center,
                                            image: AssetImage(
                                              recommendeds[index].image,
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: -6,
                                        right: 15,
                                        child: Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: Color(0xff3A544F),
                                            borderRadius: BorderRadius.circular(
                                              100,
                                            ),
                                            border: Border.all(
                                              color: Colors.white,
                                              width: 2,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 4,
                                              vertical: 2,
                                            ),
                                            child: Text(
                                              recommendeds[index].duration,
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Container(
                                  padding: EdgeInsets.only(left: 4, bottom: 4),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        recommendeds[index].title,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff232323),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            recommendeds[index].icon,
                                          ),
                                          const SizedBox(width: 4),
                                          Text(
                                            recommendeds[index].type,
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff232323),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                // const SizedBox(height: 8),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PopularCard {
  String image;
  String title;
  double star;
  PopularCard({required this.image, required this.title, required this.star});
}

class Recommended {
  String title;
  String type;
  String duration;
  String image;
  String icon;
  Recommended(this.image, this.duration, this.title, this.type, this.icon);
}
