import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce/ui/shared/shared_widget/color.dart';
import 'package:e_commerce/ui/shared/shared_widget/popular_keywords.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  final Function openDrawer;
  const HomeView({super.key, required this.openDrawer});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> shopping = [
    "shoppingImage",
    "shoppingImage",
    "shoppingImage",
    "shoppingImage"
  ];
  List<String> categoriesImages = [
    "Book",
    "Fish",
    "Headphone",
    "Monitor",
    "Phone",
    "Print",
    "Shoe",
    "T-shirt",
    "Wallet",
  ];
  List<String> categoriesName = [
    "Books",
    "Foods",
    "Electronics",
    "Computers",
    "Cellphones",
    "Offices",
    "Shoes",
    "Fashions",
    "Collections",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColor.mercury,
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                height: 330,
                child: PageView.builder(
                    itemCount: shopping.length,
                    itemBuilder: (_, index) {
                      return Stack(children: [
                        Container(
                          height: 330,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'assets/images/pngs/${shopping[index]}.png'))),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.only(start: 160, top: 300),
                          child: DotsIndicator(
                            dotsCount: shopping.length,
                            position: index,
                            decorator:
                                DotsDecorator(activeColor: AppColor.blue6),
                          ),
                        ),
                      ]);
                    }),
              ),
              Container(
                height: 600,
                margin: EdgeInsetsDirectional.only(
                    start: 10, top: 10, bottom: 10, end: 10),
                color: AppColor.white,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsetsDirectional.only(
                          start: 20, end: 20, top: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Categories",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "show more",
                            style:
                                TextStyle(fontSize: 18, color: AppColor.blue2),
                          )
                        ],
                      ),
                    ),
                    Container(
                        height: 550,
                        padding: EdgeInsetsDirectional.only(top: 20),
                        child: GridView.builder(
                            itemCount: categoriesImages.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    mainAxisExtent: 260, crossAxisCount: 2),
                            itemBuilder: (context, index) {
                              return Card(
                                  elevation: 0,
                                  child: Container(
                                    margin: EdgeInsets.all(7),
                                    width: 50,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: AppColor.grey7, width: 2),
                                    ),
                                  )
                                  // Container(
                                  //   // margin: EdgeInsets.all(40),
                                  //   width: 100,
                                  //   height: 50,
                                  //   decoration: BoxDecoration(
                                  //     borderRadius: BorderRadius.circular(10),
                                  //     border: Border.all(
                                  //         color: AppColor.grey7, width: 2),
                                  //   ),
                                  // ),
                                  );
                            })),

                    //assets/images/pngs/Book.png
                  ],
                ),
              ),
              // Popularkeywords()
            ],
          ),
          // Card(
          //   margin: EdgeInsetsDirectional.only(start: 20, end: 20, top: 20),
          //   elevation: 2,
          //   child: TextField(
          //     decoration: InputDecoration(
          //         enabledBorder: InputBorder.none,
          //         focusedBorder: InputBorder.none,
          //         fillColor: AppColor.white,
          //         hintText: "Search...",
          //         hintStyle: TextStyle(color: AppColor.grey7),
          //         icon: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          //         suffixIcon:
          //             IconButton(onPressed: () {}, icon: Icon(Icons.trolley))),
          //   ),
          // )
        ],
      ),
    ));
  }
}
