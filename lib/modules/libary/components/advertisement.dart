import 'package:flutter/material.dart';
import 'package:zing_z/network/styles/themes/app_colors.dart';

class advertise extends StatelessWidget {
  const advertise({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        // padding: const EdgeInsets.symmetric(vertical: 8.0),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: AppColors.bglib,
              border: Border.all(),
              borderRadius: BorderRadius.circular(13)),
          child: Row(
            children: [
              const SizedBox(
                width: 70,
                height: 80,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: const Text(
                      'Nghe nhạc không quảng cáo',
                      style: TextStyle(color: AppColors.redlib, fontSize: 14),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: const Text(
                      'Gói Zing MP3 Plus chỉ 19,000 /... ',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: const Text(
                      'Nâng cấp ngay',
                      style: TextStyle(fontSize: 16),
                      // style:TextStyle(color:  )
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
