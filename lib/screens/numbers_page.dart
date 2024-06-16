import 'package:flutter/material.dart';
import 'package:third_project/Models/number.dart';
import 'package:third_project/components/categoryNum_items.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({super.key});

  final List<Number> number = const [
    Number(
        image: "assets/images/numbers/number_one.png",
        jpName: "Ichi",
        enName: "One"),
    Number(
        image: "assets/images/numbers/number_two.png",
        jpName: "Ni",
        enName: "Two"),
    Number(
        image: "assets/images/numbers/number_three.png",
        jpName: "San",
        enName: "Three"),
    Number(
        image: "assets/images/numbers/number_four.png",
        jpName: "Shi",
        enName: "Four"),
    Number(
        image: "assets/images/numbers/number_five.png",
        jpName: "GO",
        enName: "Five"),
    Number(
        image: "assets/images/numbers/number_six.png",
        jpName: "Roku",
        enName: "Six"),
    Number(
        image: "assets/images/numbers/number_seven.png",
        jpName: "Sebun",
        enName: "Seven"),
    Number(
        image: "assets/images/numbers/number_eight.png",
        jpName: "Hachi",
        enName: "Eight"),
    Number(
        image: "assets/images/numbers/number_nine.png",
        jpName: "Kyu",
        enName: "Nine"),
    Number(
        image: "assets/images/numbers/number_ten.png",
        jpName: "JU",
        enName: "Ten"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Number"),
        backgroundColor: Color(0xff46322B),
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
          itemCount: number.length,
          itemBuilder: (context, index) {
            return Item(number: number[index]);
          }),
    );
  }

  List<Widget> getList(List<Number> number) {
    List<Widget> itemList = [];
    for (int i = 0; i < number.length; i++) {
      itemList.add(Item(number: number[i]));
    }
    return itemList;
  }
}
