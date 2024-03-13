import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:organizer_app/ui/views/widgets/contacts_widget.dart';
import 'package:organizer_app/ui/views/widgets/fab.dart';
import 'package:organizer_app/ui/views/widgets/messages_widgets.dart';
import 'package:organizer_app/ui/views/widgets/recents_widget.dart';
import 'package:organizer_app/ui/views/widgets/welcome_widget.dart';

import '../cubit/mainpage_cubit.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  void initState() {
    super.initState();
    context.read<MainpageCubit>().loadMessages();
  }

  @override
  Widget build(BuildContext context) {
    var screenHeigth = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    print("Screen Heigth: $screenHeigth");
    print("Screen Width: $screenWidth");

    return Stack(children: [
      Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WelcomeWidgets(),
                  RecentsWidget(),
                  ContactsWidget(),
                  MessagesWidget(),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add, color: Colors.white),
          backgroundColor: Colors.orange,
          shape: CircleBorder(),
        ),
      ),
      Positioned(
        top: -250.0, // Sol üst köşe
        right: 0.0, // Sağ üst köşe
        child: BackgroundWidget(),
      ),
    ]);
  }
}
