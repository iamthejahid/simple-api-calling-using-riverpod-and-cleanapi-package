import 'package:flutter/material.dart';
import 'package:simple_api_calling_using_riverpod_and_cleanapi_package/domain/basic_get_mode.dart';
import 'package:simple_api_calling_using_riverpod_and_cleanapi_package/presentation/home/home_widgets/init.dart';

class HomeLoaded extends StatelessWidget {
  final BasicGet basicGet;
  const HomeLoaded({required this.basicGet, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (basicGet.data != null)
          Center(
            child: SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: basicGet.data!.length,
                // itemCount: 10,
                itemBuilder: (context, i) => Row(
                  children: [
                    Container(
                      height: 50,
                      width: 40,
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: Image.network(basicGet.data![i].avatar ?? ""),
                      // child: Image.network(_basicGet.data![i].avatar ?? ""),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    // Text(_basicGet.data![i].id.toString()),
                    Text(basicGet.data![i].id!.toString()),

                    const SizedBox(
                      width: 10,
                    ),
                    // Text(_basicGet.data![i].firstName ?? ""),
                    Text(basicGet.data![i].email!),

                    const SizedBox(
                      width: 10,
                    ),
                    // Text(_basicGet.data![i].firstName ?? " "),
                    Text(basicGet.data![i].lastName!),

                    const SizedBox(
                      width: 10,
                    ),
                    // Text(_basicGet.data![i].email ?? ""),
                    Text(basicGet.data![i].lastName!),

                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
        HomePageInitial()
      ],
    );
  }
}
