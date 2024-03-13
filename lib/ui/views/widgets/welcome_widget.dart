import 'package:flutter/material.dart';

class WelcomeWidgets extends StatefulWidget {
  const WelcomeWidgets({super.key});

  @override
  State<WelcomeWidgets> createState() => _WelcomeWidgetsState();
}

class _WelcomeWidgetsState extends State<WelcomeWidgets> {
  @override
  Widget build(BuildContext context) {
    var screenHeigth = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(height: screenHeigth / 10, width: screenWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Welcome back Athul!",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          Text("Organized for you",style: TextStyle(fontSize: 16,color: Colors.grey)),
        ],
      ),
    );
  }
}
