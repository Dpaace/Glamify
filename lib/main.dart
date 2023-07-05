import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Model/GetX/Binding/initial_binding.dart';
import 'Model/GetX/Controller/duplicate_controller.dart';
import 'View/IntroScreen/intro_screen.dart';
import 'View/RootScreen/root.dart';
import 'ViewModel/Initial/initial.dart';

// widget.dart line no 284
// profile screen.dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HighPriorityInitial.initial();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isFirst =
        Get.find<DuplicateController>().introFunctions.getLaunchStatus();
    return GetMaterialApp(
      initialBinding: InitialBinding(),
      title: 'Glamify',
      home: isFirst
          ? const IntroScreen()
          : const RootScreen(
              index: 0,
            ),
    );
  }
}
