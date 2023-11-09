import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon.dart';

class CustomEditNoteAppBar extends StatelessWidget {
  const CustomEditNoteAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const CustomIcon(icon: Icons.arrow_back_ios_new),
        ),
        const Spacer(),
        const CustomIcon(icon: Icons.save_outlined),
      ],
    );
  }
}
