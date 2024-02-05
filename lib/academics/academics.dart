import 'package:flutter/material.dart';
import 'package:flutter_portfolio/academics/animated_timeline_item.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view/projects/components/title_text.dart';

class AcademicDetail {
  final String degree;
  final String institution;
  final String duration;
  final String grade;

  AcademicDetail({
    required this.grade,
    required this.degree,
    required this.institution,
    required this.duration,
  });
}

class Academics extends StatelessWidget {
  final List<AcademicDetail> academicDetails = [
    AcademicDetail(
      institution: 'BP Poddar Institute of Management and Technology',
      degree:
          'Bachelor of Technology -BTech, \nComputer Science and Engineering',
      duration: '2021 - 2025',
      grade: 'CGPA: 9.0',
    ),
    AcademicDetail(
      institution: 'Delhi Model Public School',
      degree: 'Intermediate',
      duration: '2019 - 2020',
      grade: 'Percentage: 80%',
    ),
    AcademicDetail(
      institution: 'Jesus And Mary Academy',
      degree: 'Matriculation',
      duration: '2017 - 2018',
      grade: 'Percentage: 94%',
    ),
    // Add more academic details as needed
  ];

  Academics({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const SizedBox(height: defaultPadding),
          const TitleText(prefix: '', title: 'Academics'),
          const SizedBox(height: defaultPadding * 5),
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
          // const SizedBox(height: defaultPadding * 5),
          // const Text("Image"),
        ],
      ),
    );
  }
}
