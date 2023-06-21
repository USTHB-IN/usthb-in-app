import 'package:flutter/material.dart';
import 'package:usthbin/constants/const.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController controller;
  final Function onTap;
  final String hintText;
  final IconData? suffixIcon;
  const CustomSearchBar(
      {super.key,
      required this.onTap,
      this.suffixIcon,
      required this.hintText,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TextField(
        controller: controller,
        cursorColor: kBlue,
        onTap: () => onTap(),
        decoration: InputDecoration(
          suffixIcon: suffixIcon != null
              ? Icon(
                  suffixIcon,
                  color: Colors.black,
                )
              : null,
          enabledBorder:
              Theme.of(context).inputDecorationTheme.enabledBorder!.copyWith(
                      borderSide: const BorderSide(
                    color: Colors.transparent,
                  )),
          hintText: hintText,
          hintStyle: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: kHintTextColor),
        ),
      ),
    );
  }
}
