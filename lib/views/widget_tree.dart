import 'package:flutter/material.dart';
import 'package:practice_flutter/views/pages/home_page.dart';
import 'package:practice_flutter/views/pages/profile_page.dart';
import '../widgets/navbar_widget.dart';
List<Widget> pages =[
  HomePage(),
  ProfilePage(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Practice'),centerTitle: true,),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
