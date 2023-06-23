import 'package:flutter/material.dart';
import 'package:zing_z/network/styles/themes/app_colors.dart';
import 'package:zing_z/network/styles/themes/app_icons.dart';
import '../libary/libary_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
    // this.loginResData,
  }) : super(key: key);
  // final LoginResData? loginResData;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final PageStorageBucket bucket = PageStorageBucket();
    // int currentTab = 0;
  // Widget currentScreent = const LiabaryPage();
   static const List<Widget> _widgetOptions = <Widget>[
    LiabaryPage(),
    Text(
      'Index 1: Business',
      
    ),
    Text(
      'Index 2: School',
    ),
    Text(
      'Index 3: Settings',
    ),
     Text(
      'Index 3: Settings',
    ),
  ];
 
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
        // bucket: bucket,
        // child: currentScreent,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          
          BottomNavigationBarItem(
            
            icon: Icon(Icons.home,),
            label: 'Thư viện',
            backgroundColor: AppColors.darkGrey,
          ),
          BottomNavigationBarItem(
            icon: AssetPath.icondelivery,
            label: 'khám phá',
            backgroundColor: AppColors.darkGrey,
          ),
          BottomNavigationBarItem(
            icon: AssetPath.iconzingchart,
            label: '#zingchart',
            backgroundColor: AppColors.darkGrey,
          ),
          BottomNavigationBarItem(
            icon: AssetPath.iconradio,
            label: 'radio',
            backgroundColor: AppColors.darkGrey,
          ),
           BottomNavigationBarItem(
            icon: AssetPath.iconprofile,
            label: 'Cá nhân',
            backgroundColor: AppColors.darkGrey,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple,
        onTap: _onItemTapped // body: PageStorage(
      ),
    );
  }
}
