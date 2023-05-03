import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'authapi.dart';

class AuthRepo {
  static const _secureStorage = FlutterSecureStorage();

  static Future<Response> login(String email, String password) async {
    final Response response = await AuthApi.login(email, password);
    return response;
  }

  static Future<Response> getUser(String token) async {
    final Response response = await AuthApi.getUser(token);
    return response;
  }

  static Future<Response> updateUser(
      String token, Map<String, dynamic> data) async {
    final Response response = await AuthApi.updateUser(token, data);
    return response;
  }

  static Future<Response> updatePassword(
      String token, String oldpassword, String newpassword) async {
    final Response response =
        await AuthApi.updatePassword(token, oldpassword, newpassword);
    return response;
  }

  static Future<Response> resetPassword(String password, String email) async {
    final Response response = await AuthApi.resetPassword(password, email);
    return response;
  }

  static Future<void> deleteData() async {
    await _secureStorage.deleteAll();
    await _secureStorage.delete(key: 'x-auth-token');
  }

  static Future<void> persistData(token) async {
    await _secureStorage.write(key: 'x-auth-token', value: token);
  }

  static Future<String?> getToken() async {
    final token = await _secureStorage.read(key: 'x-auth-token');
    return token;
  }

  static Future<String?> get token async => await getToken();
}
