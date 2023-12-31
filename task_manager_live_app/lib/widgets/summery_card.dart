import 'package:flutter/material.dart';

class SummeryCard extends StatelessWidget {
  const SummeryCard({
    super.key, required this.count, required this.title,
  });

  final String count,title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 16),
        child: Column(
          children: [
            Text(count,style: Theme.of(context).textTheme.titleLarge,),
            Text(title)
          ],
        ),
      ),
    );
  }
}