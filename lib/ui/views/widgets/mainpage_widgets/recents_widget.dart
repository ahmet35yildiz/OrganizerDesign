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
      height: screenHeigth / 3.1,
      width: screenWidth,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Recents", style: TextStyle(fontWeight: FontWeight.bold)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              SizedBox(
                height: screenHeigth / 3.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "pictures/person9.png",
                          width: screenWidth / 2.75,
                          height: screenHeigth / 8,
                          fit: BoxFit.cover,
                        )),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "pictures/person8.png",
                          width: screenWidth / 2.75,
                          height: screenHeigth / 8,
                          fit: BoxFit.cover,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeigth / 3.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "pictures/person6.png",
                            width: screenWidth / 1.9,
                            height: screenHeigth / 6.3,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: IconButton(
                            icon: Icon(Icons.favorite, color: Colors.white),
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
                          "pictures/person7.png",
                          width: screenWidth / 1.9,
                          height: screenHeigth / 10.5,
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
