// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weebs_app/helpers/get_it_helper/get_it_helper.dart';
import 'package:weebs_app/helpers/http_overrides/custom_http_overrides.dart';

import 'services/repositories/anoboy_repository_test.dart';
import 'services/repositories/komiku_repository_test.dart';

Future<void> main() async {
  /// Setup
  setUpAll(
    () async {
      /// Ensure initialized
      TestWidgetsFlutterBinding.ensureInitialized();

      /// Set Custom HTTP Overrides
      HttpOverrides.global = CustomHttpOverrides();

      /// Setup Dependencies
      await GetItHelper.setupDependencies();
    },
  );

  /// Anoboy Repository test
  await AnoboyRepositoryUnitTest.main();

  /// Komiku Repository test
  await KomikuRepositoryUnitTest.main();

  tearDownAll(
    () {
      debugPrint("All Tests are Finished");
    },
  );
}
