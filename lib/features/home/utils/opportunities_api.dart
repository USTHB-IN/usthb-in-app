import 'package:usthbin/shared/services/dio_helper.dart';

import '../models/opportunities/opportunities.dart';

class OpportunitiesApi {
  static Future<List<Opportunities>> getOpportunities(String token) async {
    try {
      final res = await DioHelper.getData(url: '/opportunities/', token: token);
      if (res.statusCode == 200) {
        final announcements = res.data['opportunities'] as List;
        return announcements.map((e) => Opportunities.fromJson(e)).toList();
      } else {
        throw Exception(res.data['error'] ?? 'Something went wrong');
      }
    } catch (e) {
      print(e);
      throw Exception('Something went wrong');
    }
  }
}
