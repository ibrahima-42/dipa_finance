import 'package:flutter/material.dart';

class Ovo extends StatelessWidget {
  const Ovo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.asset('assets/images/ovo.webp',width: 30,height: 30,),
      ),
      title: const Text('Ovo',style: TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),),
      subtitle: const Text('Abonnement',style: TextStyle(
        color: Colors.black,
        fontSize: 10,
        fontWeight: FontWeight.w400,
      ),),
      trailing: Text('-2500',style: TextStyle(
        color: const Color.fromARGB(255, 207, 62, 62),
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),),
    );
  }
}