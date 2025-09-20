import 'package:aspen_travel_app/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int selectedPagesindex = 0;
  List pages = [
    HomeScreen(),
    Center(child: Text("Favorite screen")),
    Center(child: Text("Natification screen")),
    Center(child: Text("Profile screen")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedPagesindex],
      bottomNavigationBar: Container(
        height: 100,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xff186FF2).withValues(alpha: 0.05),
              spreadRadius: 0,
              blurRadius: 22,
              offset: Offset(15, -19), // changes position of shadow
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          child: BottomNavigationBar(
            currentIndex: selectedPagesindex,
            onTap: (value) {
              setState(() {
                selectedPagesindex = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  width: selectedPagesindex==0?30:20,
                  height: selectedPagesindex==0?30:20,
                  "assets/icons/Home.svg",
                  colorFilter: ColorFilter.mode(
                    selectedPagesindex == 0
                        ? Color(0xFF176FF2)
                        : Color(0xFFB8B8B8),
                    BlendMode.srcIn,
                  ),
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  width: selectedPagesindex==1?30:20,
                  height: selectedPagesindex==1?30:20,
                  "assets/icons/Ticket.svg",
                  colorFilter: ColorFilter.mode(
                    selectedPagesindex == 1
                        ? Color(0xFF176FF2)
                        : Color(0xFFB8B8B8),
                    BlendMode.srcIn,
                  ),
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  width: selectedPagesindex==2?30:20,
                  height: selectedPagesindex==2?30:20,
                  "assets/icons/Heart.svg",
                  colorFilter: ColorFilter.mode(
                    selectedPagesindex == 2
                        ? Color(0xFF176FF2)
                        : Color(0xFFB8B8B8),
                    BlendMode.srcIn,
                  ),
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  width: selectedPagesindex==3?30:20,
                  height: selectedPagesindex==3?30:20,
                  "assets/icons/Profile.svg",
                  colorFilter: ColorFilter.mode(
                    selectedPagesindex == 3
                        ? Color(0xFF176FF2)
                        : Color(0xFFB8B8B8),
                    BlendMode.srcIn,
                  ),
                ),
                label: "",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
