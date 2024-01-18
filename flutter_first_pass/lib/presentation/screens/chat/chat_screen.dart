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
                'https://scontent.fbjx1-1.fna.fbcdn.net/v/t39.30808-6/363302007_1820530701674176_522681924158733083_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=9534ce&_nc_eui2=AeHki6xUDINc6Zbqgfjsa4i030DX4BNRTozfQNfgE1FOjJZIoSREnZuUV2bnwAwVtispqhNIw6xmFeCUvh6nk5-x&_nc_ohc=BDktmMlnHjkAX8e9niW&_nc_ht=scontent.fbjx1-1.fna&oh=00_AfCzujQ9s1uF8uY-s99CXQP26mK9kuc0XL9D9Sw_gaVY7g&oe=65A5F07F'),
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