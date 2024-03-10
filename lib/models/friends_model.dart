class Friend {
  String name;
  String picture;
  String latestTimestamp;
  String lastChat;
  List<dynamic> messages;

  Friend({
    required this.name,
    required this.picture,
    required this.latestTimestamp,
    required this.lastChat,
    required this.messages,
  });

  factory Friend.fromJson(Map<String, dynamic> json) => Friend(
        name: json["name"],
        picture: json["picture"],
        latestTimestamp: json["latest_timestamp"],
        lastChat: json["lastChat"],
        messages: json["messages"],
      );
}
