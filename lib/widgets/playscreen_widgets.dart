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

Widget profile({String? img, String? txt}) {
  return Row(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(180),
        child: Image.asset(
          img ?? "assets/images/playimg/women.png",
          height: 35,
          width: 35,
          fit: BoxFit.cover,
        ),
      ),
      SizedBox(width: 10),
      Text(
        txt ?? "Shraddha Rane",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
      ),
      SizedBox(width: 10),
      Container(
        height: 25,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: BoxBorder.all(color: Colors.white, width: 1.2),
        ),
        child: Center(
          child: Text(
            "Follow",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    ],
  );
}

Widget overimg({String? img, String? txt1, String? txt2}) {
  return Stack(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(img ?? "assets/images/playimg/shoe.png", width: 370),
      ),
      Positioned(
        top: 12,
        left: 12,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 0, 100, 241),
            borderRadius: BorderRadius.circular(7),
          ),
          child: Text("Popular", style: TextStyle(color: Colors.white)),
        ),
      ),

      Positioned(
        top: 10,
        right: 10,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Icon(Icons.remove_red_eye_outlined, color: Colors.white),
              SizedBox(width: 5),
              Text(txt1 ?? "27.4K", style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
      Positioned(
        bottom: 10,
        right: 10,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Icon(Icons.shopping_bag_outlined, color: Colors.white),
              SizedBox(width: 5),
              Text(txt2 ?? "8 Products", style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget aftrimg({String ? txt1,String ? txt2}) {
  return Row(
    children: [
      Text(
       txt1 ?? "✨ Elevate your Style!",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 15,
        ),
      ),
      SizedBox(width: 150),
      Column(
        children: [
          Icon(Icons.favorite_border, color: Colors.white),
          Text(txt2 ??"26", style: TextStyle(color: Colors.white)),
        ],
      ),
      SizedBox(width: 15),
      Column(
        children: [
          Icon(Icons.share, color: Colors.white),
          Text("Share", style: TextStyle(color: Colors.white)),
        ],
      ),
    ],
  );
}
