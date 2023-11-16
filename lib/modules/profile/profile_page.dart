import 'package:flutter/material.dart';
import 'package:zing_z/network/styles/themes/app_colors.dart';
import 'package:zing_z/network/styles/themes/app_icons.dart';
import 'package:zing_z/network/styles/themes/app_text_styles.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    Key? key,
    // this.loginResData,
  }) : super(key: key);
  // final LoginResData? loginResData;
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Cá nhân ",
            style: AppTextStyles.appbar,
          ),
          backgroundColor: AppColors.darkBlueIllustration,
          actions: <Widget>[
            IconButton(
              icon: AssetPath.iconsetting,
              onPressed: () {},
            ),
            IconButton(
              icon: AssetPath.iconnotifications,
              onPressed: () {},
            ),
            IconButton(
              icon: AssetPath.iconsearch,
              onPressed: () {},
            ),
          ]),
      backgroundColor: AppColors.darkBlueIllustration,
    );
  }
}
