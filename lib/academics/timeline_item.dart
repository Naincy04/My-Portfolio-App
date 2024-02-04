library timeline_tile;

export 'package:timeline_tile/src/tile.dart';
export 'package:timeline_tile/src/style.dart';
export 'package:timeline_tile/src/timeline_divider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/academics/academics.dart';

class TimelineItem extends StatelessWidget {
  final AcademicDetail academicDetail;

  TimelineItem({required this.academicDetail});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        title: Text(academicDetail.degree),
        subtitle:
            Text('${academicDetail.institution}\n${academicDetail.duration}'),
        leading: const Icon(Icons.school),
      ),
    );
  }
}
