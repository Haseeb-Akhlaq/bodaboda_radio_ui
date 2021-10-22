import 'package:bodaboda_radio/Models/chat.dart';
import 'package:bodaboda_radio/Models/message.dart';
import 'package:bodaboda_radio/constants/colors.dart';
import 'package:flutter/material.dart';

class SendMessageScreen extends StatefulWidget {
  final Chat? chat;
  SendMessageScreen({Key? key, this.chat}) : super(key: key);

  @override
  State<SendMessageScreen> createState() => _SendMessageScreenState();
}

class _SendMessageScreenState extends State<SendMessageScreen> {
  List<Message> messages = [
    Message(message: 'Hello Where are you ?.', sent: false),
    Message(message: 'Im fine', sent: true),
    Message(message: 'Good', sent: false),
    Message(message: 'Nice to meet you.', sent: true),
  ];

  TextEditingController messageController = TextEditingController();
  final _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: AppColors.main,
        title: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(widget.chat!.image!),
            radius: 22,
          ),
          title: Text(
            widget.chat!.name!,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ListView.separated(
                  controller: _controller,
                  itemCount: messages.length,
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 10);
                  },
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: messages[index].sent!
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                              color: messages[index].sent!
                                  ? const Color(0xffFC7D63)
                                  : const Color(0xff404040),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            messages[index].message!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: const Color(0xff404040),
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      children: [
                        const Icon(Icons.emoji_emotions_outlined,
                            color: Colors.white),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            controller: messageController,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                            ),
                            onChanged: (v) {
                              setState(() {});
                            },
                          ),
                        ),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            if (messageController.text.isEmpty) {
                              return;
                            }
                            messages.add(Message(
                              message: messageController.text,
                              sent: true,
                            ));

                            messageController.clear();

                            _controller.animateTo(
                              _controller.position.maxScrollExtent,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.fastOutSlowIn,
                            );

                            setState(() {});
                          },
                          child: Icon(
                            Icons.send,
                            color: messageController.text.isEmpty
                                ? AppColors.textUnselected
                                : Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                    color: Color(0xff404040),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.mic_rounded, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
