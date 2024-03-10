import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsupuiclone/controller/profile_controller.dart';
import 'package:whatsupuiclone/cosnts/colors.dart';

import '../view/mobileScreen/widgets/mobile_chat_screen.dart';

class ContactList extends StatelessWidget {
  ContactList({Key? key}) : super(key: key);

  ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: profileController?.profileInfo?.profile.friends.length,
        itemBuilder: (context, index) {
          final friend = profileController?.profileInfo?.profile.friends[index];
          return Column(
            children: [
              InkWell(
                onTap: () {
                  profileController.friendIndex.value = index;
                  log("${profileController.friendIndex.value}");
                  MediaQuery.of(context).size.width<900?
                  Get.to(MobileChatScreen()):null;
                },
                child: Obx(
                  () => Container(
                    decoration: BoxDecoration(
                        color: profileController.friendIndex.value == index
                            ? Colors.grey
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(15)),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(friend!.picture),
                      ),
                      trailing: Text(friend.latestTimestamp),
                      subtitle: Text(friend.lastChat),
                      title: Text(friend.name),
                    ),
                  ),
                ),
              ),
              const Divider(
                color: dividerColor,
              ),
            ],
          );
        },
      ),
    );
  }
}
