import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tubesabp/view/home/home_nav.dart';
import 'package:tubesabp/view/login&register/welcome_screen.dart';

import 'view/view-model/ReviewViewModel.dart';
import 'view/view-model/article_viewmodel.dart';
import 'view/view-model/museumViewModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => MuseumViewModel()),
          ChangeNotifierProvider(create: (context) => ReviewViewModel()),
          ChangeNotifierProvider(create: (context) => ArticleViewModel()),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: WelcomeScreen(),
        ));
  }
}