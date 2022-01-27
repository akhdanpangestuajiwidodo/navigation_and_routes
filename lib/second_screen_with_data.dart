import 'package:flutter/material.dart';

class SecondScreenWithData extends StatelessWidget {
  final String data;

  SecondScreenWithData(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(data),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
