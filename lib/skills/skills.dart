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
                      // const Knowledges(),
                      SizedBox(
                        height: 100,
                        child: Column(
                          children: [
                            Card(
                              elevation: 3,
                              shadowColor:
                                  const Color.fromARGB(255, 100, 99, 99),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              color: const Color.fromARGB(255, 0, 0, 0),
                              child: Row(
                                children: [
                                  SizedBox(
                                      width: 100,
                                      height: 75,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: Image.asset(
                                          "assets/images/flutter.png",
                                        ),
                                      )),
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(4, 8, 16, 8),
                                    child: Text(
                                      "Premiere\nPro",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              elevation: 3,
                              shadowColor:
                                  const Color.fromARGB(255, 100, 99, 99),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              color: const Color.fromARGB(255, 0, 0, 0),
                              child: Row(
                                children: [
                                  SizedBox(
                                      width: 100,
                                      height: 75,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: Image.asset(
                                          "assets/images/canva.png",
                                        ),
                                      )),
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(4, 8, 16, 8),
                                    child: Text(
                                      "Illustrator",
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Card(
                              elevation: 3,
                              shadowColor:
                                  const Color.fromARGB(255, 100, 99, 99),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              color: const Color.fromARGB(255, 0, 0, 0),
                              child: Row(
                                children: [
                                  SizedBox(
                                      width: 100,
                                      height: 75,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: Image.asset(
                                          'assets/images/git.png',
                                        ),
                                      )),
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(4, 8, 16, 8),
                                    child: Text(
                                      "Git",
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Card(
                              elevation: 3,
                              shadowColor:
                                  const Color.fromARGB(255, 100, 99, 99),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              color: const Color.fromARGB(255, 0, 0, 0),
                              child: Row(
                                children: [
                                  SizedBox(
                                      width: 100,
                                      height: 75,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: Image.asset(
                                          "assets/images/flutter.png",
                                        ),
                                      )),
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(4, 8, 16, 8),
                                    child: Text(
                                      "Flutter",
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Card(
                              elevation: 3,
                              shadowColor:
                                  const Color.fromARGB(255, 100, 99, 99),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              color: const Color.fromARGB(255, 0, 0, 0),
                              child: Row(
                                children: [
                                  SizedBox(
                                      width: 100,
                                      height: 75,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: Image.asset(
                                          "assets/images/dart.png",
                                        ),
                                      )),
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(4, 8, 16, 8),
                                    child: Text(
                                      "Dart",
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]))));
  }
}
