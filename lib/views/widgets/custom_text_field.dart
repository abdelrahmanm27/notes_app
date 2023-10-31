import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({super.key, 
    this.hintText,
    this.maxLines = 1,
    this.onSaved,
    this.onChanged,
    this.initialText,
  });
  String? hintText;
  int maxLines;
  String? initialText;

  void Function(String?)? onSaved;
  void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'field is required!';
        } else {
          return null;
        }
      },
      onChanged: onChanged,
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      initialValue: initialText,
      decoration: InputDecoration(
        hintText: hintText,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
