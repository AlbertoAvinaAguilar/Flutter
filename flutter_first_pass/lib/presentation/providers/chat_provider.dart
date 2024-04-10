import 'package:flutter/material.dart';
import 'package:flutter_first_pass/config/helpers/get_tes_no_answer.dart';
import 'package:flutter_first_pass/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {

  final ScrollController scrollController=  ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [
    Message(text: 'Hola amor!', fromWho: FromWho.me),
    Message(text: 'como estas?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    if(text.isEmpty) return;

         messageList.add(Message(text: text, fromWho: FromWho.me));

         if( text.endsWith('?')){
          herReply();
         } 

         notifyListeners();
         moveScrollToBottom();
  }

  Future<void> herReply()async {
    final herMessage = await getYesNoAnswer.getAnswer();
    
    messageList.add(herMessage);

    notifyListeners();
    moveScrollToBottom();
  }

  void moveScrollToBottom(){
    scrollController.animateTo(scrollController.position.maxScrollExtent, duration: const Duration( microseconds: 300), curve: Curves.easeOut);
  }

}


