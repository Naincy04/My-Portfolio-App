import 'package:flutter/material.dart';
import 'package:flutter_portfolio/academics/academics.dart';
import 'package:flutter_portfolio/academics/src/style.dart';
import 'package:flutter_portfolio/academics/src/tile.dart';
import 'package:flutter_portfolio/academics/timeline_item.dart';

class AnimatedTimelineItem extends StatefulWidget {
  final AcademicDetail academicDetail;
  final Duration delay;
  final int index;

  const AnimatedTimelineItem(
      {super.key, required this.academicDetail, required this.delay, required this.index});

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
        lineXY: 0.5,
        isFirst: widget.delay.inMilliseconds == 0,
        indicatorStyle: IndicatorStyle(
          width: 50,
          color: Colors.white,
          padding: const EdgeInsets.all(6),
          iconStyle: IconStyle(
            color: Colors.black,
            iconData: Icons.school,
            fontSize: 20,
          ),
        ),
        startChild: widget.index.isEven
            ? TimelineItem(
                academicDetail: widget.academicDetail,
                index: widget.index,
              )
            : null,
        endChild: widget.index.isOdd
            ? TimelineItem(
                academicDetail: widget.academicDetail, index: widget.index)
            : null,
        beforeLineStyle: const LineStyle(
          color: Colors.grey,
          thickness: 4,
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
