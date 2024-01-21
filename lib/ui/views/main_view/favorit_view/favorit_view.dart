import 'package:bot_toast/bot_toast.dart';
import 'package:e_commerce/core/data/models/user_info.dart';
import 'package:e_commerce/core/data/repository/user_info_repository.dart';
import 'package:flutter/material.dart';

class FavoritView extends StatefulWidget {
  const FavoritView({super.key});

  @override
  State<FavoritView> createState() => _FavoritViewState();
}

class _FavoritViewState extends State<FavoritView> {
  // FavoritController controller = Get.put(FavoritController());
  List<UserInfo> listinfodata = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          ElevatedButton(
              onPressed: () {
                UserInfoRepository().getAllUsers().then((value) {
                  value.fold((l) => BotToast.showText(text: l), (r) {
                    setState(() {
                      listinfodata.clear();
                      listinfodata.addAll(r);
                    });
                  });
                });
              },
              child: Text("Get All Info Usres")),
          ListView.builder(
            shrinkWrap: true,
            itemCount: listinfodata.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [Text(listinfodata[index].name!.firstname!)],
              );
            },
          )
        ],
      )),
    );

    //     Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   crossAxisAlignment: CrossAxisAlignment.center,
    //   children: [
    //     FutureBuilder(
    //       future: UserInfoRepository().getAllUsers(),
    //       builder: (BuildContext context, AsyncSnapshot snapshot) {
    //         if (snapshot.data != null) {
    //           snapshot.data!.fold((l) {
    //             BotToast.showText(text: l);
    //           }, (r) {
    //             listinfodata.clear();
    //             listinfodata.addAll(r);
    //           });
    //         }
    //         return snapshot.connectionState == ConnectionState.waiting
    //             ? SpinKitCircle(
    //                 color: AppColor.black,
    //               )
    //             : ListView.builder(
    //                 shrinkWrap: true,
    //                 itemCount: listinfodata.length,
    //                 itemBuilder: (BuildContext context, int index) {
    //                   return Column(
    //                     children: [
    //                       // Text(listinfodata[index].name!.firstname??"")
    //                       Text(listinfodata[index].id.toString())
    //                       // Text(snapshot.connectionState.toString())
    //                     ],
    //                   );
    //                 },
    //               );
    //       },
    //     ),
    //   ],
    // ),

    //     FutureBuilder(
    //   future: listinfodata.length == 0
    //       ? UserInfoRepository().getAllUsers()
    //       : null,
    //   builder: (BuildContext context, AsyncSnapshot snapshot) {
    //     if (snapshot.data != null) {
    //       snapshot.data!.fold((l) {
    //         BotToast.showText(text: l);
    //       }, (r) {
    //         listinfodata.clear();
    //         listinfodata.addAll(r);
    //       });
    //     }
    //     return snapshot.connectionState == ConnectionState.waiting
    //         ? SpinKitCircle(
    //             color: AppColor.black,
    //           )
    //         : ListView.builder(
    //             shrinkWrap: true,
    //             itemCount: listinfodata.length,
    //             itemBuilder: (BuildContext context, int index) {
    //               return Column(
    //                 children: [
    //                   // Text(listinfodata[index].name!.firstname??"")
    //                   Text(listinfodata[index].id.toString())
    //                   // Text(snapshot.connectionState.toString())
    //                 ],
    //               );
    //             },
    //           );
    //   },
    // ),
  }
}
