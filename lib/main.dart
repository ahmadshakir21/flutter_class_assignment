import 'package:flutter/material.dart';
import 'package:flutter_app/message.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _launch(String _url) async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    Widget containerButton(
        {required String urlText,
        required IconData icon,
        required Color color,
        required VoidCallback onPressed}) {
      return InkWell(
        onTap: onPressed,
        child: Container(
          color: color,
          width: 370,
          height: 50,
          child: Row(children: [
            const SizedBox(
              width: 20,
            ),
            FaIcon(icon),
            const SizedBox(
              width: 113,
            ),
            Text(
              urlText,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            )
          ]),
        ),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 75.0, bottom: 20),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 3, color: Colors.blue.shade100),
                image: DecorationImage(
                    image: Image.network(
                            "http://4.bp.blogspot.com/-VlHRlPoXwqU/TtskdJMC4aI/AAAAAAAAAjQ/ooLDREJgZvM/s1600/parrot1.jpg")
                        .image,
                    fit: BoxFit.fill),
              ),
            ),
          ),
          const Text(
            "Full Name",
            style: TextStyle(fontSize: 25, letterSpacing: 1.5),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              "Lorem ipsum dolor sit amet,\nconsectetur adipiscingkjdfh elkjhdfit,\n sed do eiusmod tlksaflkalempor .",
              style: TextStyle(fontSize: 16, wordSpacing: 2),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          containerButton(
              urlText: "LinkedIn",
              icon: FontAwesomeIcons.linkedin,
              color: const Color(0xFF3CACAE),
              onPressed: () {
                const url =
                    "https://www.linkedin.com/in/ahmad-shakir-1a6a95226/";
                _launch(url);
              }),
          const SizedBox(
            height: 20,
          ),
          containerButton(
              urlText: "Facebook",
              icon: FontAwesomeIcons.facebook,
              color: const Color(0xFFE0A030),
              onPressed: () {
                const url = "https://www.facebook.com/Ahmad.Shakir.Khalid";
                _launch(url);
              }),
          const SizedBox(
            height: 20,
          ),
          containerButton(
              urlText: "Twitter",
              icon: FontAwesomeIcons.twitter,
              color: const Color(0xFFFF2768),
              onPressed: () {
                const url = "https://twitter.com/home";
                _launch(url);
              }),
          const SizedBox(
            height: 20,
          ),
          containerButton(
              urlText: "Github",
              icon: FontAwesomeIcons.github,
              color: const Color(0xFFC26DBC),
              onPressed: () {
                const url = "https://github.com/ahmadshakir21";
                _launch(url);
              }),
          const SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.greenAccent,
                child: FaIcon(
                  FontAwesomeIcons.whatsapp,
                  size: 30,
                )),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Message(),
                    ));
              },
              child: const CircleAvatar(
                  radius: 30,
                  backgroundColor: Color.fromARGB(255, 240, 193, 105),
                  child: FaIcon(
                    FontAwesomeIcons.solidMessage,
                    size: 30,
                  )),
            ),
            const CircleAvatar(
                radius: 30,
                backgroundColor: Color.fromARGB(255, 213, 240, 105),
                child: FaIcon(
                  FontAwesomeIcons.anchor,
                  size: 30,
                )),
          ]),
        ],
      ),
    );
  }
}
