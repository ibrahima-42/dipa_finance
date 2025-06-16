import 'package:flutter/material.dart';

class Top extends StatelessWidget {
  const Top({super.key});

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
          child: const Icon(Icons.account_balance_wallet_outlined,color: Colors.white,size: 20,),
        ),
        Text('Top up',style: TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),),
      ],
    );
  }
}