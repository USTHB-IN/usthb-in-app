import 'package:usthbin/shared/services/dio_helper.dart';
import 'package:usthbin/features/home/models/announcements/announcements.dart';

class AnnouncementsApi {
  static Future<List<Announcements>> getPosts(String token) async {
    try {
      final res = await DioHelper.getData(url: '/announcements/', token: token);
      if (res.statusCode == 200) {
        final announcements = res.data['posts'] as List;
        return announcements.map((e) => Announcements.fromJson(e)).toList();
      } else {
        throw Exception(res.data['error'] ?? 'Something went wrong');
      }
    } catch (e) {
      print(e);
      throw Exception('Something went wrong');
    }
  }
}
