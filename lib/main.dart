import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:mentorship_4/core/bootstrap.dart';
import 'package:mentorship_4/core/injection.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await initModule();
  await FlutterLocalization.instance.ensureInitialized();
  runApp(Bootstrap());
}
