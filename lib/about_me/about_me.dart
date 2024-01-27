import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/about_me/drawer_image.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: bgColor,
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            const DrawerImage(),
            const Spacer(),
            Center(
              child: Text(
                'Naincy Kumari',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            const SizedBox(
              height: defaultPadding / 4,
            ),
            const Center(
              child: Text(
                'Computer Science & Engineering\nBP Poddar Institute of Management & Technology',
                style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
              ),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
