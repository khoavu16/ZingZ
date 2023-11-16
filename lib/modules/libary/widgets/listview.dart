import 'package:flutter/material.dart';
import 'package:zing_z/network/styles/themes/app_colors.dart';
import 'package:zing_z/network/styles/themes/app_text_styles.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key});

  // const ListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        margin: const EdgeInsets.only(left: 10),
        height: 50,
        color: AppColors.darkBlueIllustration,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
              Container(
                width: size.width / 10,
                height: size.height / 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/thinhsuy.jpg'))),
              ),
              Column(children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const Text(
                    "Chuyện rằng",
                    style: AppTextStyles.name2lib,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 3, top: 5),
                  child: const Text(
                    "Zing MP3",
                    style: AppTextStyles.name3lib,
                  ),
                ),
              ]),
            ]),
          ],
        ),
      ),
    );
  }
}
