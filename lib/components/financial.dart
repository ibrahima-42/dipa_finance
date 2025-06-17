import 'package:flutter/material.dart';

class Financial extends StatelessWidget {
  const Financial({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      // margin: EdgeInsets.all(16),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color.fromARGB(80, 169, 103, 235),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(20),
          //   child: Align(
          //     alignment: Alignment.centerLeft,
          //     child: Image(
          //       image: AssetImage('assets/images/logo.jpg'),
          //       width: 40,
          //       height: 40,
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Let's check your"),
                  SizedBox(width: 5),
                  Text(
                "Financial",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
                ],
              ),
              
              Row(
                children: [
                  Text(
                    "Insight",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text("for the month of june !"),
                ],
              ),
            ],
          ),
          Spacer(),
          Align(
            alignment: Alignment.centerRight,
            child: Icon(Icons.arrow_forward_ios_rounded,size: 16,)),
        ],
      ),
    );
  }
}
