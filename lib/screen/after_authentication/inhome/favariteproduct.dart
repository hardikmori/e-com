import 'package:flutter/material.dart';

class FavariteProduct extends StatelessWidget {
  const FavariteProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Favarite Product'),
        leading: const Icon(Icons.arrow_back_ios_new),
      ),
    ));
  }
}
