import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ],
              ),
              Image.asset(
                'assets/images/logo.png',
                height: 150,
                width: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'National Station',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/back.svg',
                    height: 40,
                    width: 40,
                  ),
                  const SizedBox(width: 20),
                  SvgPicture.asset(
                    'assets/images/playButton.svg',
                    height: 55,
                    width: 55,
                  ),
                  const SizedBox(width: 20),
                  SvgPicture.asset(
                    'assets/images/next.svg',
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
              const SizedBox(height: 50),
              const RadioChannelTile(),
              const SizedBox(height: 10),
              const RadioChannelTile(),
              const SizedBox(height: 10),
              const RadioChannelTile(),
              const SizedBox(height: 10),
              const RadioChannelTile()
            ],
          ),
        ));
  }
}

class RadioChannelTile extends StatelessWidget {
  const RadioChannelTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff404040),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Image.asset(
              'assets/images/radio.png',
              height: 25,
              width: 25,
              fit: BoxFit.contain,
            ),
            const Text(
              '    Western Region (Coming Soon)',
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
