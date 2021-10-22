import 'package:bodaboda_radio/constants/colors.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.main,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.main,
        toolbarHeight: 30,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Notifications ',
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColors.textUnselected,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: const Text('5'),
                )
              ],
            ),
            const SizedBox(height: 15),
            const Text(
              'Today',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.textUnselected,
              ),
            ),
            const SizedBox(height: 15),
            const Notification(),
            const SizedBox(height: 15),
            const Notification(),
            const SizedBox(height: 20),
            const Text(
              'Yesterday',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.textUnselected,
              ),
            ),
            const SizedBox(height: 20),
            const Notification(),
            const SizedBox(height: 15),
            const Notification(),
            const SizedBox(height: 15),
            const Notification(),
          ],
        ),
      ),
    );
  }
}

class Notification extends StatelessWidget {
  const Notification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          color: const Color(0xff404040),
          borderRadius: BorderRadius.circular(5)),
      child: const Text(
        'Phasellus finibus enim nulla, quis ornare odio facilisis eu. Suspendisse ornare ante.',
        style: TextStyle(
          fontSize: 14,
          color: AppColors.textUnselected,
        ),
      ),
    );
  }
}
