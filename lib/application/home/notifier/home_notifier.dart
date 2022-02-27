import 'package:riverpod/riverpod.dart';
import 'package:simple_api_calling_using_riverpod_and_cleanapi_package/application/home/state/home_state.dart';
import 'package:simple_api_calling_using_riverpod_and_cleanapi_package/backend/home_service.dart';

class HomeNotifier extends StateNotifier<HomeState> {
  final HomeService homeService;

  HomeNotifier(this.homeService) : super(const HomeState());

  Future<void> getData() async {
    try {
      state = const HomeState.loading();
      final userInfo = await homeService.basicService();
      state = HomeState.loaded(userInfo);
    } catch (e) {
      state = const HomeState.error(message: 'Error fetching data');
    }
  }
}
