import 'package:flutter/material.dart';

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
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return Text('Indice: $index');
              },
            )),
            Text('Mundo'),
            Text('Otro widget'),
          ],
        ),
      ),
    );
  }
}