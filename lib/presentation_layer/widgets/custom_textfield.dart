import 'package:flutter/material.dart';

class CustomTextBox extends StatelessWidget {
  final TextEditingController textEditingController;
  final String label;
  final bool enabled;

  const CustomTextBox({
    super.key,
    required this.textEditingController,
    required this.label,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.grey,
      enabled: enabled,
      controller: textEditingController,
      maxLines: null,
      style: Theme.of(context).textTheme.bodyLarge,
      decoration: InputDecoration(
        label: Text(
          label,
          style:  TextStyle(color: Colors.grey.shade400),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(width: 1.5, color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 1.5, color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 1.5, color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
        disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 1.5, color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
      ),
    );
  }
}
