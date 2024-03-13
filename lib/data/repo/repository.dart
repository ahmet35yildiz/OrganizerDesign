import 'package:organizer_app/data/entity/messages.dart';

class Repository {
  List<Messages> loadMessages() {
    var messagesList = <Messages>[];
    var m1 = Messages(
        title: "Courrier - Airtel",
        message:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        isRead: false);
    var m2 = Messages(
        title: "Courrier - Airtel",
        message:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        isRead: true);
    var m3 = Messages(
        title: "Courrier - Airtel",
        message:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        isRead: true);
    var m4 = Messages(
        title: "Courrier - Airtel",
        message:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        isRead: true);
    messagesList.add(m1);
    messagesList.add(m2);
    messagesList.add(m3);
    messagesList.add(m4);
    return messagesList;
  }
}
