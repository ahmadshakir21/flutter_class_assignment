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

_launchURLBrowserLinkedin() async {
  var url = Uri.parse("https://www.linkedin.com/in/ahmad-shakir-1a6a95226/");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLBrowserFacebook() async {
  var url = Uri.parse("https://www.facebook.com/Ahmad.Shakir.Khalid");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLBrowserTwitter() async {
  var url = Uri.parse("https://twitter.com/home");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLBrowserGitHub() async {
  var url = Uri.parse("https://github.com/ahmadshakir21");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String linkedinUrl = "https://www.linkedin.com/in/ahmad-shakir-1a6a95226/";
  String facebookUrl = "https://www.facebook.com/Ahmad.Shakir.Khalid";
  String twitterUrl = "https://twitter.com/home";
  String githubUrl = "https://github.com/ahmadshakir21";

  @override
  Widget build(BuildContext context) {
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
          InkWell(
           onTap: _launchURLBrowserLinkedin,
            child: Container(
              color: Color.fromARGB(171, 160, 154, 216),
              width: 370,
              height: 50,
              child: const ListTile(
                leading: FaIcon(FontAwesomeIcons.linkedin),
                title: Text("Linkedin"),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: _launchURLBrowserFacebook,
              
            child: Container(
              color: Color.fromARGB(171, 66, 236, 177),
              width: 370,
              height: 50,
              child: const ListTile(
                leading: FaIcon(FontAwesomeIcons.facebook),
                title: Text("FaceBook"),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: _launchURLBrowserTwitter,
            child: Container(
              color: Color.fromARGB(171, 241, 69, 239),
              width: 370,
              height: 50,
              child: const ListTile(
                leading: FaIcon(FontAwesomeIcons.twitter),
                title: Text("Twitter"),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: _launchURLBrowserGitHub,
            child: Container(
              color: Color.fromARGB(171, 238, 205, 56),
              width: 370,
              height: 50,
              child: const ListTile(
                leading: FaIcon(FontAwesomeIcons.github),
                title: Text("Github"),
              ),
            ),
          ),
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
                    FontAwesomeIcons.message,
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
