import 'package:afganistan_app/constants_file/app_colors.dart';
import 'package:afganistan_app/constants_file/description.dart';
import 'package:afganistan_app/contact_class.dart';
import 'package:afganistan_app/map_page.dart';
import 'package:afganistan_app/provinces_direactory/provinces_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        title: TextWidigt(txt: 'About Afghanistan'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Spacer(),
          Container(
            margin: const EdgeInsets.all(10),
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(
                color: thColor, borderRadius: BorderRadius.circular(20)),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  aboutAfghanistan,
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
          SizedBox(
            height: 40,
            width: 370,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
              child: Text(
                'Visit provinces',
                style: TextStyle(
                    fontSize: 20,
                    color: bgColor,
                    fontFamily: 'PlayfairDisplay'),
              ),
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProvincePage()),
                  );
                });
              },
            ),
          ),
          const Spacer(),
          SizedBox(
            height: 40,
            width: 370,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
              child: Text(
                'Map',
                style: TextStyle(
                    fontSize: 20,
                    color: bgColor,
                    fontFamily: 'PlayfairDisplay'),
              ),
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AfghanistanMap()),
                  );
                });
              },
            ),
          ),
          const Spacer(),
          SizedBox(
            height: 40,
            width: 370,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
              child: Text(
                'Contact US',
                style: TextStyle(
                    fontSize: 20,
                    color: bgColor,
                    fontFamily: 'PlayfairDisplay'),
              ),
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ContactUs()),
                  );
                });
              },
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
