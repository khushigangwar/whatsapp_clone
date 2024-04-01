import 'package:flutter/material.dart';
import 'package:whatsapp_clone/reusables/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 0.25,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: dividerColor),
          ),
        ),
        child: TextField(
          decoration: InputDecoration(
              filled: true,
              fillColor: searchBarColor,
              prefixIcon: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(Icons.search),
              ),
              hintStyle: const TextStyle(fontSize: 14),
              hintText: 'Search or start new chat',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
        ),
      ),
    );
  }
}
