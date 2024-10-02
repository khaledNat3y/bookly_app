import 'package:bookly_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.white,
      cursorErrorColor: AppColors.errorColor,
      decoration: InputDecoration(
        enabledBorder: buildOutLineInputBorder(),
        focusedBorder: buildOutLineInputBorder(),
        border: buildOutLineInputBorder(),
        errorBorder: buildOutLineInputBorder(color: AppColors.errorColor),
        hintText: "Search",
        suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 24,
            )),

      ),
    );
  }
}
OutlineInputBorder buildOutLineInputBorder({Color? color}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(color: color ??  Colors.grey.shade300),
  );
}