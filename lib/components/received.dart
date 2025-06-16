import 'package:flutter/material.dart';

class Received extends StatelessWidget {
  const Received({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 67, 63, 122),
            borderRadius: BorderRadius.circular(20),
          ) ,
          child: const Icon(Icons.arrow_downward,color: Colors.white,size: 20,),
        ),
        Text('Received',style: TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),),
      ],
    );
  }
}