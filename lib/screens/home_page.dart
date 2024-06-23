import 'package:flutter/material.dart';
import 'package:third_project/components/category_items.dart';
import 'package:third_project/screens/family_members.dart';
import 'package:third_project/screens/numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toku"),
        backgroundColor: Color(0xff46322B),
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NumberPage();
              }));
            },
            color: Color(0xffEF9235),
            text: "Number",
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FamilyPage();
              }));
            },
            color: Color(0xff46322B),
            text: "FamilyMembers",
          ),
          Category(
            color: Color(0xffEF9235),
            text: "Colors",
          ),
          Category(
            color: Color(0xff46322B),
            text: "Phrases",
          ),
        ],
      ),
    );
  }
}
