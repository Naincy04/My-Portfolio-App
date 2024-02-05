library timeline_tile;

export 'package:timeline_tile/src/tile.dart';
export 'package:timeline_tile/src/style.dart';
export 'package:timeline_tile/src/timeline_divider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/academics/academics.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';

class TimelineItem extends StatelessWidget {
  final AcademicDetail academicDetail;

  TimelineItem({required this.academicDetail});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      textColor: Colors.white,

      title: Responsive.isDesktop(context)
          ? Padding(
              padding: const EdgeInsets.only(left: defaultPadding * 12),
              child:
                  Text(academicDetail.degree, style: TextStyle(fontSize: 20)),
            )
          : Padding(
              padding: const EdgeInsets.only(left: defaultPadding),
              child: Text(academicDetail.degree),
            ),
      subtitle: Responsive.isDesktop(context)
          ? Padding(
              padding: const EdgeInsets.only(left: defaultPadding * 12),
              child: Text(
                  '${academicDetail.institution}\n${academicDetail.duration}'),
            )
          : Padding(
              padding: const EdgeInsets.only(left: defaultPadding),
              child: Text(
                  '${academicDetail.institution}\n${academicDetail.duration}'),
            ),
      // leading: const Icon(Icons.school),
    );
  }
}
