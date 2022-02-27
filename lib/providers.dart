import 'package:riverpod/riverpod.dart';
import 'package:simple_api_calling_using_riverpod_and_cleanapi_package/backend/home_service.dart';
import 'package:simple_api_calling_using_riverpod_and_cleanapi_package/application/home/state/home_state.dart';
import 'package:simple_api_calling_using_riverpod_and_cleanapi_package/application/home/notifier/home_notifier.dart';

final homeServiceProvider = Provider<HomeService>((ref) => HomeService());

final homeNotifierProvider = StateNotifierProvider<HomeNotifier, HomeState>(
  (ref) => HomeNotifier(ref.watch(homeServiceProvider)),
);
