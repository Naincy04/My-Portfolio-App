import 'package:flutter/material.dart';

import 'knowledge.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        KnowledgeText(knowledge: 'Flutter, Dart'),
        KnowledgeText(knowledge: 'Networking, Cyber Security'),
        KnowledgeText(knowledge: 'Git, Github'),
      ],
    );
  }
}
