import 'package:flutter/material.dart';

class TabsDemo extends StatelessWidget {
  const TabsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tabs Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TabsScreen(),
    );
  }
}

class TabsScreen extends StatelessWidget {
  const TabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tabs"),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.person), text: "Profile"),
              Tab(icon: Icon(Icons.settings), text: "Settings"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Home Tab")),
            Center(child: Text("Profile Tab")),
            Center(child: Text("Settings Tab")),
          ],
        ),
      ),
    );
  }
}
