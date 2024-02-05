import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/skills/knowledges.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/projects/components/title_text.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1.23,
        child: Container(
            color: bgColor,
            child: Padding(
                padding: const EdgeInsets.only(
                  top: defaultPadding / 2,
                  left: defaultPadding,
                  right: defaultPadding,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      if (Responsive.isLargeMobile(context))
                        const SizedBox(height: defaultPadding),
                      const TitleText(prefix: '', title: 'Skills'),
                      const SizedBox(height: defaultPadding),
                      const Knowledges(),
                    ]))));
  }
}
