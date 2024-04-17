import 'package:flutter/material.dart';
import 'package:flutter_portfolio/experience/projects/components/experience_deatail.dart';
import 'package:flutter_portfolio/view%20model/getx_controllers/experience_controller.dart';
import 'package:get/get.dart';
import '../../../res/constants.dart';

class ExperienceStack extends StatelessWidget {
  final controller = Get.put(ExperienceController());
  ExperienceStack({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        controller.onHover(index, value);
      },
      borderRadius: BorderRadius.circular(30),
      child: AnimatedContainer(
        padding: const EdgeInsets.only(
            left: defaultPadding, right: defaultPadding, top: defaultPadding),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: bgColor),
        duration: const Duration(milliseconds: 500),
        child: ExperienceDetail(
          index: index,
        ),
      ),
    );
  }
}
