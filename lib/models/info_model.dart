import 'package:whatsupuiclone/models/profilemodeal.dart';

class Info {
  Profile profile;

  Info({
    required this.profile,
  });

  factory Info.fromJson(Map<String, dynamic> json) => Info(
    profile: Profile.fromJson(json["profile"]),
  );


}