import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/controller.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/main/components/navigation_button.dart';

class ColumnNavigationBar extends StatelessWidget {
  const ColumnNavigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: Column(
            children: [
              NavigationTextButton(
                onTap: () {
                  controller.animateToPage(0,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                text: 'Home',
              ),
              NavigationTextButton(
                  onTap: () {
                    controller.animateToPage(1,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  text: 'About Me'),
              NavigationTextButton(
                  onTap: () {
                    controller.animateToPage(2,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  text: 'Education'),
              NavigationTextButton(
                onTap: () {
                  controller.animateToPage(3,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                text: 'Skills',
              ),
              NavigationTextButton(
                  onTap: () {
                    controller.animateToPage(4,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  text: 'Project'),
              NavigationTextButton(
                onTap: () {
                  controller.animateToPage(5,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                text: 'Experience',
              ),
              NavigationTextButton(
                  onTap: () {
                    controller.animateToPage(6,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  text: 'Contact Me'),
            ],
          ),
        );
      },
    );
  }
}
