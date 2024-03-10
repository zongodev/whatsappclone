import 'package:flutter/material.dart';
import 'package:whatsupuiclone/cosnts/colors.dart';

import '../../shared/contact_list.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: messageColor,
            onPressed: () {},
            child: const Icon(
              Icons.comment,
              color: Colors.white,
            )),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: appBarColor,
          title: const Text(
            "WhatsApp",
            style: TextStyle(
                color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.comment,
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
          bottom: const TabBar(
            tabs: [
              Text("CHATS"),
              Text("STATUS"),
              Text("CALLS"),
            ],
            indicatorColor: tabColor,
            labelPadding: EdgeInsets.all(10),
            labelColor: tabColor,
            unselectedLabelColor: Colors.grey,
            //padding: EdgeInsets.symmetric(vertical: 8),
          ),
        ),
        body: ContactList(),
      ),
    );
  }
}
