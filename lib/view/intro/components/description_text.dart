import 'package:flutter/material.dart';

import '../../../view model/responsive.dart';

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText(
      {super.key, required this.start, required this.end});
  final double start;
  final double end;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Text(
          'I\'m capable of creating excellent mobile apps, with almost a year of${Responsive.isLargeMobile(context) ? '\n' : ''}hands-on experience,${!Responsive.isLargeMobile(context) ? '\n' : ''}utilizing diverse projects to enhance skills.',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style:
              TextStyle(color: Colors.white70, wordSpacing: 2, fontSize: value),
        );
      },
    );
  }
}
