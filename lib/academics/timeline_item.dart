import 'package:flutter/material.dart';
import 'package:flutter_portfolio/academics/academics.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';

class TimelineItem extends StatelessWidget {
  final AcademicDetail academicDetail;
  final int index; // Add index as a parameter

  const TimelineItem({super.key, required this.academicDetail, required this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        textColor: Colors.white,
        title: index.isOdd
            ? Responsive.isDesktop(context)
                ? Padding(
                    padding: const EdgeInsets.only(left: defaultPadding * 28),
                    child: Text(academicDetail.institution,
                        style: const TextStyle(fontSize: 24)),
                  )
                : Padding(
                    padding: const EdgeInsets.only(left: defaultPadding),
                    child: Text(academicDetail.institution),
                  )
            : Responsive.isDesktop(context)
                ? Padding(
                    padding: const EdgeInsets.only(
                        right: defaultPadding, left: defaultPadding / 2),
                    child: Text(academicDetail.institution,
                        style: const TextStyle(fontSize: 24)),
                  )
                : Padding(
                    padding: const EdgeInsets.only(left: defaultPadding),
                    child: Text(academicDetail.institution),
                  ),
        subtitle: index.isOdd
            ? Responsive.isDesktop(context)
                ? Padding(
                    padding: const EdgeInsets.only(left: defaultPadding * 28),
                    child: Text(
                      '${academicDetail.degree}\n${academicDetail.duration}\n${academicDetail.grade}',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.only(left: defaultPadding),
                    child: Text(
                      '${academicDetail.degree}\n${academicDetail.duration}\n${academicDetail.grade}',
                    ),
                  )
            : Responsive.isDesktop(context)
                ? Padding(
                    padding: const EdgeInsets.only(
                        right: defaultPadding, left: defaultPadding / 2),
                    child: Text(
                      '${academicDetail.degree}\n${academicDetail.duration}\n${academicDetail.grade}',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.only(left: defaultPadding),
                    child: Text(
                      '${academicDetail.degree}\n${academicDetail.duration}\n${academicDetail.grade}',
                    ),
                  )
        // leading: const Icon(Icons.school),
        );
  }
}
