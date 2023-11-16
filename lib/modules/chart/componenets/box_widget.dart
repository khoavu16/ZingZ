import 'package:flutter/material.dart';
import 'package:zing_z/network/styles/themes/app_colors.dart';
import 'package:zing_z/network/styles/themes/app_text_styles.dart';

class BoxWidget extends StatelessWidget {
  const BoxWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 165,
        height: 140,
        margin: const EdgeInsets.only(right: 15),
        // color: Colors.white,
        decoration: BoxDecoration(
            color: AppColors.bglib,
            border: Border.all(),
            borderRadius: BorderRadius.circular(30)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 18, left: 13),
              child: const Icon(
                Icons.favorite,
                color: AppColors.iconlove,
                size: 40,
                semanticLabel: 'kaskcas',
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 18, left: 13),
              child: const Text(
                'Bài hát yêu thích',
                style: AppTextStyles.name2lib,
              ),
            ),
          ],
        ));
  }
}
