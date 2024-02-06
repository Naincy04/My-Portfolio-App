import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view%20model/controller.dart';
import 'package:flutter_portfolio/view/main/components/navigation_button.dart';

class ColumnNavigationBar extends StatelessWidget {
  const ColumnNavigationBar();

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: defaultPadding),
              Image(image: AssetImage('assets/images/image.png')),
              const SizedBox(height: defaultPadding),
              const Text(
                "Naincy Kumari",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: defaultPadding * 2),
              buildNavigationButton(context, 'Home', 0),
              buildNavigationButton(context, 'About Me', 1),
              buildNavigationButton(context, 'Academics', 2),
              buildNavigationButton(context, 'Skills', 3),
              buildNavigationButton(context, 'Project', 4),
              buildNavigationButton(context, 'Experience', 5),
            ],
          ),
        );
      },
    );
  }

  Widget buildNavigationButton(BuildContext context, String text, int index) {
    return GestureDetector(
      onTap: () {
        controller.animateToPage(index,
            duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
        Navigator.of(context).pop(); // Close the drawer
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
        child: Container(
          height: 45,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                  color: Colors.blue, offset: Offset(0, -1), blurRadius: 5),
              BoxShadow(color: Colors.red, offset: Offset(0, 1), blurRadius: 5),
            ],
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.pink,
                  Colors.blue.shade900,
                ]),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
