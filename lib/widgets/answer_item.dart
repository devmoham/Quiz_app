import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/models/answeritem_model.dart';

class Answeritem extends StatefulWidget {
  final AnswerItemModel answerMap;
  final VoidCallback questionIndexChangeCallback;
  final bool isthisanswer;

  const Answeritem(
      {super.key,
      required this.answerMap,
      required this.questionIndexChangeCallback,
      required this.isthisanswer});

  @override
  State<Answeritem> createState() => _AnsweritemState();
}

class _AnsweritemState extends State<Answeritem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 70,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: InkWell(
            onTap: () {
              widget.answerMap.onPressed();
              widget.questionIndexChangeCallback();
            },
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black12,
                ),
                color: widget.isthisanswer ? Colors.green : Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      size: 30,
                      color: widget.isthisanswer ? Colors.white : Colors.black,
                    ),
                    SizedBox(width: 16.0),
                    Text(
                      widget.answerMap.title,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: widget.isthisanswer
                                ? Colors.white
                                : Colors.black,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
