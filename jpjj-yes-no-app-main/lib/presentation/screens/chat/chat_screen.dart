import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://scontent.fcyw4-1.fna.fbcdn.net/v/t39.30808-6/327169888_937050997674785_2403338462766723118_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeGL3iaza0JS63f5IvMDdCPBZKwl8_2voxdkrCXz_a-jF45O8LBmty0TYAb_qOWAxvAxVKasMvPDnAhhENJeCDVw&_nc_ohc=P5RFu_eY-WIQ7kNvgFUd-fr&_nc_ht=scontent.fcyw4-1.fna&gid=AFrqEkSPmf7j7fNUuwlft91&oh=00_AYD6VQODzu4NQIehVB2AKapEAehQ6rWfQxapw5KODlKh0Q&oe=668BBF38'),
          ),
        ),
        title: const Text('Chayanne'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    controller: chatProvider.chatScrollController,
                    itemCount: chatProvider.messages.length,
                    itemBuilder: (context, index) {
                      final message = chatProvider.messages[index];

                      return message.fromWho == FromWho.hers
                          ? HerMessageBubble(message: message)
                          : MyMessageBubble(message: message);
                    })),
            MessageFieldBox(
              // onValue: (value) => chatProvider.sendMessage(value),
              onValue: chatProvider.sendMessage,
            ),
          ],
        ),
      ),
    );
  }
}
