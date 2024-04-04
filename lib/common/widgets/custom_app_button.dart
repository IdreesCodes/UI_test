import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vie_app_ui/utils/app_consts/app_assets.dart';
import 'package:vie_app_ui/utils/app_text_styles.dart';
import 'package:vie_app_ui/utils/colors/color_constants.dart';

class CustomAppButton extends StatelessWidget {
  const CustomAppButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      width: MediaQuery.of(context).size.width / 2.2,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: ColorConstants.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            AppAssets.iconPlay,
            height: 30,
            width: 30,
          ),
          const Gap(4),
          Text(
            "Start",
            style: AppTextStyles.kBodyLargeDark,
          )
        ],
      ),
    );
  }
}
