import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(length: 3, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[300],
        title: Text('Tab Bar'),
        bottom: TabBar(controller: tabController, tabs: [
          Tab(icon: Icon(Icons.people)),
          Tab(text: "Tab One"),
          Tab(text: "Tab Two")
        ]),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Center(
            child: Text('People'),
          ),
          Center(
            child: Text('Content One'),
          ),
          Center(
            child: Text('Content Two'),
          ),
        ],
      ),
    );
  }
}
