import 'package:afganistan_app/constants_file/app_colors.dart';
import 'package:afganistan_app/contact_class.dart';
import 'package:flutter/material.dart';

class EachProvincePage extends StatelessWidget {
  String name;
  String pImage;
  String desc;

  EachProvincePage({
    super.key,
    required this.name,
    required this.pImage,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: TextWidigt(txt: '$name province page'),
        backgroundColor: bgColor,
        centerTitle: true,
      ),
      backgroundColor: bgColor,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 270,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(pImage), fit: BoxFit.cover)),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: thColor),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidigt(txt:'Some information about $name '),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(desc),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
