import 'package:e_commerce/core/data/repository/shared_prefrence_repository.dart';
import 'package:e_commerce/core/enums/request_type.dart';
import 'package:e_commerce/ui/shared/shared_widget/utiles.dart';

class NetworkConfig {
  static Map<String, String> getHeaders(
      {bool needauth = false,
      required RequestType type,
      Map<String, String>? extraheaders}) {
    return {
      if (needauth)
        "Athrization":
            "Bearer${SharedPrfrenceRepository().getTakenInfo().taken}",
      if (type != RequestType.GET) "Content_type": "aplication/json",
      if (extraheaders != null) ...extraheaders
    };
  }
}
