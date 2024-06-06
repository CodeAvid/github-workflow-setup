import 'package:skynet/features/posts/domain/entities/post_entity.dart';

class PostModel {
  final int id;
  final String title;
  final String body;
  final int userId;

  PostModel({
    required this.id,
    required this.title,
    required this.body,
    required this.userId,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id'],
      title: json['title'],
      body: json['body'],
      userId: json['userId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'body': body,
      'userId': userId,
    };
  }

  // create a Map<String, String> from PostModel

  Map<String, String> toMap() {
    return {
      'id': id.toString(),
      'title': title,
      'body': body,
      'userId': userId.toString(),
    };
  }
}

//  convert PostModel to PostEntity

extension PostModelX on PostModel {
  PostEntity toEntity() {
    return PostEntity(
      id: id,
      title: title,
      body: body,
      userId: userId,
    );
  }
}
