import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyectbiblioteca/ui/app.dart';

import 'domain/controller/controlusuariof.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // Get.put(ControlCompras());
  // Get.put(ControladorUser());
  Get.put(ControlAuthFirebase());
  runApp(const App());
}
