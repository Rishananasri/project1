import 'package:flutter/material.dart';

Widget customimg({String? coimg}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(15),
    child: Image.asset(
      coimg ?? "assets/images/cardimg/flipkart.png",
      height: 60,
      width: 80,
      fit: BoxFit.cover,
    ),
  );
}

Widget customloc() {
  return Row(
    children: [
      SizedBox(width: 10),
      Icon(Icons.location_on),
      SizedBox(width: 10),
      Text("673636", style: TextStyle(fontWeight: FontWeight.w800)),
      SizedBox(width: 10),
      Text(
        "Select delivery location >",
        style: TextStyle(
          color: Color.fromARGB(255, 16, 68, 254),
          fontWeight: FontWeight.w800,
        ),
      ),
    ],
  );
}

Widget customsearch() {
  return Align(
    alignment: Alignment.centerLeft,
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          height: 50,
          width: 330,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            border: Border.all(
              width: 1,
              color: const Color.fromARGB(221, 158, 158, 158),
            ),
          ),
          child: Row(
            children: [
              SizedBox(width: 10),
              Icon(Icons.search),
              SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search for products",
                    border: InputBorder.none,
                  ),
                ),
              ),
              Icon(
                Icons.camera_alt,
                color: const Color.fromARGB(255, 108, 108, 108),
              ),
              SizedBox(width: 10),
            ],
          ),
        ),
        SizedBox(width: 5),
        Icon(
          Icons.qr_code_scanner,
          size: 40,
          color: const Color.fromARGB(255, 108, 108, 108),
        ),
      ],
    ),
  );
}

Widget custombag() {
  return SizedBox(
    height: 80,
    width: 90,
    child: Align(
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color.fromARGB(120, 33, 149, 243),
            ),
            height: 50,
            width: 50,
            child: Center(
              child: Image.asset(
                "assets/images/categoryimg/bag.png",
                height: 40,
                width: 40,
              ),
            ),
          ),
          SizedBox(height: 4),
          Text(
            "For You",
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14),
          ),
        ],
      ),
    ),
  );
}

Widget customCard({String? cardimg, String? tset}) {
  return SizedBox(
    height: 80,
    width: 90,
    child: Align(
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          SizedBox(height: 10),
          Image.asset(
            cardimg ?? "assets/images/categoryimg/tshirts.png",
            height: 40,
            width: 40,
          ),
          Text(
            tset ?? "Fashion",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    ),
  );
}

Widget customsponser1({String? txt, String? tst, String? tex}) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          txt ?? "assets/images/sponsimg/spons1.1.png",
          height: 140,
          width: 120,
          fit: BoxFit.cover,
        ),
      ),
      Text(
        tst ?? "Launch price ₹ 799",
        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
      ),
      Text(tex ?? "Airdopes 131 Gen2"),
    ],
  );
}

Widget customsponser2({String? txt, String? tst, String? tex}) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          txt ?? "assets/images/sponsimg/watch1.png",
          height: 140,
          width: 120,
          fit: BoxFit.cover,
        ),
      ),
      Text(
        tst ?? "Up to 40% Off",
        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
      ),
      Text(tex ?? "Inspired designs"),
    ],
  );
}
