import 'package:altow_greenhouse_jobs/app/app.dart';
import 'package:altow_greenhouse_jobs/bootstrap.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();
  bootstrap(() => ProviderScope(child: const App()));
}
