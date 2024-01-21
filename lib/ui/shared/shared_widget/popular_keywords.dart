import 'package:e_commerce/ui/shared/shared_widget/color.dart';
import 'package:flutter/material.dart';

class Popularkeywords extends StatelessWidget {
  const Popularkeywords({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> popularKeywordsImages = [
      "drinks",
      "apple_macbook",
      "Flycame",
      "iphone-x",
    ];
    List<String> nameProducts = [
      "Heniken",
      "Macbook",
      "Flycam",
      "iPhone",
    ];
    List<String> qtyProduct = [
      "155 Products",
      "1,000 Products",
      "1,000 Products",
      "2,000 Products",
    ];
    return Container(
      height: 250,
      margin:
          EdgeInsetsDirectional.only(top: 10, bottom: 10, start: 10, end: 10),
      color: AppColor.white,
      child: Column(
        children: [
          Container(
            padding: EdgeInsetsDirectional.only(
                start: 20, end: 20, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Popular Keywords",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Container(
              height: 200,
              color: AppColor.mercury,
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 110, crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Container(
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/pngs/${popularKeywordsImages[index]}.png",
                                width: 85,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "${nameProducts[index]}",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: AppColor.black,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "${qtyProduct[index]}",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: AppColor.grey7,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  })),
        ],
      ),
    );
  }
}
