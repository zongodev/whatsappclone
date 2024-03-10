  import 'package:flutter/material.dart';
  import 'package:get/get.dart';
  import 'package:whatsupuiclone/shared/messages_list.dart';

  import '../../../controller/profile_controller.dart';
  import '../../../cosnts/colors.dart';

  class WebChatAppBar extends StatelessWidget {
    WebChatAppBar({
      super.key,
    });

    ProfileController profileController = Get.put(ProfileController());

    @override
    Widget build(BuildContext context) {
      return
        Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.077,
              width: MediaQuery.of(context).size.width * 0.75,
              color: webAppBarColor,
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(
                    () => Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(profileController
                              .profileInfo!
                              .profile
                              .friends[profileController.friendIndex.value]
                              .picture),
                          radius: 30,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          profileController.profileInfo!.profile
                              .friends[profileController.friendIndex.value].name,
                          style: const TextStyle(fontSize: 25, color: textColor),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
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
                ],
              ),
            ),

          ],

      );
    }
  }
