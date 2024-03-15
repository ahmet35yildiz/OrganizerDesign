import 'package:flutter/material.dart';
import 'package:organizer_app/data/entity/places.dart';

class PlacesWidget extends StatefulWidget {
  const PlacesWidget({super.key});

  @override
  State<PlacesWidget> createState() => _PlacesWidgetState();
}

class _PlacesWidgetState extends State<PlacesWidget> {
  @override
  Widget build(BuildContext context) {
    var screenHeigth = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(height: screenHeigth / 4, width: screenWidth,
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Places",style: TextStyle(fontWeight: FontWeight.bold)),
                TextButton(onPressed: () {}, child: Text("See all >",style: TextStyle(color: Colors.blue))),
              ],
            ),
            SizedBox(
              height: screenHeigth / 6,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: loadPlaces().length,
                itemBuilder: (context, index) {
                  var place = loadPlaces()[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Container(
                      width: screenWidth / 4,
                      height: screenHeigth / 6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), // Köşeleri yuvarlak hale getirme
                        image: DecorationImage(
                          image: AssetImage("pictures/${place.picture}.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

          ]),
    );
  }

  List<Places> loadPlaces() {
    var placesList = <Places>[];
    var c1 = Places(picture: "place1");
    var c2 = Places(picture: "place2");
    var c3 = Places(picture: "place3");
    var c4 = Places(picture: "place4");
    var c5 = Places(picture: "place5");
    placesList.add(c1);
    placesList.add(c2);
    placesList.add(c3);
    placesList.add(c4);
    placesList.add(c5);
    return placesList;
  }
}
