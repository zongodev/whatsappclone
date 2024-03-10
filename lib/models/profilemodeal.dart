import 'dart:convert';

import 'friends_model.dart';
class Profile {

  String name;
  String picture;

  List<Friend> friends;

  Profile({
    required this.name,
    required this.picture,
    required this.friends,
  });

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(

    name: json["name"],
    picture: json["picture"],
    friends: List<Friend>.from(json["friends"].map((x) => Friend.fromJson(x))),
  );

}


