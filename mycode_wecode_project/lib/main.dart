import 'package:flutter/material.dart';
import 'package:mycode_wecode_project/src/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
