import 'package:flutter/material.dart';
import '../Screens/prayer_screen.dart';
import 'package:provider/provider.dart';
import '../Providers/Prayer_providers.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context)=> Prayer_Provider(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home:Home()
      ),

    );
  }
}
