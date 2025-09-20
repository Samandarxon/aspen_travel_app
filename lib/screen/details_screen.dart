import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatefulWidget {
  final String image;

  const DetailsScreen(this.image, {super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool favorite = false;
  void _like() {
    setState(() {
      favorite = !favorite;
    });
  }

  List<Facility> facilities = [
    Facility(image: "assets/icons/wifi.svg", title: "1 Heater"),
    Facility(image: "assets/icons/food.svg", title: "Dinner"),
    Facility(image: "assets/icons/bath tub.svg", title: "1 Tub"),
    Facility(image: "assets/icons/Frame.svg", title: "Pool"),
  ];

  final Shader linearGradient = const LinearGradient(
    colors: <Color>[Color(0xFF176FF2), Color(0xFF196EEE)],
  ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          height: double.infinity,
          width: double.infinity,
          // color: Colors.amber,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 12, right: 12, left: 12),
                width: double.infinity,
                height: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    // image: AssetImage("assets/images/Rectangle 994.png"),
                    image: AssetImage(widget.image),
                    fit: BoxFit.cover,
                    alignment: Alignment(1, -0.5),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xffF3F8FE),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/Vector.svg",
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _like(),
                      child: Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          color: Color(0xffF3F8FE),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: favorite
                            ? Icon(
                                Icons.favorite_rounded,
                                color: Color(0xffEC5655),
                              )
                            : Icon(
                                Icons.favorite_border_rounded,
                                color: Color(0xffEC5655),
                              ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Coeurdes Alpes",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff232323),
                    ),
                  ),
                  TextButton(
                    clipBehavior: Clip.none,
                    onPressed: () {},
                    child: Text(
                      "Show map",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()..shader = linearGradient,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  const Icon(Icons.star, color: Color(0xffDF9652)),
                  Text(
                    "4.5 (355 Reviews)",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                "Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ....",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff3A544F),
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 48),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Facilities",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff232323),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    height: 74,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: facilities.length,
                      clipBehavior: Clip.none,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            print(facilities[index].title);
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 14),
                            width: 77,
                            height: 74,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xff176FF2).withValues(alpha: 0.05),
                                  Color(0xff196EEE).withValues(alpha: 0.05),
                                ],
                                stops: [0.0, 1.0],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(facilities[index].image),
                                const SizedBox(height: 6),
                                Text(
                                  facilities[index].title,
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xffB8B8B8),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 36),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Price",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff232323),
                        ),
                      ),
                      Text(
                        "\$199",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2DD7A4),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 64, vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(
                        colors: [Color(0xff176FF2), Color(0xff196EEE)],
                        stops: [0.0, 1.0],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff0038FF).withValues(alpha: 0.24),
                          spreadRadius: 0,
                          offset: Offset(0, 6),
                          blurRadius: 19
                        )
                      ]
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Book Now",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 10),
                        SvgPicture.asset("assets/icons/Arrow - Right.svg"),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Facility {
  String image;
  String title;
  Facility({required this.image, required this.title});
}
