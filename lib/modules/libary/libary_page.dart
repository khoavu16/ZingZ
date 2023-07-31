import 'package:flutter/material.dart';
// import 'package:zing_z/modules/libary/components/listview.dart';

import '../../network/styles/themes/app_colors.dart';
import '../../network/styles/themes/app_icons.dart';
import '../../network/styles/themes/app_text_styles.dart';
import 'components/listview.dart';

class LiabaryPage extends StatefulWidget {
  const LiabaryPage({
    Key? key,
    // this.loginResData,
  }) : super(key: key);
  // final LoginResData? loginResData;
  @override
  State<LiabaryPage> createState() => _LibaryPageState();
}

class _LibaryPageState extends State<LiabaryPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
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
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
                height: size.height - 50,
                child: Column(children: [
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    alignment: Alignment.center,
                    child: TabBar(
                      tabs: const [
                        Tab(text: 'yêu thích'),
                        Tab(text: 'yêu '),
                      ],
                      controller: _tabController,
                      labelStyle: AppTextStyles.heading1,
                      unselectedLabelStyle: AppTextStyles.heading1,
                      indicatorColor: AppColors.white,
                    ),
                  ),
                  Expanded(
                    child: TabBarView(controller: _tabController, children: [
                      Column(children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              ListView(
                                children: const [
                                  ListViewItem(),
                                  ListViewItem(),
                                  ListViewItem(),
                                  ListViewItem(),
                                ],
                              )
                              //  buildTitle(''),
                              //  const Pading
                            ])
                      ])
                    ]),
                  )
                ]))
          ]),
        ));
  }
}
