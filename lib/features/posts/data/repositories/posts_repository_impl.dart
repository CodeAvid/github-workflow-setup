import 'package:skynet/features/posts/data/remote/posts_remote_datasource.dart';
import 'package:skynet/features/posts/domain/repository/posts_repository.dart';

class PostsRepositoryImpl implements PostsRepository {
  final PostsRemote postsRemote;

  PostsRepositoryImpl(this.postsRemote);
}
