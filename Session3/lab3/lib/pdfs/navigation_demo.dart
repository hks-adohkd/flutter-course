import 'package:flutter/material.dart';

class NavigationDemoApp extends StatelessWidget {
  const NavigationDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation Demo 1',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to Details"),
          onPressed: () async {
            final result = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => DetailsScreen(message: "Hello! from Home"),
              ),
            );
            if (!context.mounted) return;
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text("Returned: $result")));
          },
        ),
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  final String message;
  const DetailsScreen({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Message from home: $message"),
            ),
            ElevatedButton(
              child: Text("Back"),
              onPressed: () => Navigator.pop(context, "Hello! from Details"),
            ),
          ],
        ),
      ),
    );
  }
}
