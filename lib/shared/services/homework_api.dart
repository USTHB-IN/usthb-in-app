import 'package:usthbin/models/homework/homework.dart';
import 'package:usthbin/shared/services/dio_helper.dart';

class HomeworksApi {
  static Future<List<Homeworks>> getHomeworks(String token) async {
    try {
      final res =
          await DioHelper.getData(url: '/api/announcements/', token: token);
      if (res.statusCode == 200) {
        final announcements = res.data['posts'] as List;
        return announcements.map((e) => Homeworks.fromJson(e)).toList();
      } else {
        throw Exception(res.data['error'] ?? 'Something went wrong');
      }
    } catch (e) {
      print(e);
      throw Exception('Something went wrong');
    }
  }
}
