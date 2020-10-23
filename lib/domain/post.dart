import 'package:firefly/domain/subreddit.dart';

enum PostType { LINK, TEXT }

class Post {
  Subreddit subreddit;
  String author;
  String title;
  PostType type;
}
