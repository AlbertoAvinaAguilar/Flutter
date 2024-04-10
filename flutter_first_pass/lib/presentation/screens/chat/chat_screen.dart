import 'package:flutter/material.dart';
import 'package:flutter_first_pass/domain/entities/message.dart';
import 'package:flutter_first_pass/presentation/providers/chat_provider.dart';
import 'package:flutter_first_pass/presentation/widgets/chat/her_message_bubble.dart';
import 'package:flutter_first_pass/presentation/widgets/chat/my_message_bubble.dart';
import 'package:flutter_first_pass/presentation/widgets/chat/shared/message_field_box.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(1.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://media.revistavanityfair.es/photos/60e8406c70839211f5444c64/master/w_1600%2Cc_limit/151864.jpg'),
          ),
        ),
        title: const Text("Mayte <3"),
        // centerTitle: true,
      ),
      body: const _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>(); //Se encarga de escuchar los cambios y redibujar el widget

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder( 
                  controller: chatProvider.scrollController, //Widget de la lista donde se visualizan los mensajes del chat
              itemCount: chatProvider.messageList.length,
              itemBuilder: (context, index) {
                final message = chatProvider.messageList[index];

                return( message.fromWho == FromWho.me)
                ? MyMessageBubble(message: message)
                : HerMessageBubble(message: message);

              },
            )),
            MessageFieldBox( //Widget para enviar mensajes 
              //onValue: (value) =>  chatProvider.sendMessage(value),
              onValue:chatProvider.sendMessage,
              ),
          ],
        ),
      ),
    );
  }
}