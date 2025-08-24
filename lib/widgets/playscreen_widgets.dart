import 'package:flutter/material.dart';

Widget playgrn() {
  return Container(
    height: 30,
    width: 90,
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 90, 229, 20),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Center(
      child: Text("For You", style: TextStyle(fontWeight: FontWeight.w700)),
    ),
  );
}

Widget playcon({String? txt}) {
  return Container(
    height: 30,
    padding: EdgeInsets.symmetric(horizontal: 16),
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 48, 47, 47),
      borderRadius: BorderRadius.circular(8),
      border: Border.all(
        width: 1.1,
        color: const Color.fromARGB(255, 113, 113, 113),
      ),
    ),
    child: Center(
      child: Text(
        txt ?? "Beauty Binge",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
      ),
    ),
  );
}
