import 'package:aspen_travel_app/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.centerRight,
                image: AssetImage("assets/images/splash.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Gradient Overlay
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.66, 1.0],
                colors: [
                  Color(0xFF211B1C).withValues(alpha: 0.1),
                  Color(0xFF385969).withValues(alpha: 0.6),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 402,
            left: 0,
            child: Image.asset(
              "assets/images/Ellipse 492.png",
            ),
          ),
          Positioned(
            top: 93,
            left: 60,
            right: 60,
            child: Text(
              "Aspen",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Hiatus",
                fontWeight: FontWeight.w400,
                fontSize: 140,
              ),
            ),
          ),
          Positioned(
            bottom: 124,
            left: 32,
            right: 32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Plan your",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                Text(
                  "Luxurious",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Vacation",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 24),

                // Get Started Button
              ],
            ),
          ),
          Positioned(
            bottom: 48,
            left: 32,
            right: 32,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    // Handle button tap
                    Navigator.push(context,MaterialPageRoute(builder: (context) => BottomNavbar()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 320,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(
                        stops: [0.0, 1.0],
                        colors: [
                          Color(0xFF176FF2),
                          Color(0xFF196EEE).withValues(alpha: 0.8),
                        ],
                      ),
                    ),
                    child: Text(
                      "Explore",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
