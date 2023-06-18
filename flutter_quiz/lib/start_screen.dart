import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        const SizedBox(
          height: 80,
        ),
        Text(
          'Learn FLutter the fun way!',
          style: GoogleFonts.lato(
            color: const Color.fromARGB(255, 255, 255, 255),
            fontSize: 28,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: const ButtonStyle(
              foregroundColor: MaterialStatePropertyAll(Colors.white)),
          label: const Text(
            'Start Quiz',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 18,
            ),
          ),
          icon: const Icon(Icons.arrow_right_alt),
        ),
      ],
    );
  }
}
