import 'package:flutter/material.dart';
import 'package:quiz_app/models/answeritem_model.dart';
import 'package:quiz_app/models/questionsitem_model.dart';
import 'package:quiz_app/widgets/answer_item.dart';
import 'package:quiz_app/widgets/question_item.dart';
import 'package:quiz_app/widgets/totalscore_item.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int questionIndex = 0;
  int totalScore = 0;
  int answerChosen = -1;
  bool showTotalscore = false;
  final int resultedTotal = questions.length * 10;

  @override
  Widget build(BuildContext context) {
    debugPrint('$totalScore');
    showTotalscore = totalScore >= resultedTotal;

    return Scaffold(
      body: Center(
        child: !showTotalscore
            ? Padding(
                padding: const EdgeInsets.all(16.0),
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 50),
                      QuestionItem(questionItem: questions[questionIndex]),
                      const SizedBox(height: 30),
                      Column(
                        children: List.generate(
                          questions[questionIndex].answerAvalible.length,
                          (index) => Answeritem(
                            answerMap:
                                questions[questionIndex].answerAvalible[index],
                            isthisanswer: answerChosen == index,
                            questionIndexChangeCallback: () {
                              setState(() {
                                answerChosen = index;
                              });
                            },
                          ),
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            if (questionIndex + 1 < questions.length) {
                              setState(() {
                                questionIndex += 1;
                              });
                            }
                            setState(() {
                              totalScore += 10;
                              answerChosen = -1;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          child: const Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : Center(
                child: TotalScoreItem(
                  totalScore: totalScore,
                  resetQuizontap: () {
                    setState(() {
                      totalScore = 0;
                      questionIndex = 0;
                      answerChosen = -1;
                    });
                  },
                ),
              ),
      ),
    );
  }
}
