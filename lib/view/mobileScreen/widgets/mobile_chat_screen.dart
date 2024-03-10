import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:whatsupuiclone/cosnts/colors.dart';

import '../../../controller/profile_controller.dart';
import '../../../shared/messages_list.dart';
import 'mmobile_message_bar.dart';

class MobileChatScreen extends StatelessWidget {
  MobileChatScreen({Key? key}) : super(key: key);
  final ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            profileController.friendIndex.value=-1;
            Get.back();

          },
        ),
        backgroundColor: appBarColor,
        elevation: 0,
        title: Text(profileController.profileInfo!.profile
            .friends[profileController.friendIndex.value].name),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.call,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.video_call,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: MessagesList()),
          const MobileMessageBar(),
        ],
      ),
    );
  }
}
