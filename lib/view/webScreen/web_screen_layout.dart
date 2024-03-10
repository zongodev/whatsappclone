import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsupuiclone/shared/contact_list.dart';
import 'package:whatsupuiclone/shared/messages_list.dart';
import 'package:whatsupuiclone/view/webScreen/widgets/profile_web_bar.dart';
import 'package:whatsupuiclone/view/webScreen/widgets/web_chat_app_bar.dart';
import 'package:whatsupuiclone/view/webScreen/widgets/web_message_bar.dart';
import 'package:whatsupuiclone/view/webScreen/widgets/whatsapp_no_meassage.dart';

import '../../controller/profile_controller.dart';

class WebLayout extends StatelessWidget {
  WebLayout({Key? key}) : super(key: key);
  final ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ProfileWebBar(),
                  ContactList(),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            height: MediaQuery.of(context).size.width * 0.077,
            decoration: const BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/backgroundImage.png"),
            )),
            child: Obx(() {
              return profileController.friendIndex.value == -1
                  ? const WhatsAppNoMessage()
                  : Column(
                      children: [
                        WebChatAppBar(),
                        Expanded(child: MessagesList()),
                        const WebMessageBar(),
                      ],
                    );
            }),
          )
        ],
      ),
    );
  }
}

