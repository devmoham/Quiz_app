import 'package:flutter/material.dart';

class TotalScoreItem extends StatefulWidget {
  final int totalScore;
  final VoidCallback resetQuizontap;
  const TotalScoreItem(
      {super.key, required this.totalScore, required this.resetQuizontap});

  @override
  State<TotalScoreItem> createState() => _TotalScoreItemState();
}

class _TotalScoreItemState extends State<TotalScoreItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Coungratiualtion',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 30,
            child: Text(
              'Your total score is ${widget.totalScore}',
              style: TextStyle(fontSize: 20),
            ),
          ),
          ElevatedButton(
              onPressed: widget.resetQuizontap,
              child: const Text('Reset Quiz')),
        ],
      ),
    );
  }
}
