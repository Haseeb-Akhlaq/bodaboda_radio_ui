import 'package:bodaboda_radio/constants/colors.dart';
import 'package:bodaboda_radio/screens/ChatScreens/chat_main_screen.dart';
import 'package:bodaboda_radio/screens/ireport_screen.dart';
import 'package:bodaboda_radio/screens/radio_screen.dart';
import 'package:bodaboda_radio/screens/shop_screen.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;
  final PageController _pageController = PageController();

  void changeIndex({index}) {
    setState(() {
      selectedIndex = index;
      _pageController.animateToPage(selectedIndex,
          duration: const Duration(microseconds: 600), curve: Curves.linear);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            children: const [
              RadioScreen(),
              ChatMainScreen(),
              IReportScreen(),
              ShopsScreen(),
            ],
          )),
          Container(
            color: AppColors.main,
            height: 65,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                    changeIndex(index: selectedIndex);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: selectedIndex == 0
                            ? Colors.white
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 5,
                      ),
                      child: Text(
                        'Radio',
                        style: TextStyle(
                          fontSize: 15,
                          color: selectedIndex == 0
                              ? Colors.black
                              : AppColors.textUnselected,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                    changeIndex(index: selectedIndex);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: selectedIndex == 1
                            ? Colors.white
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 5,
                      ),
                      child: Text(
                        'Chat',
                        style: TextStyle(
                          fontSize: 15,
                          color: selectedIndex == 1
                              ? Colors.black
                              : AppColors.textUnselected,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 2;
                    });
                    changeIndex(index: selectedIndex);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: selectedIndex == 2
                            ? Colors.white
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 5,
                      ),
                      child: Text(
                        'iReport',
                        style: TextStyle(
                          fontSize: 15,
                          color: selectedIndex == 2
                              ? Colors.black
                              : AppColors.textUnselected,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 3;
                    });
                    changeIndex(index: selectedIndex);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: selectedIndex == 3
                            ? Colors.white
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 5,
                      ),
                      child: Text(
                        'Shop',
                        style: TextStyle(
                          fontSize: 15,
                          color: selectedIndex == 3
                              ? Colors.black
                              : AppColors.textUnselected,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
