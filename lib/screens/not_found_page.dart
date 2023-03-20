import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('PAGE NOT FOUND'),
        ),
        body: const Center(
          child: Text('ERROR 404'),
        ),
      ),
    );
  }
}
