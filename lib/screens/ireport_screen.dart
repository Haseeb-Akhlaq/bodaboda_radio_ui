import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IReportScreen extends StatelessWidget {
  const IReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
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
                    const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 28,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Image.asset('assets/images/i.png'),
        Expanded(
          child: Container(
            width: double.infinity,
            color: const Color(0xff2E2E2E),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Boda-Boda Radio iReport',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  const Text(
                    'Duis rhoncus dui venenatis consequat porttitor. Etiam aliquet congue consequat. In posuere, nunc sit amet laoreet blandit, urna sapien imperdiet lectus, et molestie sem tortor quis dui. Donec molestie nisi iaculis sodales mollis. Nullam non tellus sed elit pulvinar dignissim ut vel ex. Phasellus at leo sed est egestas posuere eu eget magna.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 130,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xffF15A26),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
