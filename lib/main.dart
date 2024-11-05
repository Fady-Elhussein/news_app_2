import 'package:flutter/material.dart';
import 'package:news_app_2/provider/articals_provider.dart';
import 'package:news_app_2/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ArticalsProvider(),)
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
