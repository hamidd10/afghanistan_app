import 'package:afganistan_app/constants_file/app_colors.dart';
import 'package:afganistan_app/intro_screen/first_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            Container(
              height: 300,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/arg.webp'), fit: BoxFit.cover)),
            ),
            const Spacer(),
            Text(
              'Welcome to Afghanistan Application',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w500, fontFamily: 'PlayfairDisplay'),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Everything you want to know  about Afghanistan and\n its provinces  is here.',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'PlayfairDisplay'),
            ),
            const Spacer(),
            SizedBox(
              height: 50,
              width: 330,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                      fontSize: 20, color: bgColor, fontFamily: 'PlayfairDisplay'),
                ),
                onPressed: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FirstPage()),
                    );
                  });
                },
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
