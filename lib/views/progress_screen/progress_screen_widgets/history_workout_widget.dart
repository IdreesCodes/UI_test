import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vie_app_ui/utils/app_consts/app_assets.dart';

import '../../../utils/app_text_styles.dart';
import '../../../utils/colors/color_constants.dart';

class HistoryWorkoutWidget extends StatelessWidget {
  const HistoryWorkoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorConstants.secondary,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(15),
            Text(
              'History of Workouts',
              style: AppTextStyles.kBodyLargeDark.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.black87.withOpacity(0.8),
              ),
            ),
            const Divider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Jan 14 - Jan 20',
                  style: AppTextStyles.kBodySmallDark,
                ),
                Text(
                  '3 Workouts, 02:17',
                  style: AppTextStyles.kBodySmallDark,
                ),
              ],
            ),
            const Gap(10),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Image.asset(
                              AppAssets.iconMassage,
                              height: 80,
                              width: 80,
                            ),
                          ),
                          const Gap(5),
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Forehead Upward Massage',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                const Gap(25),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('2:00 Pm'),
                                        Text('Jan 18')
                                      ],
                                    ),
                                    Image.asset(
                                      AppAssets.iconWidth,
                                      height: 30,
                                      width: 30,
                                    ),
                                    const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('2:00 Pm'),
                                        Text('Jan 18')
                                      ],
                                    ),
                                    Image.asset(
                                      AppAssets.iconWidth,
                                      height: 30,
                                      width: 30,
                                    ),
                                    const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('2:00 Pm'),
                                        Text('Jan 18')
                                      ],
                                    ),
                                    Image.asset(
                                      AppAssets.iconWidth,
                                      height: 30,
                                      width: 30,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      const Divider(),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
