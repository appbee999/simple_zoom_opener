import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            const Text(
              'Zoom Links:',
              style: TextStyle(
                color: Color(0xFF3E3E3E),
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 24),
            Wrap(
              children: [
                MyButton(
                  text: 'Physics',
                  color: const Color(0xFF00B058),
                  onTap: () async {
                    await launchUrl(Uri.parse(
                      'https://zoom.us/j/98027303302?pwd=bmVBalc5NDNGOWFJQk92Z0liSnVGQT09',
                    ));
                  },
                ),
                MyButton(
                  text: 'Comp Sci',
                  color: const Color(0xFF2B6BEA),
                  onTap: () async {
                    await launchUrl(Uri.parse(
                      'https://google.com',
                    ));
                  },
                ),
                MyButton(
                  text: 'BM',
                  color: const Color(0xFFBF20DC),
                  onTap: () async {
                    await launchUrl(Uri.parse(
                      'https://flutter.dev',
                    ));
                  },
                ),
                MyButton(
                  text: 'English',
                  color: const Color(0xFFF01453),
                  onTap: () async {
                    await launchUrl(Uri.parse(
                      'https://flutter.dev',
                    ));
                  },
                ),
                MyButton(
                  text: 'Chinese',
                  color: const Color(0xFF0FA594),
                  onTap: () async {
                    await launchUrl(Uri.parse(
                      'https://flutter.dev',
                    ));
                  },
                ),
                MyButton(
                  text: 'Computer',
                  color: const Color(0xFF0087CA),
                  onTap: () async {
                    await launchUrl(Uri.parse(
                      'https://flutter.dev',
                    ));
                  },
                ),
                MyButton(
                  text: 'Math',
                  color: const Color(0xFF7E3CF9),
                  onTap: () async {
                    await launchUrl(Uri.parse(
                      'https://flutter.dev',
                    ));
                  },
                ),
                MyButton(
                  text: 'PE',
                  color: const Color(0xFFE7A500),
                  onTap: () async {
                    await launchUrl(Uri.parse(
                      'https://flutter.dev',
                    ));
                  },
                ),
                MyButton(
                  text: 'CLE',
                  color: const Color(0xFFE209A2),
                  onTap: () async {
                    await launchUrl(Uri.parse(
                      'https://flutter.dev',
                    ));
                  },
                ),
                MyButton(
                  text: 'Next Lab',
                  color: const Color(0xFFE04F16),
                  onTap: () async {
                    await launchUrl(Uri.parse(
                      'https://flutter.dev',
                    ));
                  },
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.text,
    required this.color,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24, right: 24),
      child: GestureDetector(
        onTap: onTap,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
