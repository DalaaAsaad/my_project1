import 'package:e_commerce/ui/shared/shared_widget/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onTap;
  final bool? needClose;
  const SideItem(
      {super.key,
      required this.icon,
      required this.title,
      required this.onTap,
      this.needClose = true});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
        if (needClose!) Get.back();
      },
      child: Padding(
        padding: EdgeInsetsDirectional.only(start: 20, bottom: 20),
        child: Row(
          children: [
            Icon(
              icon,
              size: 30,
              color: AppColor.black,
            ),
            SizedBox(width: 20),
            Text(
              title,
              style: TextStyle(fontSize: 20, color: AppColor.black),
            )
          ],
        ),
      ),
    );
  }
}
