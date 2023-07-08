import 'package:flutter/material.dart';
import 'package:zing_z/modules/libary/components/listview.dart';

import '../../network/styles/themes/app_colors.dart';
import '../../network/styles/themes/app_icons.dart';

class LiabaryPage extends StatefulWidget {
  const LiabaryPage({
    Key? key,
    // this.loginResData,
  }) : super(key: key);
  // final LoginResData? loginResData;
  @override
  State<LiabaryPage> createState() => _LibaryPageState();
}

class _LibaryPageState extends State<LiabaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBlueIllustration,
        appBar: AppBar(
          title: const Text("Thư Viện"),
          backgroundColor: AppColors.darkBlueIllustration,
          actions: <Widget>[
            IconButton(
              icon: AssetPath.iconsearch,
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
          children: const [
            ListViewItem(),
            ListViewItem(),
            ListViewItem(),
            ListViewItem(),
          ],
      )
    );
  }
}
