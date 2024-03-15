import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:organizer_app/ui/views/pages/profile_page.dart';
import 'package:organizer_app/ui/views/widgets/mainpage_widgets/contacts_widget.dart';
import 'package:organizer_app/ui/views/widgets/mainpage_widgets/main_background_widget.dart';
import 'package:organizer_app/ui/views/widgets/profilepage_widgets/background_widget.dart';
import 'package:organizer_app/ui/views/widgets/mainpage_widgets/messages_widgets.dart';
import 'package:organizer_app/ui/views/widgets/mainpage_widgets/recents_widget.dart';
import 'package:organizer_app/ui/views/widgets/mainpage_widgets/welcome_widget.dart';

import '../../cubit/mainpage_cubit.dart';

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
        floatingActionButton: SizedBox(
          width: screenWidth / 5,
          height: screenWidth / 5,
          child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
              backgroundColor: Colors.orange,
              shape: CircleBorder(),
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 40,
              )),
        ),
      ),
      Positioned(
        top: -250.0, // Sol üst köşe
        right: 0.0, // Sağ üst köşe
        child: MainBackgroundWidget(),
      ),
    ]);
  }
}
