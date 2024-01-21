import 'package:e_commerce/ui/shared/costum_widget/custom_text.dart';
import 'package:e_commerce/ui/shared/shared_widget/color.dart';
import 'package:e_commerce/ui/shared/shared_widget/utiles.dart';
import 'package:flutter/material.dart';

class TranslationView extends StatefulWidget {
  const TranslationView({super.key});

  @override
  State<TranslationView> createState() => _TranslationViewState();
}

class _TranslationViewState extends State<TranslationView> {
  List<String> languages = ["English", "Arabic", "Franch", "chines", "Russia"];
  List<bool> ischecked = [];
  @override
  void initState() {
    ischecked = List<bool>.filled(languages.length, false);
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(start: 50, top: 50, end: 50),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Image.asset("assets/images/pngs/language.png", width: 210),
            SizedBox(
              height: 50,
            ),
            Text(
              "PLEASE CHOOSE YOUR LANGUAGES",
              style: TextStyle(fontSize: 18, color: AppColor.black),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 200,
              width: 300,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: languages.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 70,
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          languages[index],
                          style: TextStyle(fontSize: 20),
                        ),
                        Spacer(),
                        Checkbox(
                            value: ischecked[index],
                            checkColor: AppColor.white,
                            onChanged: (value) {
                              ischecked[index] = value!;
                              setState(() {});
                            })
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ]),
        ),
        Container(
          margin: EdgeInsetsDirectional.only(
              start: 10, end: 10, top: 10, bottom: 10),
          width: screenWidth(1.2),
          height: screenWidth(6),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient:
                  LinearGradient(colors: [AppColor.blue2, AppColor.blue8])),
          child: Center(
            child: CustomText(
              styleType: TextStyleType.BODY,
              text: "DONE",
              textColor: AppColor.white,
            ),
          ),
        ),
      ],
    )));
  }
}
