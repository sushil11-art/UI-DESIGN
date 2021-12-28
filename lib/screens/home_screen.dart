import 'package:design_app/widgets/bottom_navbar.dart';
import 'package:design_app/widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outline))
        ],
      ),
      body: HomeBody(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
