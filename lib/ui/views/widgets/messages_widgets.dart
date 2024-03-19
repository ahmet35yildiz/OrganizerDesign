import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/entity/messages.dart';
import '../../cubit/mainpage_cubit.dart';

class MessagesWidget extends StatefulWidget {
  const MessagesWidget({super.key});

  @override
  State<MessagesWidget> createState() => _MessagesWidgetState();
}

class _MessagesWidgetState extends State<MessagesWidget> {
  @override
  Widget build(BuildContext context) {
    var screenHeigth = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Messages",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            TextButton(onPressed: () {}, child: Text("See all >",style: TextStyle(color: Colors.blue))),
          ],
        ),
        BlocBuilder<MainpageCubit, List<Messages>>(
          builder: (context, messagesList) {
            if (messagesList.isNotEmpty) {
              return ListView.builder(
                shrinkWrap: true, // Ekrana sığdırma
                physics: NeverScrollableScrollPhysics(), // Kaydırmayı kapatma
                itemCount: messagesList.length,
                itemBuilder: (context, index) {
                  var message = messagesList[index];
                  return Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Card(
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
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(message.title,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold)),
                                Text(message.message,
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
                  );
                },
              );
            } else {
              return Text("Boş");
            }
          },
        )
      ],
    );
  }
}
