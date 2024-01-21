import 'package:e_commerce/ui/shared/shared_widget/color.dart';
import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  final IconData icons;
  final bool? isSelected;
  final Function onTap;
  const NavItem(
      {super.key,
      required this.icons,
      this.isSelected = false,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: isSelected!
                      ? BorderSide(width: 3, color: AppColor.orange)
                      : BorderSide.none)),
          child: Icon(
            icons,
            size: 50,
            color: isSelected! ? AppColor.orange : AppColor.white,
          )),
    );
  }
}
