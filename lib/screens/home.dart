import 'package:flutter/material.dart';
import 'package:project2/widgets/auto_slider.dart';
import 'package:project2/widgets/homescreen_widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 38, 147, 249),
                    Color.fromARGB(1, 86, 173, 255),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              height: 230,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(top: 60),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        customimg(coimg: "assets/images/cardimg/flipkart.png"),
                        customimg(coimg: "assets/images/cardimg/pay.png"),
                        customimg(coimg: "assets/images/cardimg/travel.png"),
                        customimg(coimg: "assets/images/cardimg/grocery_1.png"),
                      ],
                    ),
                    SizedBox(height: 10),
                    customloc(),
                    customsearch(),
                  ],
                ),
              ),
            ),

            Container(
              height: 26,
              width: double.infinity,
              color: const Color(0xFFFFEA8D),
              child: Row(
                children: [
                  SizedBox(width: 7),
                  Text("FREE DELIVERY"),
                  SizedBox(width: 10),
                  Text("✦"),
                  SizedBox(width: 10),
                  Text("7 DAYS RETURN"),
                  SizedBox(width: 10),
                  Text("✦"),
                  SizedBox(width: 10),
                  Text("FREE DELIVERY"),
                  SizedBox(width: 10),
                  Text("✦"),
                ],
              ),
            ),

            SizedBox(height: 10),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  custombag(),
                  customCard(),
                  customCard(
                    cardimg: "assets/images/categoryimg/phone.png",
                    tset: "Mobiles",
                  ),
                  customCard(
                    cardimg: "assets/images/categoryimg/television.png",
                    tset: "Electronics",
                  ),
                  customCard(
                    cardimg: "assets/images/categoryimg/washing.png",
                    tset: "Appliances",
                  ),
                  customCard(
                    cardimg: "assets/images/categoryimg/lipstic.png",
                    tset: "Beauty",
                  ),
                  customCard(
                    cardimg: "assets/images/categoryimg/pot.png",
                    tset: "Home",
                  ),
                  customCard(
                    cardimg: "assets/images/categoryimg/drink.png",
                    tset: "Food & He..",
                  ),
                  customCard(
                    cardimg: "assets/images/categoryimg/toy.png",
                    tset: "Toys,baby..",
                  ),
                  customCard(
                    cardimg: "assets/images/categoryimg/helmet.png",
                    tset: "Auto Acce..",
                  ),
                  customCard(
                    cardimg: "assets/images/categoryimg/cricket.png",
                    tset: "Sports & G.",
                  ),
                  customCard(
                    cardimg: "assets/images/categoryimg/sofa.png",
                    tset: "Furniture",
                  ),
                  customCard(
                    cardimg: "assets/images/categoryimg/motorcycle (1).png",
                    tset: "Auto",
                  ),
                  customCard(
                    cardimg: "assets/images/categoryimg/book.png",
                    tset: "Books & M..",
                  ),
                ],
              ),
            ),

            Divider(
              height: 5,
              thickness: 1,
              color: Color.fromARGB(255, 231, 231, 231),
            ),

            SizedBox(height: 220, child: CarouselDemo()),

            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Sponsored",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                customsponser1(),
                customsponser1(
                  txt: "assets/images/sponsimg/spons1.2.png",
                  tst: "Shop Now",
                  tex: "Tick of Elegance",
                ),
                customsponser1(
                  txt: "assets/images/sponsimg/spons1.3.png",
                  tst: "From ₹899",
                  tex: "Dual pairing",
                ),
              ],
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                customsponser2(),
                customsponser2(
                  txt: "assets/images/sponsimg/make.png",
                  tst: "Min.60% Off",
                  tex: "Makeup essentials",
                ),
                customsponser2(
                  txt: "assets/images/sponsimg/hoodie.png",
                  tst: "From ₹700",
                  tex: "Always stylish",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
