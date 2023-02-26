// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

List<Post> postFromJson(String str) => List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

String postToJson(List<Post> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Post {
  Post({
    required this.category,
    required this.id,
  });

  String category;
  String id;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
    category: json["category"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "category": category,
    "id": id,
  };

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      category: map['category'],
      id: map['id'],
    );
  }
}
