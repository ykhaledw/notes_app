import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({
    super.key,
    required this.isActive,
    required this.color,
  });

  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: isActive
          ? CircleAvatar(
              backgroundColor: Colors.white,
              radius: 28,
              child: CircleAvatar(
                backgroundColor: color,
                radius: 24,
              ),
            )
          : CircleAvatar(
              backgroundColor: color,
              radius: 28,
            ),
    );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xffFF6978),
    Color(0xff340068),
    Color(0xffF8E16C),
    Color(0xffB1EDE8),
    Color(0xff6D435A),
    Color(0xff156064),
    Color(0xff40531B),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 27 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              setState(() {});
            },
            child: ColorItem(
              isActive: (currentIndex == index),
              color: colors[index],
            ),
          );
        },
      ),
    );
  }
}
