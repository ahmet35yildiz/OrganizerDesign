import 'package:flutter/material.dart';

class MessageProfileWidget extends StatefulWidget {
  const MessageProfileWidget({super.key});

  @override
  State<MessageProfileWidget> createState() => _MessageProfileWidgetState();
}

class _MessageProfileWidgetState extends State<MessageProfileWidget> {
  @override
  Widget build(BuildContext context) {
    var screenHeigth = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Messages",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            TextButton(onPressed: () {}, child: Text("See all >",style: TextStyle(color: Colors.blue))),
          ],
        ),
        Card(
          elevation: 5,
          color: Colors.white,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SizedBox(
              height: screenHeigth / 7,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mark Ronson",
                        style: TextStyle(
                            fontWeight: FontWeight.bold)),
                    Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",

                      style: TextStyle(
                          fontSize: 12),
                      overflow: TextOverflow.ellipsis, // Metin uzunsa noktalama
                      maxLines: 2,),
                    TextButton(
                        onPressed: () {},
                        child: const Text("Reply",
                            style: TextStyle(
                                color: Colors.grey))),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
