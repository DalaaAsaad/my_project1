import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/data/models/commun_respnse.dart';
import 'package:e_commerce/core/data/models/user_info.dart';
import 'package:e_commerce/core/enums/request_type.dart';
import 'package:e_commerce/core/utils/network_util.dart';

class UserInfoRepository {
  Future<Either<String, List<UserInfo>>> getAllUsers() async {
    try {
      return NetworkUtil.sendRequest(
        type: RequestType.GET,
        route: 'users',
      ).then((value) {
        CommunResponse<List<dynamic>> communTakenInfo =
            CommunResponse.fromjson(value);

        if (communTakenInfo.getstatuscode) {
          List<UserInfo> listUserInfo = [];
          for (var item in communTakenInfo.data!) {
            listUserInfo.add(UserInfo.fromJson(item));
          }
          return Right(listUserInfo);
        } else {
          return left(communTakenInfo.message);
        }
      });
    } catch (e) {
      return left(e.toString());
    }
  }
}
