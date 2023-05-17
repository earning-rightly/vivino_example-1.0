import 'package:flutter/material.dart';

Widget buildScrollToIndexes(
    String picturAddress, String pictureName, Color indexButtonColor) {
  return Container(
    color: Colors.white,
    width: 450,
    height: 80,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        primary: indexButtonColor,
        onPrimary: Colors.black,
        textStyle: TextStyle(fontSize: 30),
      ),
      onPressed: () {},
      child: Row(
        children: [
          Image.asset(
            picturAddress,
            height: 100,
            width: 100,
          ),
          SizedBox(width: 13),
          Text(pictureName),
        ],
      ),
    ),
  );
}
