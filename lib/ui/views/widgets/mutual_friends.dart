import 'package:flutter/material.dart';
import 'package:organizer_app/data/entity/mutual_friends.dart';

class MutualFriendsWidget extends StatefulWidget {
  const MutualFriendsWidget({super.key});

  @override
  State<MutualFriendsWidget> createState() => _MutualFriendsWidgetState();
}

class _MutualFriendsWidgetState extends State<MutualFriendsWidget> {
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
                Text("Mutual Friends",style: TextStyle(fontWeight: FontWeight.bold)),
                TextButton(onPressed: () {}, child: Text("See all >",style: TextStyle(color: Colors.blue))),
              ],
            ),
            SizedBox(
              height: screenHeigth / 6,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: loadFriends().length,
                itemBuilder: (context, index) {
                  var friend = loadFriends()[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Container(
                      width: screenWidth / 4,
                      height: screenHeigth / 6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), // Köşeleri yuvarlak hale getirme
                        image: DecorationImage(
                          image: AssetImage("pictures/${friend.picture}.png"),
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

  List<MutualFriends> loadFriends() {
    var friendsList = <MutualFriends>[];
    var c1 = MutualFriends(picture: "person1");
    var c2 = MutualFriends(picture: "person2");
    var c3 = MutualFriends(picture: "person9");
    var c4 = MutualFriends(picture: "person4");
    var c5 = MutualFriends(picture: "person5");
    friendsList.add(c1);
    friendsList.add(c2);
    friendsList.add(c3);
    friendsList.add(c4);
    friendsList.add(c5);
    return friendsList;
  }
}
