import 'package:clean_api/clean_api.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_api_calling_using_riverpod_and_cleanapi_package/application/app.dart';
import 'package:simple_api_calling_using_riverpod_and_cleanapi_package/backend/api_urls.dart';

void main() {
  CleanApi.instance().setBaseUrl(ApiUrls.baseUrl);
  runApp(const ProviderScope(child: App()));
}
