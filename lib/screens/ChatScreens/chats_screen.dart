import 'package:bodaboda_radio/Models/chat.dart';
import 'package:bodaboda_radio/screens/ChatScreens/send_message_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  List chats = [
    Chat(image: 'assets/images/profile1.jpg', name: 'Mike Ross', time: '11:33'),
    Chat(
        image: 'assets/images/profile2.jpg',
        name: 'Randy Powell',
        time: '12:21'),
    Chat(
        image: 'assets/images/profile3.jpg',
        name: 'Randy Powell',
        time: '10:21'),
    Chat(
        image: 'assets/images/profile4.jpeg',
        name: 'Randy Powell',
        time: '14:21'),
    Chat(image: 'assets/images/profile1.jpg', name: 'Mike Ross', time: '11:33'),
    Chat(
        image: 'assets/images/profile2.jpg',
        name: 'Randy Powell',
        time: '12:21'),
    Chat(
        image: 'assets/images/profile3.jpg',
        name: 'Randy Powell',
        time: '10:21'),
    Chat(
        image: 'assets/images/profile4.jpeg',
        name: 'Randy Powell',
        time: '14:21')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemCount: chats.length,
      itemBuilder: (context, index) {
        return ChatTile(
          chat: chats[index],
        );
      },
      separatorBuilder: (context, index) {
        return const Divider(
          thickness: 1,
          height: 2,
        );
      },
    );
  }
}

class ChatTile extends StatelessWidget {
  final Chat? chat;

  const ChatTile({Key? key, this.chat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SendMessageScreen(
                      chat: chat,
                    )));
      },
      leading: CircleAvatar(
        backgroundImage: AssetImage(chat!.image!),
        radius: 22,
      ),
      title: Text(chat!.name!),
      subtitle: const Text('Hey there! How are you?'),
      trailing: Text(chat!.time!),
    );
  }
}
