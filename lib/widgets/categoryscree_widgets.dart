import 'package:flutter/material.dart';

  Widget buildGrid(List<Map<String, String>> items) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(items[index]["icon"]!),
            ),
            SizedBox(height: 10),
            Text(
              items[index]["name"]!,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ],
        );
      },
    );
  }

  