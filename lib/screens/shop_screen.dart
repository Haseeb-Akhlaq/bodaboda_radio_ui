import 'package:bodaboda_radio/Models/shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShopsScreen extends StatefulWidget {
  const ShopsScreen({Key? key}) : super(key: key);

  @override
  State<ShopsScreen> createState() => _ShopsScreenState();
}

class _ShopsScreenState extends State<ShopsScreen> {
  List shops = [
    Shop(
      name: 'Boda-Boda',
      substring: 'Motor Cycles for carrying passengers',
      image: 'assets/images/motorbike.svg',
    ),
    Shop(
      name: 'Tuk Tuk',
      substring: 'Motor Cycles for carrying passengers',
      image: 'assets/images/tuk-tuk.svg',
    ),
    Shop(
      name: 'PSV Matatu or Bus',
      substring: 'PSV Matatu or Bus',
      image: 'assets/images/bus.svg',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
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
        Expanded(
            child: Container(
          color: const Color(0xff2E2E2E),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Shop',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: ListTile(
                      leading: Image.asset('assets/images/car.png'),
                      title: const Text(
                        'Private Vehicle',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      subtitle: const Text(
                        'Private Vehicle for personal use only',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ...shops.map((e) => Column(
                      children: [
                        ShopTile(
                          shop: e,
                        ),
                        const SizedBox(height: 30),
                      ],
                    )),
              ],
            ),
          ),
        ))
      ],
    );
  }
}

class ShopTile extends StatelessWidget {
  final Shop? shop;

  const ShopTile({Key? key, this.shop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: ListTile(
          leading: SvgPicture.asset(shop!.image!),
          title: Text(
            shop!.name!,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          subtitle: Text(
            shop!.substring!,
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}
