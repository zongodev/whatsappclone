import 'package:flutter/material.dart';
import 'package:whatsupuiclone/cosnts/colors.dart';

class SenderMessageCard extends StatelessWidget {
  final String message;
  final String time;

  const SenderMessageCard({Key? key, required this.message, required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: senderMessageColor,
        margin: const EdgeInsets.only(left: 8, top: 25,bottom: 15),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                message,
              ),
            ),
            Positioned(
              right: 2,
              bottom: 0,
              child: Row(
                children: [
                  Text(
                    time,
                    style: const TextStyle(color: Colors.white38),
                  ),
                  const SizedBox(width: 2,),
                  const Icon(
                    Icons.done_all,
                    color: Colors.white24,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}