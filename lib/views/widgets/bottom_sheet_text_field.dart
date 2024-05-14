import 'package:flutter/material.dart';
import 'package:ptc_test/core/constants/app_colors.dart';
import 'package:ptc_test/core/constants/app_styles.dart';

class ButtomSheetTextField extends StatelessWidget {
  const ButtomSheetTextField({
    super.key,
    required this.text,
    this.suffixText,
  });
  final String text;
  final String? suffixText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: text,
        labelStyle: AppStyles.stylePoppins20(context)
            .copyWith(color: AppColors.textGreyColor),
        suffixIcon: suffixText != null
            ? Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(suffixText!),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward_ios_sharp),
                  )
                ],
              )
            : null,
      ),
    );
  }
}
