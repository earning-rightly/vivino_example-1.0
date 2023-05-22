import 'package:flutter/material.dart';

var them = ThemeData(// 스타일을 모아놓을 공간, <style></style>과 유사
    iconTheme: IconThemeData(color: Colors.white), // icon 기본 색상과 크기를 일정하게 만든다
    appBarTheme: AppBarTheme(
        color: Color(0xFF630404),
        actionsIconTheme: IconThemeData(color: Colors.blue)
    ),
    textTheme: TextTheme(
        bodyText2: TextStyle(color: Colors.black)
    )
);

class SearchStyle {
    Color buttonColor = Colors.white30;
    Color buttonTextColor = Colors.black;
}

