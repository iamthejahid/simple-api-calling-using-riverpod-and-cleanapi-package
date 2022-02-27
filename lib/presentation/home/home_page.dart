import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_api_calling_using_riverpod_and_cleanapi_package/providers.dart';
import 'package:simple_api_calling_using_riverpod_and_cleanapi_package/presentation/home/home_widgets/init.dart';
import 'package:simple_api_calling_using_riverpod_and_cleanapi_package/presentation/home/home_widgets/loaded.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(body: HookConsumer(builder: (context, ref, chidl) {
      final state = ref.watch(homeNotifierProvider);
      return state.when(() => HomePageInitial(),
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (val) => HomeLoaded(basicGet: val),
          error: (message) => Text(message.toString()));
    })));
  }
}
