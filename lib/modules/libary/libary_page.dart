import 'package:flutter/material.dart';
import 'package:zing_z/modules/chart/componenets/box_widget.dart';
import 'package:zing_z/modules/libary/components/advertisement.dart';
import 'package:zing_z/modules/libary/widgets/listview.dart';
import 'package:zing_z/network/styles/themes/app_colors.dart';
import 'package:zing_z/network/styles/themes/app_icons.dart';
import 'package:zing_z/network/styles/themes/app_text_styles.dart';

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
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    List<String> entries = <String>[
      'a',
      'b',
      'c',
      'a',
      'b',
      'c',
      'a',
      'b',
    ];

    return Scaffold(
      backgroundColor: AppColors.darkBlueIllustration,
      appBar: AppBar(
        title: const Text(
          "Thư Viện",
          style: AppTextStyles.appbar,
        ),
        backgroundColor: AppColors.darkBlueIllustration,
        actions: <Widget>[
          IconButton(
            icon: AssetPath.icondmicro,
            onPressed: () {},
          ),
          IconButton(
            icon: AssetPath.iconsearch,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(children: [
        SizedBox(
            child: Column(children: [
          const advertise(),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      BoxWidget(),
                      BoxWidget(),
                      BoxWidget(),
                      BoxWidget(),
                    ])),
          ),
          buildTitle('Nghe gần đây'),
          Container(
            margin: const EdgeInsets.only(top: 16),
            alignment: Alignment.center,
            child: TabBar(
              tabs: const [
                Tab(text: 'Playlist'),
                Tab(text: 'Album '),
              ],
              controller: _tabController,
              labelStyle: AppTextStyles.name1lib,
              unselectedLabelStyle: AppTextStyles.name1lib,
              indicatorColor: Colors.white,
            ),
          ),
          SizedBox(
            height: 300,
            child: TabBarView(controller: _tabController, children: const [
              // thanh(entriess: entries),
              ListViewItem(),

              ListViewItem()
            ]),
          )
        ]))
      ]),
    );
  }

  Padding buildTitle(String content) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Container(
            height: 17,
            child: Text(
              content,
              style: AppTextStyles.name1lib,
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}

class thanh extends StatelessWidget {
  const thanh({
    super.key,
    required this.entriess,
  });

  final List<String> entriess;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        SizedBox(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: entriess.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    height: 50,
                    color: Colors.amberAccent,
                    child: Text("$entriess"));
              }),
        ),
      ]),
    );
  }
}
