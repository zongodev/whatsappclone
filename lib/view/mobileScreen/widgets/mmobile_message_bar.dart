import 'package:flutter/material.dart';

import '../../../cosnts/colors.dart';
class MobileMessageBar extends StatelessWidget {
  const MobileMessageBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.07,
      decoration: const BoxDecoration(
        color: mobileChatBoxColor,
        borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15))
      ),
      child: Row(
        children: [
           IconButton(
            icon: const Icon(Icons.emoji_emotions,),
            color: Colors.grey, onPressed: () {  },
          ),

          Expanded(
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 20),
                fillColor: searchBarColor,
                filled: true,
                hintText: "Type a message ",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),

              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.attach_file,),
            color: Colors.grey, onPressed: () {  },
          ),
          IconButton(
            icon: const Icon(Icons.gif,),
            color: Colors.grey, onPressed: () {  },
          ),
          IconButton(
            icon: const Icon(Icons.camera_alt,),
            color: Colors.grey, onPressed: () {  },
          ),
        ],
      ),
    );
  }
}
