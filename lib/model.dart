class Post{
  final int id;
  final int userid;
  final String title;
  final String body;


  Post({
    required this.id,
    required this.userid,
    required this.title,
    required this.body,
});

      factory Post.fromJsom(Map<String,dynamic>e){
        return Post(id: e['id'], userid: e['userId'], title: e['title'], body: e['body']);
      }
}