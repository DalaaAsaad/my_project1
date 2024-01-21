import 'package:bot_toast/bot_toast.dart';
import 'package:e_commerce/core/data/repository/shared_prefrence_repository.dart';
import 'package:e_commerce/core/translation/app_translation.dart';
import 'package:e_commerce/ui/views/main_view/main_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: getLocal(),
      translations: AppTranslation(),
      title: 'Flutter Demo',
      builder: BotToastInit(), //1. call BotToastInit
      navigatorObservers: [BotToastNavigatorObserver()],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MainView(),
    );
  }
}

Locale getLocal() {
  String langCode = SharedPrfrenceRepository().getAppLanguge();

  if (langCode == 'ar')
    return Locale('ar', 'SA');
  else if (langCode == 'en')
    return Locale('en', 'US');
  else
    return Locale('fr', 'FR');
}
