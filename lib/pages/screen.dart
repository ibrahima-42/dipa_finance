import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 22, 22, 87),
        ),
        child: Center(
          child: Text('Dipa',style: TextStyle(
            color: Colors.white,
            fontSize: 44,
            fontWeight: FontWeight.w600,
          ),),
        ),
      ),
    );
  }
}