import 'package:flutter/material.dart';
import 'package:flutter_portfolio/about_me/about_me.dart';
import 'package:flutter_portfolio/academics/academics.dart';
import 'package:flutter_portfolio/contacts/contact_me.dart';
import 'package:flutter_portfolio/experience/experience.dart';
import 'package:flutter_portfolio/skills/skills.dart';
import 'package:flutter_portfolio/view/intro/introduction.dart';
import 'package:flutter_portfolio/view/main/main_view.dart';
import 'package:flutter_portfolio/view/projects/project_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainView(pages: [
      const Introduction(),
      const AboutMe(),

      // Certifications(),
      Academics(),
      const Skills(),
      ProjectsView(),
      const Experience(),
      const ContactMe(),
    ]);
  }
}
