import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:whatsupuiclone/shared/sender_message_card.dart';

import '../controller/profile_controller.dart';
import 'my_message_card.dart';

class MessagesList extends StatelessWidget {
  MessagesList({Key? key}) : super(key: key);
  ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return profileController.profileInfo!.profile
            .friends[profileController.friendIndex.value].messages.isNotEmpty
        ? ListView.builder(
            itemCount: profileController.profileInfo?.profile
                .friends[profileController.friendIndex.value].messages.length,
            itemBuilder: (context, index) {
              if (profileController
                      .profileInfo
                      ?.profile
                      .friends[profileController.friendIndex.value]
                      .messages[index]?["isMe"] ==
                  true) {
                return MyMessageCard(
                  message:
                      '${profileController.profileInfo?.profile.friends[profileController.friendIndex.value].messages[index]?["text"]}',
                  time:
                      '${profileController.profileInfo?.profile.friends[profileController.friendIndex.value].messages[index]?["time"]}',
                );
              } else {
                return SenderMessageCard(
                  message:
                  '${profileController.profileInfo?.profile.friends[profileController.friendIndex.value].messages[index]?["text"]}',
                  time:
                  '${profileController.profileInfo?.profile.friends[profileController.friendIndex.value].messages[index]?["time"]}',
                );
              }
            },
          )
        : const Padding(
            padding: EdgeInsets.all(18.0),
            child: Center(
              child: Text(
                textAlign: TextAlign.justify,
                  "Messages and calls are end-to-end encrypted. No one outside of this chat, not even WhatsApp, can read or listen to them."),
            ),
          );
  }
}
