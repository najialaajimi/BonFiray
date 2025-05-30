import 'user.dart';

class Message {
  final User sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool unread;

  static var length;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.unread,
  });
}

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: BacemBoukhatem,
    time: '5:30 PM',
    text: 'b9adech t5aliha e5er soum ?',
    unread: false,
  ),
  Message(
    sender: WaelChemkhi,
    time: '4:30 PM',
    text: 'bhy ghodwa njik nchouf lmoteur',
    unread: true,
  ),
  Message(
    sender: Eyabenbrahim,
    time: '3:30 PM',
    text: 'najem nadfa3 ken 500dt ken te9bel',
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN

// List<Message> messages = [
//   Message(
//     sender: ironMan,
//     time: '5:30 PM',
//     text: 'Hey dude! Event dead I\'m the hero. Love you 3000 guys.',
//     unread: true,
//   ),
//   Message(
//     sender: currentUser,
//     time: '4:30 PM',
//     text: 'We could surely handle this mess much easily if you were here.',
//     unread: true,
//   ),
//   Message(
//     sender: ironMan,
//     time: '3:45 PM',
//     text: 'Take care of peter. Give him all the protection & his aunt.',
//     unread: true,
//   ),
//   Message(
//     sender: ironMan,
//     time: '3:15 PM',
//     text: 'I\'m always proud of her and blessed to have both of them.',
//     unread: true,
//   ),
//   Message(
//     sender: currentUser,
//     time: '2:30 PM',
//     text: 'But that spider kid is having some difficulties due his identity reveal by a blog called daily bugle.',
//     unread: true,
//   ),
//   Message(
//     sender: currentUser,
//     time: '2:30 PM',
//     text: 'Pepper & Morgan is fine. They\'re strong as you. Morgan is a very brave girl, one day she\'ll make you proud.',
//     unread: true,
//   ),
//   Message(
//     sender: currentUser,
//     time: '2:30 PM',
//     text: 'Yes Tony!',
//     unread: true,
//   ),
//   Message(
//     sender: ironMan,
//     time: '2:00 PM',
//     text: 'I hope my family is doing well.',
//     unread: true,
//   ),
// ];