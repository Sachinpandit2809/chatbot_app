import 'dart:convert';

import 'package:chatbot_app/utils/utils.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class Chatbot extends StatefulWidget {
  const Chatbot({super.key});

  @override
  State<Chatbot> createState() => _ChatbotState();
}

class _ChatbotState extends State<Chatbot> {
  ChatUser myself = ChatUser(id: '1', firstName: 'sachin');
  ChatUser bot = ChatUser(id: '2', firstName: 'my_Ai');
  final apiEndPoint =
      'https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash-latest:generateContent?key=AIzaSyB4AJwC7f1r6y_gmd3EUy8_-LugEqMOpak';
  final header = {'Content-Type': 'application/json'};
  List<ChatMessage> allMessages = [];
  List<ChatUser> typing = [];
  getMessage(ChatMessage m) async {
    typing.add(bot);
    allMessages.insert(0, m);
    setState(() {});
    var data = <String, dynamic>{
      "contents": [
        {
          "parts": [
            {"text": m.text}
          ]
        }
      ]
    };

    try {
      await http
          .post(Uri.parse(apiEndPoint), headers: header, body: jsonEncode(data))
          .then((onValue) {
        if (onValue.statusCode == 200) {
          var result = jsonDecode(onValue.body);
          debugPrint(result['candidates'][0]['content']['parts'][0]['text']);
          ChatMessage m1 = ChatMessage(
              text: result['candidates'][0]['content']['parts'][0]['text'],
              user: bot,
              createdAt: DateTime.now());
          allMessages.insert(0, m1);
          setState(() {});
        } else {
          debugPrint("............error occured");
        }
      }).catchError((onError) {
        debugPrint("@@@@@@@@@@@@@@@@@@@error occurred ");
      });
    } catch (e) {
      Utils().toastErrorMessage(e.toString());
    }

    typing.remove(bot);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: DashChat(
            typingUsers: typing,
            currentUser: myself,
            onSend: (ChatMessage m) {
              getMessage(m);
            },
            messages: allMessages),
      ),
    );
  }
}
