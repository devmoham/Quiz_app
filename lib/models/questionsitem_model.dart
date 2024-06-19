import 'package:flutter/material.dart';
import 'package:quiz_app/models/answeritem_model.dart';

class QuestionItemModel {
  final String title;

  final List<AnswerItemModel> answerAvalible;

  QuestionItemModel({required this.title, required this.answerAvalible});
}

List<QuestionItemModel> questions = [
  QuestionItemModel(title: 'What is your favorite subject?', answerAvalible: [
    AnswerItemModel(
      title: 'math',
      onPressed: () => debugPrint("math choice"),
    ),
    AnswerItemModel(
      title: 'chemistry',
      onPressed: () => debugPrint("chemistry choice"),
    ),
    AnswerItemModel(
      title: 'art',
      onPressed: () => debugPrint("art choice"),
    ),
    AnswerItemModel(
      title: 'arabic',
      onPressed: () => debugPrint("arabic choice"),
    ),
  ]),
  QuestionItemModel(title: 'What is your favorite color?', answerAvalible: [
    AnswerItemModel(
      title: 'red',
      onPressed: () => debugPrint("red choice"),
    ),
    AnswerItemModel(
      title: 'blue',
      onPressed: () => debugPrint("blue choice"),
    ),
    AnswerItemModel(
      title: 'yellow',
      onPressed: () => debugPrint("yellow choice"),
    ),
    AnswerItemModel(
      title: 'brown',
      onPressed: () => debugPrint("brown choice"),
    ),
  ]),
  QuestionItemModel(title: 'What is your favorite sport?', answerAvalible: [
    AnswerItemModel(
      title: 'football',
      onPressed: () => debugPrint("football choice"),
    ),
    AnswerItemModel(
      title: 'basktball',
      onPressed: () => debugPrint("basktball choice"),
    ),
    AnswerItemModel(
      title: 'vollyball',
      onPressed: () => debugPrint("vollyball choice"),
    ),
    AnswerItemModel(
      title: 'kickboxing',
      onPressed: () => debugPrint("kickboxing choice"),
    ),
  ]),
  QuestionItemModel(title: 'What is your favorite animal?', answerAvalible: [
    AnswerItemModel(
      title: 'lion',
      onPressed: () => debugPrint("lion choice"),
    ),
    AnswerItemModel(
      title: 'moncky',
      onPressed: () => debugPrint("moncky choice"),
    ),
    AnswerItemModel(
      title: 'dog',
      onPressed: () => debugPrint("dog choice"),
    ),
    AnswerItemModel(
      title: 'cat',
      onPressed: () => debugPrint("cat choice"),
    ),
  ]),
];
