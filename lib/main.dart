import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:allwork/injection.dart';
import 'package:injectable/injectable.dart';

import 'presentation/core/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await Firebase.initializeApp();
  runApp(AppWidget());
}
