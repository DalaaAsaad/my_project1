import 'dart:io';

import 'package:e_commerce/ui/shared/shared_widget/color.dart';
import 'package:e_commerce/ui/shared/shared_widget/utiles.dart';
import 'package:e_commerce/ui/views/login/login.dart';
import 'package:e_commerce/ui/views/main_view/main_view_widgets/side_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  bool showOption = false;
  File? selectedImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: AppColor.grey7,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(top: 40, bottom: 40),
            child: InkWell(
              onTap: () {
                setState(() {
                  showOption = false;
                });
              },
              child: Column(
                children: [
                  Stack(children: [
                    InkWell(
                      onTap: selectedImage == null
                          ? () {
                              setState(() {
                                showOption = !showOption;
                              });
                            }
                          : null,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: AppColor.black,
                            borderRadius: BorderRadius.circular(50),
                            image: selectedImage != null
                                ? DecorationImage(
                                    image: FileImage(selectedImage!),
                                    fit: BoxFit.cover)
                                : null),
                        child: selectedImage == null
                            ? Center(
                                child: Icon(
                                Icons.person,
                                size: 50,
                                color: AppColor.orange,
                              ))
                            : null,
                      ),
                    ),
                    if (selectedImage != null)
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            start: 80, top: 80),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              showOption = !showOption;
                            });
                          },
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                                child: Icon(
                              Icons.edit,
                              color: AppColor.blue6,
                            )),
                          ),
                        ),
                      ),
                  ]),
                  Text('Sunny Vo',
                      style: TextStyle(color: AppColor.black, fontSize: 20)),
                  Text('vctung@outlook.com',
                      style: TextStyle(color: AppColor.black)),
                  if (showOption)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () async {
                            showOption = false;
                            XFile? selectImage =
                                await chooseImage(ImageSource.gallery);
                            selectedImage = File(selectImage!.path);
                            setState(() {});
                          },
                          child: Text('Gallary',
                              style: TextStyle(
                                  color: AppColor.orange, fontSize: 20)),
                        ),
                        InkWell(
                          onTap: () async {
                            showOption = false;
                            XFile? selectImage =
                                await chooseImage(ImageSource.camera);
                            selectedImage = File(selectImage!.path);
                            setState(() {});
                          },
                          child: Text('Camera',
                              style: TextStyle(
                                  color: AppColor.orange, fontSize: 20)),
                        ),
                      ],
                    )
                ],
              ),
            ),
          ),
          SideItem(icon: Icons.home_outlined, title: 'Home', onTap: () {}),
          SideItem(
              icon: Icons.category_outlined, title: 'Categories', onTap: () {}),
          SideItem(
              icon: Icons.add_box_outlined, title: 'My orders', onTap: () {}),
          SideItem(
              icon: Icons.favorite_outline, title: 'Wish list', onTap: () {}),
          SideItem(
              icon: Icons.settings_outlined, title: 'Settings', onTap: () {}),
          SideItem(
              icon: Icons.notifications_outlined,
              title: 'Notifications',
              onTap: () {}),
          SideItem(icon: Icons.help_outline, title: 'Help & FAQ', onTap: () {}),
          SideItem(
              icon: Icons.help_outline,
              title: 'Log in',
              needClose: false,
              onTap: () {
                Get.to(login());
              }),

          // Text(
          //   'Orders',
          //   style: TextStyle(fontSize: 40),
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // Text(
          //   'Cart',
          //   style: TextStyle(fontSize: 40),
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // InkWell(
          //   onTap: () {
          //     //!----- Any
          //     Navigator.pop(context);
          //   },
          //   child: Text(
          //     'Aboutus',
          //     style: TextStyle(fontSize: 40),
          //   ),
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // InkWell(
          //   onTap: () {

          //   },
          //   child: Text(
          //     'Logout',
          //     style: TextStyle(fontSize: 40),
          //   ),
          // ),
        ],
      ),
    );
  }
}
