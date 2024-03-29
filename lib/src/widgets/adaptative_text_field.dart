import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptativeTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final Function(String) onSubmitted;

  const AdaptativeTextField({
    required this.label,
    required this.controller,
    this.keyboardType = TextInputType.text,
    required this.onSubmitted,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? Padding(
            padding: const EdgeInsets.only(
              bottom: 10,
            ),
            child: CupertinoTextField(
              onSubmitted: onSubmitted,
              controller: controller,
              keyboardType: keyboardType,
              placeholder: label,
              padding: const EdgeInsets.symmetric(
                horizontal: 6,
                vertical: 12,
              ),
            ),
          )
        : TextField(
            onSubmitted: onSubmitted,
            controller: controller,
            keyboardType: keyboardType,
            decoration: InputDecoration(labelText: label),
          );
  }
}
