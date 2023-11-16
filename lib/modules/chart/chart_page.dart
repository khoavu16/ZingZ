import 'package:flutter/material.dart';
import 'package:zing_z/modules/chart/componenets/box_widget.dart';
import 'package:zing_z/network/styles/themes/app_colors.dart';
import 'package:zing_z/network/styles/themes/app_icons.dart';
import 'package:zing_z/network/styles/themes/app_text_styles.dart';

class ChartPage extends StatefulWidget {
  const ChartPage({Key? key}) : super(key: key);

  @override
  State<ChartPage> createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  @override
  Widget build(BuildContext context) {
    List<String> entries = <String>['a', 'b', 'c', 'd'];
    return Scaffold(
      appBar: AppBar(
         title: const Text(
          "Thư Viện",
          style: AppTextStyles.appbar,
        ),
        backgroundColor: AppColors.darkBlueIllustration,
        actions: <Widget>[
          IconButton(
            icon: AssetPath.iconsearch,
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: AppColors.darkBlueIllustration,
      // body: Padding(
      //   padding: const EdgeInsets.all(5),
      //   child: SingleChildScrollView(
      //       scrollDirection: Axis.horizontal,
      //       child: Row(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: const [
      //             BoxWidget(),
      //             BoxWidget(),
      //             BoxWidget(),
      //             BoxWidget(),
      //           ])),
      // ),
    );
  }
}
