import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_api_calling_using_riverpod_and_cleanapi_package/providers.dart';

class HomePageInitial extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    final state = ref.read(homeNotifierProvider.notifier);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              // context.read(homeNotifierProvider).getData();
              state.getData();
            },
            child: const Text('Get user info'),
          ),
        ],
      ),
    );
  }
}
