import 'dart:convert';

List<Post> postFromJson(String str) => List<Post>.from(json.decode(str).map((x) => Post.fromMap(x)));

class Post {
  Post({
    required this.id,
    required this.name,
    required this.price,
    required this.created_at,
  });

  int id;
  String name;
  int price;
  String created_at;

  factory Post.fromMap(Map<String, dynamic> json) => Post(
    id: json["id"],
    name: json["name"],
    price: json["price"],
    created_at: json["created_at"],
  );
}