import 'package:flutter/material.dart';
import 'package:flutter_portfolio/academics/academics.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';

class TimelineItem extends StatelessWidget {
  final AcademicDetail academicDetail;
  final int index; // Add index as a parameter

  TimelineItem({required this.academicDetail, required this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      textColor: Colors.white,
      title: index.isOdd
          ? Responsive.isDesktop(context)
              ? Padding(
                  padding: const EdgeInsets.only(left: defaultPadding * 32),
                  child: Text(academicDetail.institution,
                      style: TextStyle(fontSize: 20)),
                )
              : Padding(
                  padding: const EdgeInsets.only(left: defaultPadding),
                  child: Text(academicDetail.institution),
                )
          : Padding(
              padding: const EdgeInsets.only(
                  right: defaultPadding, left: defaultPadding / 2),
              child: Text(academicDetail.institution,
                  style: TextStyle(fontSize: 20)),
            ),

      subtitle: index.isOdd
          ? Responsive.isDesktop(context)
              ? Padding(
                  padding: const EdgeInsets.only(left: defaultPadding * 32),
                  child: Text(
                    '${academicDetail.degree}\n${academicDetail.duration}',
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.only(left: defaultPadding),
                  child: Text(
                      '${academicDetail.degree}\n${academicDetail.duration}'),
                )
          : Padding(
              padding: const EdgeInsets.only(
                  right: defaultPadding, left: defaultPadding / 2),
              child: Text(
                '${academicDetail.degree}\n${academicDetail.duration}',
              ),
            ),
      // leading: const Icon(Icons.school),
    );
  }
}
