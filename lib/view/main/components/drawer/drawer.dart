import 'package:flutter/material.dart';
import 'package:flutter_portfolio/about_me/about_me.dart';
import 'package:flutter_portfolio/about_me/contact_icons.dart';
import 'package:flutter_portfolio/about_me/personal_info.dart';
import 'package:flutter_portfolio/view/main/components/drawer/column_nav_bar.dart';
import 'package:flutter_portfolio/view/main/components/navigation_button_list.dart';
import '../../../../res/constants.dart';
import '../../../../about_me/knowledges.dart';

import '../../../../about_me/my_skill.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: primaryColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: bgColor,
              child: const Padding(
                padding: EdgeInsets.all(defaultPadding / 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: defaultPadding,
                    ),
                    ColumnNavigationBar(),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    ContactIcon(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
