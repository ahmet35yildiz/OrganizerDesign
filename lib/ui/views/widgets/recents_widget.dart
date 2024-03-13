import 'package:flutter/material.dart';

class RecentsWidget extends StatefulWidget {
  const RecentsWidget({super.key});

  @override
  State<RecentsWidget> createState() => _RecentsWidgetState();
}

class _RecentsWidgetState extends State<RecentsWidget> {
  @override
  Widget build(BuildContext context) {
    var screenHeigth = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: screenHeigth / 3.7,
      width: screenWidth,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Recents", style: TextStyle(fontWeight: FontWeight.bold)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              SizedBox(
                height: screenHeigth / 4.3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "pictures/person1.png",
                          width: screenWidth / 2.75,
                          height: screenHeigth / 9,
                          fit: BoxFit.cover,
                        )),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "pictures/person1.png",
                          width: screenWidth / 2.75,
                          height: screenHeigth / 9,
                          fit: BoxFit.cover,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeigth / 4.3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "pictures/person1.png",
                            width: screenWidth / 1.9,
                            height: screenHeigth / 7.6,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: IconButton(
                            icon: Icon(Icons.favorite),
                            onPressed: () {
                              // Favoriye ekleme işlemleri
                            },
                          ),
                        ),
                      ],
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "pictures/person1.png",
                          width: screenWidth / 1.9,
                          height: screenHeigth / 11,
                          fit: BoxFit.cover,
                        )),
                  ],
                ),
              ),
            ])
          ]),
    );
  }
}
