import 'package:flutter/material.dart';
import 'package:third_project/Models/number.dart';
import 'package:third_project/components/categoryNum_items.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({super.key});

  final List<Number> number = const [
    Number(
        sound: 'sounds/colors/black.wav',
        image: "assets/images/colors/color_black.png",
        jpName: "Chichioya",
        enName: "black"),
    Number(
        sound: 'sounds/family_members/daughter.wav',
        image: "assets/images/family_members/family_daughter.png",
        jpName: "Musume",
        enName: "Daughter"),
    Number(
        sound: 'sounds/family_members/grand_father.wav',
        image: "assets/images/family_members/family_grandfather.png",
        jpName: "Sofu",
        enName: "Grandfather"),
    Number(
        sound: 'sounds/family_members/grand_mother.wav',
        image: "assets/images/family_members/family_grandmother.png",
        jpName: "Sobo",
        enName: "Grandmother"),
    Number(
        sound: 'sounds/family_members/mother.wav',
        image: "assets/images/family_members/family_mother.png",
        jpName: "Hahaoya",
        enName: "Mother"),
    Number(
        sound: 'sounds/family_members/older_bother.wav',
        image: "assets/images/family_members/family_older_brother.png",
        jpName: "Ani",
        enName: "Older-brother"),
    Number(
        sound: 'sounds/family_members/older_sister.wav',
        image: "assets/images/family_members/family_older_sister.png",
        jpName: "Ane",
        enName: "Older-sister"),
    Number(
        sound: 'sounds/family_members/son.wav',
        image: "assets/images/family_members/family_son.png",
        jpName: "Musuko",
        enName: "Son"),
    Number(
        sound: 'sounds/family_members/younger_brohter.wav',
        image: "assets/images/family_members/family_younger_brother.png",
        jpName: "Otōto",
        enName: "Younger-brother"),
    Number(
        sound: 'sounds/family_members/youngersister.wav',
        image: "assets/images/family_members/family_younger_sister.png",
        jpName: "Imōto",
        enName: "Younger-sister"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Family Members"),
        backgroundColor: Color(0xff46322B),
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
          itemCount: number.length,
          itemBuilder: (context, index) {
            return Item(
              color: Color.fromARGB(255, 153, 85, 61),
              number: number[index],
            );
          }),
    );
  }

  // List<Widget> getList(List<Number> number) {
  //   List<Widget> itemList = [];
  //   for (int i = 0; i < number.length; i++) {
  //     itemList.add(Item(
  //       number: number[i],
  //       color: Colors.greenAccent,
  //     ));
  //   }
  //   return itemList;
  // }
}
