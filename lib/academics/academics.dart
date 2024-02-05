import 'package:flutter/material.dart';
import 'package:flutter_portfolio/academics/animated_timeline_item.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view/projects/components/title_text.dart';

class AcademicDetail {
  final String degree;
  final String institution;
  final String duration;

  AcademicDetail(
      {required this.degree,
      required this.institution,
      required this.duration});
}

class Academics extends StatelessWidget {
  final List<AcademicDetail> academicDetails = [
    AcademicDetail(
      degree: 'Bachelor of Science',
      institution: 'XYZ University',
      duration: '2018 - 2022',
    ),
    AcademicDetail(
      degree: 'High School Diploma',
      institution: 'ABC School',
      duration: '2014 - 2018',
    ),
    AcademicDetail(
      degree: ' School Diploma',
      institution: 'ABC School',
      duration: '2014 - 2018',
    ),
    // Add more academic details as needed
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const SizedBox(height: defaultPadding),
          const TitleText(prefix: '', title: 'Academics'),
          const SizedBox(height: defaultPadding),
          AnimatedList(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            initialItemCount: academicDetails.length,
            itemBuilder: (context, index, animation) {
              return AnimatedTimelineItem(
                academicDetail: academicDetails[index],
                delay: Duration(milliseconds: 200 * index),
                index: index,
              );
            },
          ),
        ],
      ),
    );
  }
}
