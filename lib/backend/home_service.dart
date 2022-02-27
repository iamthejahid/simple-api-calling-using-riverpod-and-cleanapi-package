import 'package:clean_api/clean_api.dart';
import 'package:simple_api_calling_using_riverpod_and_cleanapi_package/domain/basic_get_mode.dart';

class HomeService {
  // HomeService();
  final cleanApi = CleanApi.instance();
  basicService() async {
    cleanApi.header(true);
    final Either<ApiFailure, BasicGet> response = await cleanApi.get(
      fromJson: (json) => BasicGet.fromJson(json),
      endPoint: 'api/users?page=2',
    );
    return response.fold((l) => l.toString(), (r) => r);
    // return response;
  }
}
