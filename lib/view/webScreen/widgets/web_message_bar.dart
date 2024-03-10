import 'package:flutter/material.dart';

import '../../../cosnts/colors.dart';
class WebMessageBar extends StatelessWidget {
  const WebMessageBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: dividerColor,
      ),
      height: MediaQuery.of(context).size.height * 0.07,
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          const Icon(
            Icons.emoji_emotions,
            color: Colors.grey,
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(
            Icons.attach_file,
            color: Colors.grey,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 18.0, right: 20),
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
          ),
        ],
      ),
    );
  }
}
