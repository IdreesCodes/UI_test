import 'package:flutter/material.dart';

import '../../../utils/colors/color_constants.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xffF6F6F6),
            ),
            clipBehavior: Clip.hardEdge,
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusColor: ColorConstants.secondary,
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 16,
                  ),
                  hintText: 'Search...',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
