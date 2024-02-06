import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view%20model/controller.dart';
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: defaultPadding),
              Image(image: Image.asset('assets/images/image.png').image),
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
              Container(
                height: 45,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.blue,
                        offset: Offset(0, -1),
                        blurRadius: 5),
                    BoxShadow(
                        color: Colors.red, offset: Offset(0, 1), blurRadius: 5),
                  ],
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.pink,
                        Colors.blue.shade900,
                      ]),
                ),
                child: NavigationTextButton(
                  onTap: () {
                    controller.animateToPage(0,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  text: 'Home',
                ),
              ),
              const SizedBox(height: defaultPadding),
              Container(
                height: 45,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.blue,
                        offset: Offset(0, -1),
                        blurRadius: 5),
                    BoxShadow(
                        color: Colors.red, offset: Offset(0, 1), blurRadius: 5),
                  ],
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.pink,
                        Colors.blue.shade900,
                      ]),
                ),
                child: NavigationTextButton(
                    onTap: () {
                      controller.animateToPage(1,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    text: 'About Me'),
              ),
              const SizedBox(height: defaultPadding),
              Container(
                height: 45,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.blue,
                        offset: Offset(0, -1),
                        blurRadius: 5),
                    BoxShadow(
                        color: Colors.red, offset: Offset(0, 1), blurRadius: 5),
                  ],
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.pink,
                        Colors.blue.shade900,
                      ]),
                ),
                child: NavigationTextButton(
                    onTap: () {
                      controller.animateToPage(2,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    text: 'Education'),
              ),
              const SizedBox(height: defaultPadding),
              Center(
                child: Container(
                  height: 45,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.blue,
                          offset: Offset(0, -1),
                          blurRadius: 5),
                      BoxShadow(
                          color: Colors.red,
                          offset: Offset(0, 1),
                          blurRadius: 5),
                    ],
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.pink,
                          Colors.blue.shade900,
                        ]),
                  ),
                  child: NavigationTextButton(
                    onTap: () {
                      controller.animateToPage(3,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    text: 'Skills',
                  ),
                ),
              ),
              const SizedBox(height: defaultPadding),
              Container(
                height: 45,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.blue,
                        offset: Offset(0, -1),
                        blurRadius: 5),
                    BoxShadow(
                        color: Colors.red, offset: Offset(0, 1), blurRadius: 5),
                  ],
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.pink,
                        Colors.blue.shade900,
                      ]),
                ),
                child: NavigationTextButton(
                    onTap: () {
                      controller.animateToPage(4,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    text: 'Project'),
              ),
              const SizedBox(height: defaultPadding),
              Container(
                height: 45,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.blue,
                        offset: Offset(0, -1),
                        blurRadius: 5),
                    BoxShadow(
                        color: Colors.red, offset: Offset(0, 1), blurRadius: 5),
                  ],
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.pink,
                        Colors.blue.shade900,
                      ]),
                ),
                child: NavigationTextButton(
                  onTap: () {
                    controller.animateToPage(5,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  text: 'Experience',
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
