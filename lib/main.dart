import 'package:flutter/material.dart';
import 'package:navigation_bar_widget/pages/contact.dart';
import 'package:navigation_bar_widget/pages/home.dart';
import 'package:navigation_bar_widget/pages/video.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation Bar',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  TabController tabBar;

  @override
  void initState() {
    super.initState();
    tabBar = new TabController(length: _tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Bar'),
      ),
      bottomNavigationBar: Material(
        elevation: 30,
        shadowColor: Colors.blueGrey,
        type: MaterialType.card,
        color: Colors.blueAccent,
        borderOnForeground: true,
        child: _tabBarCreation(),
      ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(30),
            child: TabBarView(
              children: [
                HomePage(),
                VideoPage(),
                ContactPage()
              ],
              controller: tabBar,
            ),
          ),
        )
    );
  }

  Widget _tabBarCreation() {
    return TabBar(
        controller: tabBar,
        tabs: _tabs
    );
  }

  List<Widget> _tabs = [
    Tab(
      icon: Icon(Icons.home),
    ),
    Tab(
      icon: Icon(Icons.ondemand_video),
    ),
    Tab(
      icon: Icon(Icons.contacts),
    )
  ];
}
