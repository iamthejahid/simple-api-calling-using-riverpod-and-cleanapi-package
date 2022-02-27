import 'package:flutter/material.dart';
import 'package:simple_api_calling_using_riverpod_and_cleanapi_package/presentation/home/home_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
