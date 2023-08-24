import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF010101),
        brightness: Brightness.dark,
      ),
      home: const Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25, right: 25, top: 25),
                child: TopRow(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
                child: Text(
                  "How may I help you today?",
                  style: TextStyle(fontSize: 32),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Card1(),
                  ),
                  Column(
                    children: [
                      Card2(
                        color: Color(0xFFC09FF8),
                        icon: Icons.chat_bubble,
                        text: "Chat with bot",
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Card2(
                        color: Color(0xFFFEC4DD),
                        icon: Icons.image,
                        text: "Search by image",
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 8,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Card2 extends StatelessWidget {
  final Color color;
  final IconData icon;
  final text;
  const Card2({
    required this.color,
    required this.icon,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 183,
      height: 104,
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                width: 40,
                padding: const EdgeInsets.all(8),
                decoration: ShapeDecoration(
                  color: Colors.black.withOpacity(0.20000000298023224),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                child: Icon(
                  icon,
                  color: Colors.black,
                ),
              ),
              const Icon(
                Icons.arrow_forward,
                color: Colors.black,
              )
            ],
          ),
          Text(
            "$text",
            style: const TextStyle(fontSize: 18, color: Colors.black),
          )
        ],
      ),
    );
  }
}

class Card1 extends StatelessWidget {
  const Card1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 183,
      height: 216,
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: const Color(0xFFC6F432),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  padding: const EdgeInsets.all(8),
                  decoration: ShapeDecoration(
                    color: Colors.black.withOpacity(0.20000000298023224),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  child: const Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
                const Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                )
              ],
            ),
            const Text(
              "Talk with Bot",
              style: TextStyle(fontSize: 32, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}

class TopRow extends StatelessWidget {
  const TopRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MenuButton(),
        Text(
          "Hi, Michael 👋",
          style: TextStyle(fontSize: 16),
        ),
        ProfilePicture(),
      ],
    );
  }
}

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: const ShapeDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
          fit: BoxFit.fill,
        ),
        shape: OvalBorder(),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  const MenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: ShapeDecoration(
        color: const Color(0xFF171717),
        // color: Colors.red,
        shape: OvalBorder(
          side: BorderSide(
            width: 0.50,
            color: Colors.white.withOpacity(0.10000000149011612),
          ),
        ),
      ),
      child: const Icon(Icons.menu),
    );
  }
}
