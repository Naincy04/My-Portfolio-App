import 'package:flutter/material.dart';
import 'package:flutter_portfolio/academics/academics.dart';
import 'package:flutter_portfolio/academics/timeline_item.dart';
import 'package:timeline_tile/timeline_tile.dart';

class AnimatedTimelineItem extends StatefulWidget {
  final AcademicDetail academicDetail;
  final Duration delay;

  AnimatedTimelineItem({required this.academicDetail, required this.delay});

  @override
  _AnimatedTimelineItemState createState() => _AnimatedTimelineItemState();
}

class _AnimatedTimelineItemState extends State<AnimatedTimelineItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
      reverseDuration: const Duration(milliseconds: 300),
    );

    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    Future.delayed(widget.delay, () {
      _controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _opacityAnimation,
      child: TimelineTile(
        alignment: TimelineAlign.manual,
        lineXY: 0.3,
        isFirst: widget.delay.inMilliseconds == 0,
        indicatorStyle: IndicatorStyle(
          width: 20,
          color: Colors.white,
          padding: EdgeInsets.all(6),
          iconStyle: IconStyle(
            color: Colors.black,
            iconData: Icons.school,
          ),
        ),
        endChild: TimelineItem(academicDetail: widget.academicDetail),
        beforeLineStyle: const LineStyle(
          color: Colors.grey,
          thickness: 2,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
