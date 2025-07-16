import 'package:flutter/material.dart';
import 'package:practice_flutter/data/notifiers.dart';

import 'views/widget_tree.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier, builder: (context, isDarkMode, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.teal,
            brightness: isDarkMode ? Brightness.dark : Brightness.light,
          ),
        ),
        home: WidgetTree(),
      );
    },);
  }
}
