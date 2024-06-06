import 'dart:convert';

import 'package:skynet/features/posts/data/model/post_model.dart';
import 'package:skynet/services/endpoint.dart';
import 'package:skynet/services/network_manager.dart';
import 'package:skynet/services/typedef.dart';

abstract class PostsRemote {
  Future<PostModel> getPosts();
}

class PostsRemoteImpl implements PostsRemote {
  final NetworkManager networkManager;

  PostsRemoteImpl({required this.networkManager});

  @override
  Future<PostModel> getPosts() async {
    final response = await networkManager.get(Endpoint.posts);
    var decodedResponse =
        jsonDecode(utf8.decode(response.bodyBytes)) as MapDynamic;
    return PostModel.fromJson(decodedResponse);
  }
}
