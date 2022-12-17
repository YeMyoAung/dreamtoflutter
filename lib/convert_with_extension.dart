// To parse this JSON data, do
//
//     final postModel = postModelFromJson(jsonString);

import 'dart:convert';

List<PostWithConvertModel> postModelFromJson(String str) =>
    List<PostWithConvertModel>.from(
        json.decode(str).map((x) => PostWithConvertModel.fromJson(x)));

String postModelToJson(List<PostWithConvertModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PostWithConvertModel {
  PostWithConvertModel({
    required this.id,
    required this.isActive,
    required this.published,
    required this.pictures,
    required this.profile,
    required this.tags,
    required this.like,
    required this.share,
    required this.comment,
    required this.description,
  });

  String id;
  bool isActive;
  String published;
  List<String> pictures;
  Profile profile;
  List<String> tags;
  List<Like> like;
  List<Like> share;
  List<Comment> comment;
  String description;

  factory PostWithConvertModel.fromJson(dynamic json) => PostWithConvertModel(
        id: json["id"],
        isActive: json["isActive"],
        published: json["published"],
        pictures: List<String>.from(json["pictures"].map((x) => x)),
        profile: Profile.fromJson(json["profile"]),
        tags: List<String>.from(json["tags"].map((x) => x)),
        like: List<Like>.from(json["like"].map((x) => Like.fromJson(x))),
        share: List<Like>.from(json["share"].map((x) => Like.fromJson(x))),
        comment:
            List<Comment>.from(json["comment"].map((x) => Comment.fromJson(x))),
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "isActive": isActive,
        "published": published,
        "pictures": List<dynamic>.from(pictures.map((x) => x)),
        "profile": profile.toJson(),
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "like": List<dynamic>.from(like.map((x) => x.toJson())),
        "share": List<dynamic>.from(share.map((x) => x.toJson())),
        "comment": List<dynamic>.from(comment.map((x) => x.toJson())),
        "description": description,
      };
}

class Comment {
  Comment({
    required this.id,
    required this.name,
    required this.comment,
  });

  int id;
  String name;
  String comment;

  factory Comment.fromJson(dynamic json) => Comment(
        id: json["id"],
        name: json["name"],
        comment: json["comment"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "comment": comment,
      };
}

class Like {
  Like({
    required this.id,
    required this.name,
  });

  int id;
  String name;

  factory Like.fromJson(dynamic json) => Like(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class Profile {
  Profile({
    required this.email,
    required this.name,
    required this.gender,
  });

  String email;
  String name;
  String gender;

  factory Profile.fromJson(dynamic json) => Profile(
        email: json["email"],
        name: json["name"],
        gender: json["gender"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "name": name,
        "gender": gender,
      };
}
