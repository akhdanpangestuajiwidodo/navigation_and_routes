import 'package:flutter/material.dart';

class AnotherScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Back'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

}