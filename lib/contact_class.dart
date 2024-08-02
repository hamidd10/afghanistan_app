import 'package:afganistan_app/constants_file/app_colors.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        title: const Text(
          'Contact US',
          style: TextStyle(fontFamily: 'PlayfairDisplay'),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(
                color: thColor, borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                const Spacer(),
                //Changeable
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage('assets/Hamid.webp'),
                    ),
                    CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage('assets/shoib.jpg'),
                    ),
                  ],
                ),
                const Spacer(),
                //Changeable
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextWidigt(
                      txt: 'Hamid Rahmani',
                    ),
                    TextWidigt(
                      txt: 'Shoib Heidari',
                    ),
                  ],
                ),
                const Spacer(),
                ListTile(
                    leading: const Icon(
                      Icons.location_on_rounded,
                      size: 30,
                    ),
                    title: TextWidigt(txt: 'Herat-Afghanistan')),
                const Spacer(),
                ListTile(
                    leading: const Icon(
                      Icons.phone,
                      size: 30,
                    ),
                    title: TextWidigt(txt: '+93 791323424')),
                const Spacer(),
                ListTile(
                    leading: const Icon(
                      Icons.email,
                      size: 30,
                    ),
                    title: TextWidigt(txt: 'hamidrahmani3300@gmail.com')),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TextWidigt extends StatelessWidget {
  String txt;

  TextWidigt({
    super.key,
    required this.txt,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: const TextStyle(fontFamily: 'PlayfairDisplay', fontSize: 20),
    );
  }
}
