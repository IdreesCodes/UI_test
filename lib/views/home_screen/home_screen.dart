import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import '../../utils/app_text_styles.dart';
import 'home_screen_widgets/custom_app_bar_widget.dart';
import 'home_screen_widgets/excercise_type_widget.dart';
import 'home_screen_widgets/search_bar_widget.dart';
import 'home_screen_widgets/start_exercises_widget.dart';
import 'home_screen_widgets/tutorials_widget.dart';

class HomeScreen extends StatefulWidget {

   const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return     Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all( 12.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                const CustomSearchBar(),
                const Gap(
                  10
                ),
                const StartExercises(),
                const Gap(10),
                Text('Focus Points', style: AppTextStyles.kHeadingMediumDark,),
                const Gap(10),
                const ExerciseTypeWidget(),
                const Gap(10),
                Text('Focus Points', style: AppTextStyles.kHeadingMediumDark,),
                const Gap(10),
                const TutorialsWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
