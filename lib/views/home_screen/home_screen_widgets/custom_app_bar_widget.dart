import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vie_app_ui/utils/app_text_styles.dart';

import '../../../utils/app_consts/app_assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const CircleAvatar(
              radius: 18, backgroundImage: AssetImage(AppAssets.iconPerson)),
          const Gap(10),
          Text(
            'Good Morning,',
            style: AppTextStyles.kHeadingMediumDark,
          ),
          const Gap(3),
          Text(
            'Lossy',
            style: AppTextStyles.kBodyLargeDark,
          ),
        ],
      ),
    );
  }
}
