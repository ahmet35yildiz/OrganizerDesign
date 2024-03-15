import 'package:flutter/material.dart';

class BackgroundWidget extends StatefulWidget {
  const BackgroundWidget({super.key});

  @override
  State<BackgroundWidget> createState() => _BackgroundWidgetState();
}

class _BackgroundWidgetState extends State<BackgroundWidget> {
  @override
  Widget build(BuildContext context) {
    var screenHeigth = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth / 2.5, // Genişlik
      height: screenHeigth / 2.1, // Yükseklik
      decoration: BoxDecoration(
        color: Colors.greenAccent.withOpacity(0.5),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(screenWidth / 1.5),
          bottomRight: Radius.circular(screenWidth / 1.5),
        ),
      ),
    );
  }
}
