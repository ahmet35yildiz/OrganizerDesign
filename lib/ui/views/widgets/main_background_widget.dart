import 'package:flutter/material.dart';

class MainBackgroundWidget extends StatefulWidget {
  const MainBackgroundWidget({super.key});

  @override
  State<MainBackgroundWidget> createState() => _MainBackgroundWidgetState();
}

class _MainBackgroundWidgetState extends State<MainBackgroundWidget> {
  @override
  Widget build(BuildContext context) {
    var screenHeigth = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth / 2.5, // Genişlik
      height: screenHeigth / 2.1, // Yükseklik
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(screenWidth / 0.1),
        ),
      ),
    );
  }
}
