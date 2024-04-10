import 'package:dio/dio.dart';
import 'package:flutter_first_pass/infraestructure/models/yes_no_model.dart';

import '../../domain/entities/message.dart';

class GetYesNoAnswer {
final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');
   
   final yesNoModel = YesNoModel.fromJsonMap(response.data);

   return yesNoModel.toMessageEntity();

    // return Message(text: response.data['answer'], fromWho: FromWho.hers,imageUrl: response.data['image']);
  //  throw UnimplementedError();
  }
}