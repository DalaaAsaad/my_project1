import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/data/models/commun_respnse.dart';
import 'package:e_commerce/core/data/models/taken_info.dart';
import 'package:e_commerce/core/enums/request_type.dart';
import 'package:e_commerce/core/utils/network_util.dart';

class AuthRepository {
  Future<Either<String, takenInfo>> login({
    required String username,
    required String password,
  }) async {
    try {
      return NetworkUtil.sendRequest(
          type: RequestType.POST,
          route: 'auth/login',
          body: {"username": username, "password": password}).then((value) {
        CommunResponse<Map<String, dynamic>> communTakenInfo =
            CommunResponse.fromjson(value);
        if (communTakenInfo.getstatuscode) {
          return Right(takenInfo.fromJson(communTakenInfo.data ?? {}));
        } else {
          return left(communTakenInfo.message);
        }
      });
    } catch (e) {
      return left(e.toString());
    }
  }
}
