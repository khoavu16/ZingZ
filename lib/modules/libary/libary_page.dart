import 'package:flutter/material.dart';

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
    // TODO: implement build
    return Scaffold(
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
   body: SingleChildScrollView(
    child: SafeArea(
    )
   )
  );
 }
}
