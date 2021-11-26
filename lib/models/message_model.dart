import 'package:authentification/models/user_model.dart';
import 'package:flutter/cupertino.dart';

class Message {
  final User sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/silvia.jpg',
);

// USERS
final User greg = User(
  id: 1,
  name: 'Doris',
  imageUrl: 'assets/images/doris.jpg',
);
final User james = User(
  id: 2,
  name: 'Josselyn',
  imageUrl: 'assets/images/joss.jpg',
);
final User john = User(
  id: 3,
  name: 'Silvia',
  imageUrl: 'assets/images/silvia.jpg',
);
final User olivia = User(
  id: 4,
  name: 'Benjamin',
  imageUrl: 'assets/images/benjamin.jpg',
);
final User sam = User(
  id: 5,
  name: 'R. Torres ',
  imageUrl: 'assets/images/torres.jpg',
);
final User sophia = User(
  id: 6,
  name: 'Sofia',
  imageUrl: 'assets/images/chat.jpg',
);
final User steven = User(
  id: 7,
  name: 'Carlos',
  imageUrl: 'assets/images/chat.jpg',
);

// FAVORITE CONTACTS
List<User> favorites = [sam, steven, olivia, john, greg];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: james,
    time: '5:30 PM',
    text: '¿Eh, cómo te va? Qué hiciste hoy?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: olivia,
    time: '4:30 PM',
    text: '¿Eh, cómo te va? Qué hiciste hoy?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: john,
    time: '3:30 PM',
    text: '¿Eh, cómo te va? Qué hiciste hoy?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sophia,
    time: '2:30 PM',
    text: '¿Eh, cómo te va? Qué hiciste hoy?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: steven,
    time: '1:30 PM',
    text: '¿Eh, cómo te va? Qué hiciste hoy?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sam,
    time: '12:30 PM',
    text: '¿Eh, cómo te va? Qué hiciste hoy?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: greg,
    time: '11:30 AM',
    text: '¿Eh, cómo te va? Qué hiciste hoy?',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: james,
    time: '5:30 PM',
    text: '¿Eh, cómo te va? Qué hiciste hoy?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Esta bien Solo caminó. Ella es súper linda. ¡El mejor cachorro!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '3:45 PM',
    text: '¿Cómo está el perro?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '3:15 PM',
    text: 'Muchas cosas',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: ' ¿Que tipo de comida comiste?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '2:00 PM',
    text: 'Hoy comí mucha comida.',
    isLiked: false,
    unread: true,
  ),
];
