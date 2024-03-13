import 'package:flutter/material.dart';

class ContactsWidget extends StatefulWidget {
  const ContactsWidget({super.key});

  @override
  State<ContactsWidget> createState() => _ContactsWidgetState();
}

class _ContactsWidgetState extends State<ContactsWidget> {
  @override
  Widget build(BuildContext context) {
    var screenHeigth = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(height: screenHeigth / 5.5, width: screenWidth,
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Contacts",style: TextStyle(fontWeight: FontWeight.bold)),
            TextButton(onPressed: () {}, child: Text("See all >",style: TextStyle(color: Colors.blue))),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(height: screenHeigth / 8.5,
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      "pictures/person1.png",
                      width: screenWidth / 5,
                      height: screenHeigth / 11,
                      fit: BoxFit.cover,
                    )),

                Text("Ronson",style: TextStyle(fontSize: 12,color: Colors.grey),),
              ],
            ),
          ),
          SizedBox(height: screenHeigth / 8.5,
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      "pictures/person1.png",
                      width: screenWidth / 5,
                      height: screenHeigth / 11,
                      fit: BoxFit.cover,
                    )),

                Text("Ronson",style: TextStyle(fontSize: 12,color: Colors.grey),),
              ],
            ),
          ),
          SizedBox(height: screenHeigth / 8.5,
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      "pictures/person1.png",
                      width: screenWidth / 5,
                      height: screenHeigth / 11,
                      fit: BoxFit.cover,
                    )),

                Text("Ronson",style: TextStyle(fontSize: 12,color: Colors.grey),),
              ],
            ),
          ),
          SizedBox(height: screenHeigth / 8.5,
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      "pictures/person1.png",
                      width: screenWidth / 5,
                      height: screenHeigth / 11,
                      fit: BoxFit.cover,
                    )),

                Text("Ronson",style: TextStyle(fontSize: 12,color: Colors.grey),),
              ],
            ),
          ),
        ])
      ]),
    );
  }
}
