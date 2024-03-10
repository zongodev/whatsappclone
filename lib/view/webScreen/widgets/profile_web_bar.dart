import 'package:flutter/material.dart';
import 'package:whatsupuiclone/controller/profile_controller.dart';
import 'package:whatsupuiclone/cosnts/colors.dart';
class ProfileWebBar extends StatelessWidget {
   ProfileWebBar({Key? key}) : super(key: key);
ProfileController? profileController;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.077,
      width: MediaQuery.of(context).size.width*0.25,
      color: webAppBarColor,
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("assets/me1.jpg"),
            radius: 30,
          ),
          Row(
            children: [
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
          ),

        ],
      ),
    );
  }
}
