import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: kButtonColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Center(
          child: Text(
        'Add',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      )),
    );
  }
}