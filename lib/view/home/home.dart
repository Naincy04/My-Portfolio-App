import 'package:flutter/material.dart';
import 'package:flutter_portfolio/about_me/about_me.dart';
import 'package:flutter_portfolio/acheivements/achievements.dart';
import 'package:flutter_portfolio/view/certifications/certifications.dart';
import 'package:flutter_portfolio/view/intro/introduction.dart';
import 'package:flutter_portfolio/view/main/main_view.dart';
import 'package:flutter_portfolio/view/projects/project_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainView(pages: [
      const Introduction(),
      AboutMe(),
      ProjectsView(),
      Certifications(),
      Achievements(),
    ]);
  }
}
