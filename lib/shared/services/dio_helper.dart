import 'package:dio/dio.dart';
import 'package:usthbin/constants/const.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: uri,
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
        receiveDataWhenStatusError: true,
        validateStatus: (_) => true,
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json,
      ),
    );
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    return await dio.get(url,
        queryParameters: query,
        options: Options(
          headers: {
            'authorization': token,
          },
        ));
  }

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String? token,
  }) async {
    return await dio.post(url,
        queryParameters: query,
        data: data,
        options: Options(
          headers: {
            'authorization': token,
          },
        ));
  }

  static Future<Response> patchData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String? token,
  }) async {
    return await dio.patch(url,
        queryParameters: query,
        data: data,
        options: Options(
          headers: {
            'authorization': token,
          },
        ));
  }

  static Future<Response> deleteData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    return await dio.delete(
      url,
      queryParameters: query,
    );
  }
}
