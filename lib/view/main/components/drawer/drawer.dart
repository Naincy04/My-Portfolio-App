import 'package:flutter/material.dart';
import 'package:flutter_portfolio/about_me/contact_icons.dart';
import 'package:flutter_portfolio/view/main/components/drawer/column_nav_bar.dart';
import '../../../../res/constants.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
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
