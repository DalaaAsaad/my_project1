import 'package:e_commerce/ui/shared/shared_widget/color.dart';
import 'package:flutter/material.dart';

class CategoriesIcon extends StatelessWidget {
  final String categoriesImages;
  final String categoriesName;
  const CategoriesIcon(
      {super.key,
      required this.categoriesImages,
      required this.categoriesName});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(
            "assets/images/pngs/${categoriesImages}.png",
            width: 60,
          ),
          Text(
            "${categoriesName}",
            style:
                TextStyle(color: AppColor.grey7, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
