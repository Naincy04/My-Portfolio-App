import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';

import '../res/constants.dart';

class DrawerImage extends StatelessWidget {
  const DrawerImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: Responsive.isLargeMobile(context)
            ? 200
            : 400, // Adjusted height conditionally based on screen size
        width: Responsive.isLargeMobile(context) ? 200 : 400,
        padding: const EdgeInsets.all(defaultPadding / 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(250),
          gradient: LinearGradient(
            colors: [
              Colors.pink,
              Colors.blue.shade900,
            ],
          ),
          boxShadow: const [
            BoxShadow(color: Colors.pink, blurRadius: 15, offset: Offset(0, 2)),
            BoxShadow(
                color: Colors.blue, blurRadius: 15, offset: Offset(0, -2)),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(250),
          child: Transform.rotate(
            angle: 0.1,
            child: Image.asset(
              'assets/images/profile.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
