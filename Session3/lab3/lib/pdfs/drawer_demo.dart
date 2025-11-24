import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => DrawerScreen()),
    GoRoute(path: '/profile', builder: (context, state) => ProfilePage()),
  ],
);

class DrawerDemo extends StatelessWidget {
  const DrawerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Drawer Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      routerConfig: router,
    );
  }
}

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer Demo")),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Menu")),
            ListTile(
              title: Text("Profile"),
              onTap: () {
                context.pop(); // Close the drawer, IMPORTANT !!!
                context.push('/profile');
              },
            ),
          ],
        ),
      ),
      body: Center(child: Text("Home")),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile Page")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.pop();
          },
          child: Text("Go Back to Home"),
        ),
      ),
    );
  }
}
