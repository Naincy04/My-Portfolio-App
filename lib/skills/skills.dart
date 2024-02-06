import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
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
                      const SizedBox(height: defaultPadding * 2),

                      Expanded(
                          child: Responsive(
                              desktop: SkillsSection(
                                crossAxisCount: 4,
                                ratio: 3,
                              ),
                              extraLargeScreen: SkillsSection(
                                crossAxisCount: 5,
                                ratio: 3,
                              ),
                              largeMobile:
                                  SkillsSection(crossAxisCount: 2, ratio: 2),
                              mobile:
                                  SkillsSection(crossAxisCount: 2, ratio: 3),
                              tablet: SkillsSection(
                                ratio: 1.4,
                                crossAxisCount: 3,
                              )))
                      // const Knowledges(),
                    ]))));
  }
}

class SkillsSection extends StatelessWidget {
  final List<SkillItem> skills = [
    SkillItem(imagePath: "assets/images/flutter.png", title: "Flutter"),
    SkillItem(imagePath: "assets/images/dart.png", title: "Dart"),
    SkillItem(imagePath: "assets/images/firebase.png", title: "Firebase"),
    SkillItem(imagePath: "assets/images/figma.png", title: "Figma"),
    SkillItem(imagePath: 'assets/images/git.png', title: "Git"),
    SkillItem(imagePath: "assets/images/github.png", title: "Github"),
    SkillItem(imagePath: "assets/images/c.png", title: "C"),
    SkillItem(imagePath: "assets/images/cpp.png", title: "C++"),
    SkillItem(imagePath: "assets/images/java.png", title: "Java"),
    SkillItem(imagePath: "assets/images/python.png", title: "Python"),
    SkillItem(imagePath: "assets/images/html.png", title: "HTML"),
    SkillItem(imagePath: "assets/images/css.png", title: "CSS"),
    SkillItem(imagePath: "assets/images/js.png", title: "JavaScript"),
    SkillItem(imagePath: "assets/images/sql.png", title: "MySQL"),
  ];
  final int crossAxisCount;
  final double ratio;

  SkillsSection({super.key, required this.crossAxisCount, required this.ratio});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: ratio,
          mainAxisSpacing: 10,
          crossAxisSpacing: Responsive.isLargeMobile(context) ? 5 : 10,
        ),
        itemCount: skills.length,
        itemBuilder: (context, index) {
          return CardItem(skill: skills[index]);
        },
      ),
    );
  }
}

class SkillItem {
  final String imagePath;
  final String title;

  SkillItem({required this.imagePath, required this.title});
}

class CardItem extends StatelessWidget {
  final SkillItem skill;

  const CardItem({Key? key, required this.skill}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 20,
      width: MediaQuery.sizeOf(context).width / 10,
      margin:
          const EdgeInsets.symmetric(vertical: 20, horizontal: defaultPadding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(colors: [
            Colors.pinkAccent,
            Colors.blue,
          ]),
          boxShadow: const [
            BoxShadow(
              color: Colors.pink,
              offset: Offset(-2, 0),
              blurRadius: 5,
            ),
            BoxShadow(
              color: Colors.blue,
              offset: Offset(2, 0),
              blurRadius: 5,
            ),
          ]),
      child: Card(
        elevation: 3,
        // shadowColor: const Color.fromARGB(255, 100, 99, 99),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        color: const Color.fromARGB(255, 0, 0, 0),
        child: Row(
          children: [
            SizedBox(
              width: Responsive.isLargeMobile(context) ? 70 : 90,
              height: Responsive.isLargeMobile(context) ? 40 : 55,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset(skill.imagePath),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Text(
                skill.title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: Responsive.isLargeMobile(context) ? 16 : 20,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
