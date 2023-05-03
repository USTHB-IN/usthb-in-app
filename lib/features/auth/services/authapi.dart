import 'package:dio/dio.dart';
import 'package:usthbin/shared/services/dio_helper.dart';

class AuthApi {
  static Future<Response> login(
    String email,
    String password,
  ) async {
    return await DioHelper.postData(
      url: '/auth/login',
      data: {
        'email': email,
        'password': password,
      },
    );
  }

  static Future<Response> getUser(String token) async {
    return await DioHelper.getData(
      url: '/user/:id',
      token: token,
    );
  }

  static Future<Response> updateUser(
      String token, Map<String, dynamic> data) async {
    return await DioHelper.patchData(
      url: '/user/:id',
      token: token,
      data: data,
    );
  }

  static Future<Response> updatePassword(
      String token, String oldpassword, String newpassword) async {
    return await DioHelper.patchData(
      url: '/user/password/:id',
      token: token,
      data: {
        'oldpassword': oldpassword,
        'newpassword': newpassword,
      },
    );
  }

  static Future<Response> resetPassword(String password, String email) async {
    return await DioHelper.postData(
      url: '/user/reset-password',
      data: {'password': password, 'email': email},
    );
  }
}
