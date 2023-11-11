import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon.dart';

class CustomEditNoteAppBar extends StatelessWidget {
  const CustomEditNoteAppBar({super.key, this.onPressed});

  final void Function()? onPressed;

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
        CustomIcon(
          onPressed: onPressed,
          icon: Icons.save_outlined,
          ),
      ],
    );
  }
}
