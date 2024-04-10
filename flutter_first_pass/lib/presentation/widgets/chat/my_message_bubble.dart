import 'package:flutter/material.dart';
import 'package:flutter_first_pass/domain/entities/message.dart';

class MyMessageBubble
 extends StatelessWidget {
  final Message message;
  const MyMessageBubble
  ({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
     
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(color: colors.primary, borderRadius: BorderRadius.circular(20)),
        child:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
          child: Text(message.text, style: const TextStyle(color: Colors.white),),
        )
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}