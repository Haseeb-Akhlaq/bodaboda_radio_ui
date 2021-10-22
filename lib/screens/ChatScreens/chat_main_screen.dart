import 'package:bodaboda_radio/screens/ChatScreens/call_screen.dart';
import 'package:bodaboda_radio/screens/ChatScreens/camera_screen.dart';
import 'package:bodaboda_radio/screens/ChatScreens/notification_screen.dart';
import 'package:bodaboda_radio/screens/ChatScreens/status_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'chats_screen.dart';

class ChatMainScreen extends StatefulWidget {
  const ChatMainScreen({Key? key}) : super(key: key);

  @override
  State<ChatMainScreen> createState() => _ChatMainScreenState();
}

class _ChatMainScreenState extends State<ChatMainScreen> {
  int selectedIndex = 1;
  final PageController _pageController = PageController(initialPage: 1);

  void changeIndex({index}) {
    setState(() {
      selectedIndex = index;
      _pageController.animateToPage(selectedIndex,
          duration: const Duration(microseconds: 600), curve: Curves.linear);
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      'assets/images/notification.svg',
                      color: Colors.transparent,
                    ),
                    Image.asset('assets/images/logo.png'),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const NotificationsScreen()));
                      },
                      child: SvgPicture.asset('assets/images/notification.svg'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        selectedIndex = 0;
                        changeIndex(index: 0);
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            bottom: 1, right: 15, left: 15),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 3,
                              color: selectedIndex == 0
                                  ? Colors.white
                                  : Colors.transparent,
                            ),
                          ),
                        ),
                        child: const Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        selectedIndex = 1;
                        changeIndex(index: 1);
                      },
                      child: Container(
                        padding:
                            const EdgeInsets.only(bottom: 5, right: 8, left: 8),
                        decoration: BoxDecoration(
                            border: Border(
                          bottom: BorderSide(
                            width: 3,
                            color: selectedIndex == 1
                                ? Colors.white
                                : Colors.transparent,
                          ),
                        )),
                        child: const Text(
                          'Chats',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        selectedIndex = 2;
                        changeIndex(index: 2);
                      },
                      child: Container(
                        padding:
                            const EdgeInsets.only(bottom: 5, right: 8, left: 8),
                        decoration: BoxDecoration(
                            border: Border(
                          bottom: BorderSide(
                            width: 3,
                            color: selectedIndex == 2
                                ? Colors.white
                                : Colors.transparent,
                          ),
                        )),
                        child: const Text(
                          'Status',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        selectedIndex = 3;
                        changeIndex(index: 3);
                      },
                      child: Container(
                        padding:
                            const EdgeInsets.only(bottom: 5, right: 8, left: 8),
                        decoration: BoxDecoration(
                            border: Border(
                          bottom: BorderSide(
                            width: 3,
                            color: selectedIndex == 3
                                ? Colors.white
                                : Colors.transparent,
                          ),
                        )),
                        child: const Text(
                          'Calls',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
            child: PageView(
          // physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          children: const [
            CameraScreen(),
            ChatsScreen(),
            StatusScreen(),
            CallScreen(),
          ],
        )),
      ],
    );
  }
}
