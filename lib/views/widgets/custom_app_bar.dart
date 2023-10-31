import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget {
  CustomAppBar(
      {super.key, required this.title, required this.icon, this.onPressed});
  String title;
  IconData icon;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
        CustomIconButton(
          onPressed: onPressed,
          icon: icon,
        ),
      ],
    );
  }
}
