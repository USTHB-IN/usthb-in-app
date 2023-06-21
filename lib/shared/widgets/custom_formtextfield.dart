import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String? initialValue;
  final String? hintText;
  final TextInputType keyboardType;
  final Map<String, dynamic>? data;
  final String? Function(String?)? validator;
  final String? mapKey;
  const CustomInput({
    super.key,
    this.initialValue,
    this.hintText,
    required this.keyboardType,
    this.data,
    this.validator,
    this.mapKey,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      autocorrect: false,
      validator: validator,
      onSaved: (newValue) => data![mapKey!] = newValue!,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.labelSmall,
          errorStyle: Theme.of(context)
              .textTheme
              .labelSmall!
              .copyWith(color: Colors.red)),
    );
  }
}
