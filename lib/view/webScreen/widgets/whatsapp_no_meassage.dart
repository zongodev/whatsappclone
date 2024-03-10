import 'package:flutter/material.dart';

class WhatsAppNoMessage extends StatelessWidget {
  const WhatsAppNoMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage("assets/backgroundImage.png"),
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/whatsapp.png",
            color: Colors.white,
            width: 50,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "WhatsApp",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Send and receive messages without having to keep your phone connected.",
            style: TextStyle(
                color: Color(0xff868686), fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
