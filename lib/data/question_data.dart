import 'package:nexus_quiz_app/models/question_model.dart';

const List<QuizQuestion> questions = [
  // Question 1: Owl Sound
  QuizQuestion(
    'What bird makes this sound?',
    [
      'Eagle',
      'Owl',
      'Parrot',
      'Sparrow',
    ],
    [
      "assets/images/animals/eagle.jpg",
      "assets/images/animals/owl.jpg",
      "assets/images/animals/parrot.jpg",
      "assets/images/animals/sparrow.jpg",
    ],
    "sound/owl.mp3",
    "Owl",
  ),

  // Question 2: Rabbit Sound
  QuizQuestion(
    'What animal makes this sound?',
    [
      'Cat',
      'Dog',
      'Rabbit',
      'Rat',
    ],
    [
      "assets/images/animals/cat.jpg",
      "assets/images/animals/dog.jpg",
      "assets/images/animals/rabbit.jpg",
      "assets/images/animals/rat.jpg",
    ],
    "sound/rabbit.mp3",
    "Rabbit",
  ),

  // Question 3: Raccoon Sound
  QuizQuestion(
    'What animal makes this sound?',
    [
      'Mouse',
      'Raccoon',
      'Lion',
      'Bear',
    ],
    [
      "assets/images/animals/rat.jpg",
      "assets/images/animals/raccoon.jpg",
      "assets/images/animals/lion.jpg",
      "assets/images/animals/bear.jpg",
    ],
    "sound/raccoon.mp3",
    "Raccoon",
  ),

  // Question 4: Rat Sound
  QuizQuestion(
    'What animal makes this sound?',
    [
      'Cat',
      'Dog',
      'Rabbit',
      'Rat',
    ],
    [
      "assets/images/animals/cat.jpg",
      "assets/images/animals/dog.jpg",
      "assets/images/animals/rabbit.jpg",
      "assets/images/animals/rat.jpg",
    ],
    "sound/rat.mp3",
    "Rat",
  ),

  // Question 5: Squirrel Sound
  QuizQuestion(
    'What animal makes this sound?',
    [
      'Squirrel',
      'Dog',
      'Rabbit',
      'Rat',
    ],
    [
      "assets/images/animals/squirrel.jpg",
      "assets/images/animals/dog.jpg",
      "assets/images/animals/rabbit.jpg",
      "assets/images/animals/rat.jpg",
    ],
    "sound/squirrel.mp3",
    "Squirrel",
  ),

  // Additional questions // Question 6: Cat Sound
  QuizQuestion(
      'What animal makes this sound?',
      ['Cat', 'Dog', 'Rabbit', 'Rat'],
      [
        'assets/images/animals/cat.jpg',
        'assets/images/animals/dog.jpg',
        'assets/images/animals/rabbit.jpg',
        'assets/images/animals/rat.jpg'
      ],
      'sound/cat_sound.mp3',
      'Cat'),

  // Question 7: Owl Sound
  QuizQuestion(
      'What animal makes this sound?',
      ['Cat', 'Dog', 'Rabbit', 'Owl'],
      [
        'assets/images/animals/cat.jpg',
        'assets/images/animals/dog.jpg',
        'assets/images/animals/rabbit.jpg',
        'assets/images/animals/owl.jpg'
      ],
      'sound/owl.mp3',
      'Owl'),

  // Question 8: Rabbit Sound
  QuizQuestion(
      'What animal makes this sound?',
      ['Cat', 'Dog', 'Rabbit', 'Squirrel'],
      [
        'assets/images/animals/cat.jpg',
        'assets/images/animals/dog.jpg',
        'assets/images/animals/rabbit.jpg',
        'assets/images/animals/squirrel.jpg'
      ],
      'sound/rabbit.mp3',
      'Rabbit'),

  // Question 9: Squirrel Sound
  QuizQuestion(
      'What animal makes this sound?',
      ['Squirrel', 'Dog', 'Lion', 'Bear'],
      [
        'assets/images/animals/squirrel.jpg',
        'assets/images/animals/dog.jpg',
        'assets/images/animals/lion.jpg',
        'assets/images/animals/bear.jpg'
      ],
      'sound/squirrel.mp3',
      'Squirrel'),

  // Question 10: Dog Sound (assuming it's available)
  QuizQuestion(
      'What animal makes this sound?',
      ['Cat', 'Dog', 'Bear', 'Lion'],
      [
        'assets/images/animals/cat.jpg',
        'assets/images/animals/dog.jpg',
        'assets/images/animals/bear.jpg',
        'assets/images/animals/lion.jpg'
      ],
      'sound/cat_sound.mp3',
      'Cat'),

  // // Question 11: Lion Sound
  // QuizQuestion(
  //     'What animal makes this sound?',
  //     ['Lion', 'Eagle', 'Sparrow', 'Bear'],
  //     [
  //       'assets/images/animals/lion.jpg',
  //       'assets/images/animals/eagle.jpg',
  //       'assets/images/animals/sparrow.jpg',
  //       'assets/images/animals/bear.jpg'
  //     ],
  //     'sound/lion_sound.mp3',
  //     'Lion'),
  //
  // // Question 12: Bear Sound
  // QuizQuestion(
  //     'What animal makes this sound?',
  //     ['Bear', 'Cat', 'Rabbit', 'Parrot'],
  //     [
  //       'assets/images/animals/bear.jpg',
  //       'assets/images/animals/cat.jpg',
  //       'assets/images/animals/rabbit.jpg',
  //       'assets/images/animals/parrot.jpg'
  //     ],
  //     'sound/bear_sound.mp3',
  //     'Bear'),
  //
  // // Question 13: Parrot Sound
  // QuizQuestion(
  //     'What animal makes this sound?',
  //     ['Parrot', 'Eagle', 'Lion', 'Dog'],
  //     [
  //       'assets/images/animals/parrot.jpg',
  //       'assets/images/animals/eagle.jpg',
  //       'assets/images/animals/lion.jpg',
  //       'assets/images/animals/dog.jpg'
  //     ],
  //     'sound/parrot_sound.mp3',
  //     'Parrot'),
  //
  // // Question 14: Eagle Sound
  // QuizQuestion(
  //     'What animal makes this sound?',
  //     ['Eagle', 'Rabbit', 'Sparrow', 'Bear'],
  //     [
  //       'assets/images/animals/eagle.jpg',
  //       'assets/images/animals/rabbit.jpg',
  //       'assets/images/animals/sparrow.jpg',
  //       'assets/images/animals/bear.jpg'
  //     ],
  //     'sound/animals/eagle_sound.mp3',
  //     'Eagle'),
  // // Question 15: Sparrow Sound
  // QuizQuestion(
  //     'What animal makes this sound?',
  //     ['Sparrow', 'Rat', 'Lion', 'Cat'],
  //     [
  //       'assets/images/animals/sparrow.jpg',
  //       'assets/images/animals/rat.jpg',
  //       'assets/images/animals/lion.jpg',
  //       'assets/images/animals/cat.jpg'
  //     ],
  //     'sound/sparrow_sound.mp3',
  //     'Sparrow'),
];
