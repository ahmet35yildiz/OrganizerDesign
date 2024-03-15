import 'package:flutter/material.dart';
import 'package:organizer_app/ui/views/widgets/profilepage_widgets/messages_profile_widget.dart';
import 'package:organizer_app/ui/views/widgets/profilepage_widgets/mutual_friends.dart';
import 'package:organizer_app/ui/views/widgets/profilepage_widgets/places_widget.dart';
import 'package:organizer_app/ui/views/widgets/profilepage_widgets/profile_widget.dart';

import '../widgets/profilepage_widgets/background_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: -300.0, // Sol üst köşe
              right: 0.0, // Sağ üst köşe
              left: 0.0, // Sol alt köşe
              child: BackgroundWidget(),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ProfileWidget(),
                    MessageProfileWidget(),
                    PlacesWidget(),
                    MutualFriendsWidget(),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 4.0,
              left: 4.0,
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios_new, color: Colors.black,),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            Positioned(
              top: 4.0,
              right: 4.0,
              child: IconButton(
                icon: Icon(Icons.filter_list, color: Colors.black,),
                onPressed: () {
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}

