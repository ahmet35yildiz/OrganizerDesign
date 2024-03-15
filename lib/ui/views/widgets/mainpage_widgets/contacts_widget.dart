import 'package:flutter/material.dart';

import '../../../../data/entity/contacts.dart';

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
    return SizedBox(height: screenHeigth / 5, width: screenWidth,
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Contacts",style: TextStyle(fontWeight: FontWeight.bold)),
                TextButton(onPressed: () {}, child: Text("See all >",style: TextStyle(color: Colors.blue))),
              ],
            ),
            SizedBox(
              height: screenHeigth / 7.5,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: loadContacts().length,
                itemBuilder: (context, index) {
                  var contact = loadContacts()[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: screenWidth / 11,
                          backgroundImage: AssetImage("pictures/${contact.picture}.png"),
                        ),
                        Text(contact.name,style: TextStyle(fontSize: 12,color: Colors.grey),),
                      ],
                    ),
                  );
                },
              ),
            ),
          ]),
    );
  }

  List<Contacts> loadContacts() {
    var contactsList = <Contacts>[];
    var c1 = Contacts(name: "Ronson", picture: "person1");
    var c2 = Contacts(name: "Daniel", picture: "person2");
    var c3 = Contacts(name: "Nicole", picture: "person9");
    var c4 = Contacts(name: "Adam", picture: "person4");
    var c5 = Contacts(name: "Jennifer", picture: "person5");
    contactsList.add(c1);
    contactsList.add(c2);
    contactsList.add(c3);
    contactsList.add(c4);
    contactsList.add(c5);
    return contactsList;
  }
}