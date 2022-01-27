import 'package:flutter/material.dart';

class FirstSceen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation & Routing"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Go To Second Screen'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Navigation with Data'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Return Data from another Screen'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Replace Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
