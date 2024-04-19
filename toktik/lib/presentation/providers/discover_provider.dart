import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastructure/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier {

  // TODO: Repository, Datasource 

  bool initialLoading = true;
  List<VideoPost> videos = [];  //Lista del tipo de la entidad 

  Future<void> loadNextPage () async {

    await Future.delayed( const Duration(seconds: 2)); //simulamos una peticion http en responder

    final List<VideoPost> newVideos = videoPosts.map( (video) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity()).toList(); //el map itera la lista y retorna la data en un tipo especifico

    

    videos.addAll( newVideos );
    initialLoading = false;
    notifyListeners();
  }

}