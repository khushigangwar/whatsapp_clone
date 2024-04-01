import 'package:flutter/material.dart';
import 'package:whatsapp_clone/reusables/colors.dart';

class SenderMessageCard extends StatelessWidget {
  final String message;
  final String date;

  const SenderMessageCard(
      {super.key, required this.message, required this.date});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 45),
        child: Card(
          elevation: 1,
          margin: const EdgeInsets.all(20),
          color: senderMessageColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 30, top: 5, bottom: 20),
                child: Text(message, style: const TextStyle(fontSize: 16)),
              ),
              Positioned(
                top: 20,
                bottom: 2,
                child: Row(
                  children: [
                    Text(
                      date,
                      style:
                          const TextStyle(fontSize: 13, color: Colors.white60),
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    const Icon(
                      Icons.done_all,
                      size: 20,
                      color: Colors.white60,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
