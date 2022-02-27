import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_api_calling_using_riverpod_and_cleanapi_package/domain/basic_get_mode.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState() = Initial;
  const factory HomeState.loading() = Loading;
  const factory HomeState.loaded(BasicGet basicGet) = UserData;
  const factory HomeState.error({String? message}) = Error;
}
