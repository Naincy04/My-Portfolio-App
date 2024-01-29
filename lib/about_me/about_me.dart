import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/app_colors.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/about_me/drawer_image.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/projects/components/title_text.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

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
              const TitleText(prefix: '', title: 'About Me'),
              const SizedBox(height: defaultPadding),
              Responsive.isLargeMobile(context)
                  ? _buildContentColumn(w)
                  : _buildContentRow(w),
              const SizedBox(height: defaultPadding / 8),
              Padding(
                padding: Responsive.isLargeMobile(context)
                    ? const EdgeInsets.only(left: defaultPadding * 2)
                    : const EdgeInsets.only(left: defaultPadding * 4),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, \nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: primaryColor,
                        fontSize: 16,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContentColumn(double w) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: defaultPadding * 2),
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.white,
                height: 1.2,
                fontSize: w / 20,
                fontWeight: FontWeight.bold,
              ),
              children: [
                const TextSpan(text: 'Crafting code to bring ideas to\n'),
                TextSpan(
                  text: 'life',
                  style: TextStyle(color: AppColors.purple),
                ),
                const TextSpan(text: '...'),
              ],
            ),
          ),
        ),
        const SizedBox(height: defaultPadding),
        const DrawerImage(),
        const SizedBox(height: defaultPadding * 2),
        // const Spacer(),
      ],
    );
  }

  Widget _buildContentRow(double w) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: defaultPadding * 4),
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.white,
                height: 1.2,
                fontSize: w / 20,
                fontWeight: FontWeight.bold,
              ),
              children: [
                const TextSpan(text: 'Crafting code to bring\n'),
                const TextSpan(text: 'ideas to '),
                TextSpan(
                  text: 'life',
                  style: TextStyle(color: AppColors.purple),
                ),
                const TextSpan(text: '...'),
              ],
            ),
          ),
        ),
        const Spacer(
          flex: 2,
        ),
        const DrawerImage(),
        const Spacer(),
      ],
    );
  }
}
