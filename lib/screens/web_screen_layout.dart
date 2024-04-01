import 'package:flutter/material.dart';
import 'package:whatsapp_clone/reusables/colors.dart';
import 'package:whatsapp_clone/widgets/contacts_list.dart';
import 'package:whatsapp_clone/widgets/web_chat_appbar.dart';
import 'package:whatsapp_clone/widgets/web_profile_bar.dart';
import 'package:whatsapp_clone/widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //web profile Bar
                  WebProfileBar(),

                  //WebSearch bar
                  WebSearchBar(),

                  ContactsList(),
                ],
              ),
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.75,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(color: dividerColor),
                ),
                image: DecorationImage(
                    image: AssetImage('assets/backgroundImage.png'),
                    fit: BoxFit.cover),
              ),
              child: const Column(children: [
                //Chat App Bar
                WebChatAppBar()
                //Chat List
                //Message Input Box
              ])),
        ],
      ),
    );
  }
}
