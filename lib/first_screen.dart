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
              onPressed: () {
                Navigator.pushNamed(context, '/secondScreen');
              },
              child: const Text('Go To Second Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/secondScreenWithData', arguments: 'Hello im from first screen');
              },
              child: const Text('Navigation with Data'),
            ),
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.pushNamed(context, '/returnData');
                SnackBar snackBar = SnackBar(content: Text('${result}'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
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
