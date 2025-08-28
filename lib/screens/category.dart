import 'package:flutter/material.dart';
import 'package:project2/widgets/categoryscree_widgets.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int selectedIndex = 0;

  final List<Map<String, String>> categories = [
    {"name": "For You", "icon": "assets/images/categoriesimg/column.cat1.png"},
    {"name": "Grocery", "icon": "assets/images/categoriesimg/column.cat2.png"},
    {"name": "Fashion", "icon": "assets/images/categoriesimg/column.cat3.png"},
    {
      "name": "Appliances",
      "icon": "assets/images/categoriesimg/column.cat4.png",
    },
    {"name": "Mobiles", "icon": "assets/images/categoriesimg/column.cat5.png"},
    {
      "name": "Electronics",
      "icon": "assets/images/categoriesimg/column.cat6.png",
    },
    {
      "name": "Smart Gadgets",
      "icon": "assets/images/categoriesimg/column.cat7.png",
    },
    {"name": "Home", "icon": "assets/images/categoriesimg/column.cat8.png"},
    {
      "name": "Beauty & Personal care",
      "icon": "assets/images/categoriesimg/column.cat9.png",
    },
    {
      "name": "Toys, Baby, Books..",
      "icon": "assets/images/categoriesimg/column.cat10.png",
    },
  ];

  final List<Map<String, String>> gridItems1 = [
    {
      "name": "Sunday Street",
      "icon": "assets/images/categoriesimg/row1.cat1.png",
    },
    {
      "name": "Onam Specials",
      "icon": "assets/images/categoriesimg/row1.cat2.png",
    },
    {"name": "Claim Now", "icon": "assets/images/categoriesimg/row1.cat3.png"},
    {"name": "Kid's Zone", "icon": "assets/images/categoriesimg/row1.cat4.png"},
  ];

  final List<Map<String, String>> griditems2 = [
    {
      "name": "Flipkart UPI",
      "icon": "assets/images/categoriesimg/row2.cat1.png",
    },
    {"name": "SuperCoin", "icon": "assets/images/categoriesimg/row2.cat2.png"},
    {"name": "Plus Zone", "icon": "assets/images/categoriesimg/row2.cat3.png"},
    {
      "name": "Bill&Recharges",
      "icon": "assets/images/categoriesimg/row2.cat5.png",
    },
    {
      "name": "Flipkart Pay",
      "icon": "assets/images/categoriesimg/row2.cat6.png",
    },
    {
      "name": "Personal Loan",
      "icon": "assets/images/categoriesimg/row2.cat7.png",
    },
    {
      "name": "GenZ trends",
      "icon": "assets/images/categoriesimg/row2.cat8.png",
    },
    {
      "name": "Become Seller",
      "icon": "assets/images/categoriesimg/row2.cat9.png",
    },
    {"name": "LiveShop+", "icon": "assets/images/categoriesimg/row2.cat10.png"},
    {"name": "View All", "icon": "assets/images/categoriesimg/row2.cat11.png"},
  ];

  final List<Map<String, String>> griditems3 = [
    {
      "name": "Flipkart Green",
      "icon": "assets/images/categoriesimg/row3.cat1.png",
    },
    {"name": " Samarth", "icon": "assets/images/categoriesimg/row3.cat2.png"},
    {"name": "Originals", "icon": "assets/images/categoriesimg/row3.cat3.png"},
    {
      "name": "Smart Living",
      "icon": "assets/images/categoriesimg/row3.cat4.png",
    },
    {
      "name": "NextGenBrands",
      "icon": "assets/images/categoriesimg/row3.cat5.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("All Categories", style: TextStyle(color: Colors.black)),
        actions: [
          Icon(Icons.search, color: Colors.black),
          SizedBox(width: 16),
          Icon(Icons.camera_alt, color: Colors.black),
          SizedBox(width: 16),
          Icon(Icons.shopping_cart, color: Colors.black),
          SizedBox(width: 16),
        ],
      ),
      body: Row(
        children: [
          Container(
            width: 100,
            color: Colors.grey[100],
            child: ListView.builder(
              itemCount: categories.length,
              itemBuilder: (context, index) {
                bool isSelected = selectedIndex == index;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.white : Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: isSelected
                          ? [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                blurRadius: 6,
                                offset: Offset(0, 3),
                              ),
                            ]
                          : [],
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            categories[index]["icon"]!,
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          categories[index]["name"]!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: isSelected ? 13 : 12,
                            fontWeight: isSelected
                                ? FontWeight.bold
                                : FontWeight.w500,
                            color: isSelected
                                ? const Color.fromARGB(255, 33, 55, 247)
                                : Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Popular Store",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  buildGrid(gridItems1),

                  SizedBox(height: 20),

                  Text(
                    "Have you tried?",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  buildGrid(griditems2),

                  SizedBox(height: 20),

                  Text(
                    "More on Flipkart",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  buildGrid(griditems3),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
