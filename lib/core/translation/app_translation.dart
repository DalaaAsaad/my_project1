import 'package:e_commerce/core/translation/language/ar_language.dart';
import 'package:e_commerce/core/translation/language/en_language.dart';
import 'package:e_commerce/core/translation/language/fr_language.dart';
import 'package:get/get.dart';

class AppTranslation extends Translations {
  Map<String, Map<String, String>> get keys => {
        "en_US": EnLanguage.map,
        "ar_SA": ArLanguage.map,
        "fr_FR": FrLanguage.map
      };
}

tr(String key) => key.tr;
