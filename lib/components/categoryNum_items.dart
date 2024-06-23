import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:third_project/Models/number.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.number,
    required this.color,
  });
  final Number number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      color: color,
      child: Row(
        children: [
          Container(
            color: Color(0xffFFF6DC),
            child: Image.asset(number.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  number.enName,
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(
                  AssetSource(number.sound),
                );
              },
              icon: const Icon(
                Icons.play_arrow_rounded,
                size: 30,
                color: Colors.black,
              ))
        ],
      ),
    );
  }
}
