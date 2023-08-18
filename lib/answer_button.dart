import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({Key? key, required this.answerText, required this.onTap})
      : super(key: key);

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(
            255, 87, 15, 15), // Setting the background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              15.0), // Adjust the value for desired roundness
        ),
        padding: const EdgeInsets.symmetric(
            horizontal: 20.0, vertical: 10.0), // Add padding
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
