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

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Container(
                height: 220,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 5, color: Colors.blue.shade100),
                  image: DecorationImage(
                      image: Image.network(
                              "https://scontent.febl5-2.fna.fbcdn.net/v/t1.6435-9/204742823_985874458852420_4469077668754906067_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHcJIuCl4rRONwFOZJoHlv8EU-Nnz8GSfcRT42fPwZJ9-t3OXtMdDLW7HdnzlalofPU5NM0AyuZaUaRcgf3A0hP&_nc_ohc=kRNUR29EUskAX8wNKqK&_nc_ht=scontent.febl5-2.fna&oh=00_AT9GhP06Krsq9KBPuHdHcb9ArsNkxLoWgPluIZppZ-F7CA&oe=62E26370")
                          .image,
                      ),
                ),
              ),
            ),
            const Text(
              "Ahmad Shakir Khalid",
              style: TextStyle(fontSize: 24, letterSpacing: 1.5),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                "Lorem ipsum dolor sit amet,\nconsectetur adipiscingkjdfh elkjhdfit,\n sed do eiusmod tlksaflkalempor .",
                style: TextStyle(fontSize: 15, wordSpacing: 2),
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
              const FaIcon(
                FontAwesomeIcons.whatsapp,
                size: 40,
                color: Color(0xFF25D366),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Message(),
                      ));
                },
                child: const Icon(
                  Icons.chat,
                  size: 40,
                  color: Color(0xFF333652),
                ),
              ),
              const FaIcon(
                FontAwesomeIcons.telegram,
                size: 40,
                color: Color(0xFF0088CC),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
