import 'package:flutter/material.dart';

void main() => runApp(const MyCardApp());

class MyCardApp extends StatelessWidget {
  const MyCardApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff6f6f6f),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Avatar(
                assetName: 'assets/images/user.jpg',
              ),
              Title(
                text: 'Leonardo Martins',
              ),
              Subtitle(
                text: 'Software Development Analyst',
              ),
              Item(
                icon: Icons.phone,
                text: '31 9 8888 7777',
              ),
              Item(
                icon: Icons.email,
                text: 'leonardo.martins@flutter.dev',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
    required this.assetName,
  }) : super(key: key);

  final String assetName;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(
        assetName,
      ),
      radius: 100,
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontFamily: 'LobsterTwo',
        fontWeight: FontWeight.bold,
        fontSize: 40,
        color: Color(0xff60c4de),
      ),
    );
  }
}

class Subtitle extends StatelessWidget {
  const Subtitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: const TextStyle(
            fontFamily: 'LobsterTwo',
            fontStyle: FontStyle.italic,
            fontSize: 25,
            color: Color(0xff60c4de),
          ),
        ),
        const SizedBox(
          height: 25,
          width: 350,
          child: Divider(
            color: Color(0xff60c4de),
            thickness: 2,
          ),
        ),
      ],
    );
  }
}

class Item extends StatelessWidget {
  const Item({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 25,
      ),
      color: const Color(0xff60c4de),
      child: ListTile(
        leading: Icon(
          icon,
          size: 25,
          color: const Color(0xff6f6f6f),
        ),
        title: Text(
          text,
          style: const TextStyle(
            fontFamily: 'LobsterTwo',
            color: Color(0xff6f6f6f),
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
