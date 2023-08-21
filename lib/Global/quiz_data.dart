import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

int indx = 0;
int totalScore = 0;
TextEditingController usernameControler = TextEditingController();

List<Map<String, dynamic>> dataBase = [
  //////////////Sport Test ////////////////
  {
    "categoryName": "Sport Test",
    "color": Colors.blue,
    "data": [
      {
        "question": "How Many Playres In The Football Team ?",
        "answers": [
          {
            "ans": "9",
            "score": 0,
          },
          {
            "ans": "10",
            "score": 0,
          },
          {
            "ans": "11",
            "score": 1,
          },
          {
            "ans": "12",
            "score": 0,
          },
        ]
      },
      {
        "question": "Who Is The First Country Won The World Cup ?",
        "answers": [
          {
            "ans": "Uruguay",
            "score": 1,
          },
          {
            "ans": "Brazil",
            "score": 0,
          },
          {
            "ans": "Italy",
            "score": 0,
          },
          {
            "ans": "Spain",
            "score": 0,
          },
        ]
      },
      {
        "question": " After how many Year’s FIFA World Cup held?",
        "answers": [
          {
            "ans": "2 Years",
            "score": 0,
          },
          {
            "ans": "3 Years",
            "score": 0,
          },
          {
            "ans": "4 Years",
            "score": 1,
          },
          {
            "ans": "Every Year",
            "score": 0,
          },
        ]
      },
      {
        "question": " Who won the first ICC World Cup?",
        "answers": [
          {
            "ans": "India",
            "score": 0,
          },
          {
            "ans": "West Indies",
            "score": 1,
          },
          {
            "ans": "England",
            "score": 0,
          },
          {
            "ans": "Australia",
            "score": 0,
          },
        ]
      },
      {
        "question":
            "Who has the Highest Number of Gold Medals in Olympic History?",
        "answers": [
          {
            "ans": "Larisa Latynina",
            "score": 0,
          },
          {
            "ans": "Mark Spitz",
            "score": 0,
          },
          {
            "ans": "Michael Phelps",
            "score": 1,
          },
          {
            "ans": "Saina Nehwal",
            "score": 0,
          },
        ]
      },
      {
        "question": "What is the 100m World Record of Usain Bolt?",
        "answers": [
          {
            "ans": "14.35 Sec",
            "score": 0,
          },
          {
            "ans": "9.58 Sec",
            "score": 1,
          },
          {
            "ans": "9.05 Sec",
            "score": 0,
          },
          {
            "ans": "10.12 Sec",
            "score": 0,
          },
        ]
      },
      {
        "question": "Who Is The First Country Won The World Cup ?",
        "answers": [
          {
            "ans": "Uruguay",
            "score": 1,
          },
          {
            "ans": "Brazil",
            "score": 0,
          },
          {
            "ans": "Italy",
            "score": 1,
          },
          {
            "ans": "Spain",
            "score": 0,
          },
        ]
      },
      {
        "question": "How many FIFA World Cup has been played till 2022?",
        "answers": [
          {
            "ans": "29",
            "score": 0,
          },
          {
            "ans": "52",
            "score": 0,
          },
          {
            "ans": "22",
            "score": 1,
          },
          {
            "ans": "14",
            "score": 0,
          },
        ]
      },
      {
        "question":
            "How many times has India won the Men’s Hockey World Cup in the Olympics?",
        "answers": [
          {
            "ans": "3",
            "score": 1,
          },
          {
            "ans": "2",
            "score": 0,
          },
          {
            "ans": "1",
            "score": 1,
          },
          {
            "ans": "0",
            "score": 0,
          },
        ]
      },
      {
        "question": "Which Sport is Performed by the Legend “Muhammad Ali”?",
        "answers": [
          {
            "ans": "Weight Lifting",
            "score": 0,
          },
          {
            "ans": "Swiming",
            "score": 0,
          },
          {
            "ans": "Boxing",
            "score": 1,
          },
          {
            "ans": "Shooting",
            "score": 0,
          },
        ]
      },
      {
        "question": "Who is known as “The Baltimore Bullet”?",
        "answers": [
          {
            "ans": "Roger Federer",
            "score": 0,
          },
          {
            "ans": "Usain Bolt",
            "score": 0,
          },
          {
            "ans": "Michael Phelps",
            "score": 1,
          },
          {
            "ans": "Michael Jordan",
            "score": 0,
          },
        ]
      },
    ]
  },

//////////////History Test///////////////

  {
    "categoryName": "History Test",
    "color": Colors.red,
    "data": [
      {
        "question":
            "Which of the 7 Wonders of the Ancient World still exists and is associated with ancient Egypt?",
        "answers": [
          {"ans": "The Colossus of Rhodes", "score": 0},
          {"ans": "The Great Pyramid of Giza", "score": 1},
          {"ans": "The Hanging Gardens of Babylon", "score": 0},
          {"ans": "The Golden Land", "score": 0},
        ],
      },
      {
        "question": "Where were most of Egypt's major cities located?",
        "answers": [
          {"ans": "The Delta", "score": 0},
          {"ans": "Lower Egypt", "score": 0},
          {"ans": "West of the Nile", "score": 0},
          {"ans": "Both A and B", "score": 1},
        ],
      },
      {
        "question": "Egypt was protected from invasion by.....?",
        "answers": [
          {"ans": "Natural barriers", "score": 1},
          {"ans": "Large fortification walls", "score": 0},
          {"ans": "A standing army of over 100,000 men", "score": 0},
          {"ans": "Making alliances with surrounding kingdoms", "score": 0},
        ],
      },
      {
        "question":
            "The three major periods of Egyptian history are known as...",
        "answers": [
          {"ans": "The Old, New, and Improved Kingdoms", "score": 0},
          {"ans": "The First, Middle, and Last Kingdoms", "score": 0},
          {"ans": "The Old, Younger, and New Kingdoms", "score": 0},
          {"ans": "The Old, Middle, and New Kingdoms", "score": 1},
        ],
      },
      {
        "question": "Hieratic Script is....",
        "answers": [
          {"ans": "A simplified version of hieroglyphics", "score": 1},
          {"ans": "A writing system used only by the pharaohs", "score": 0},
          {
            "ans": "A secret writing system used by Egyptian embalmers",
            "score": 0
          },
          {"ans": "A computer font used for official certificates", "score": 0},
        ],
      },
      {
        "question":
            "Which of the following describes the workforce responsible for building the pyramids?",
        "answers": [
          {"ans": "They were slaves captured in war.", "score": 0},
          {
            "ans":
                "They were Egyptians who were conscripted to work by officials of the pharaoh.",
            "score": 0
          },
          {
            "ans":
                "They were Egyptians who were provided food and shelter in exchange for their work.",
            "score": 0
          },
          {"ans": "C and D only", "score": 1},
        ],
      },
      {
        "question":
            "Which of the following statements is true concerning Egyptian pyramids?",
        "answers": [
          {"ans": "They show the power of the pharaoh", "score": 0},
          {
            "ans": "They serve as a protective tomb for the pharaoh",
            "score": 0
          },
          {
            "ans": "They took many years and thousands of workers to build",
            "score": 0
          },
          {"ans": "All of the above", "score": 1},
        ],
      },
      {
        "question":
            " Which pharaoh is credited with the unification of Upper and Lower Egypt?",
        "answers": [
          {"ans": "Thutmose", "score": 0},
          {"ans": "Tutankhamon", "score": 0},
          {"ans": "Menes", "score": 1},
          {"ans": "Akhenaten", "score": 0},
        ],
      },
      {
        "question": "When did Egyptian history begin according to historians?",
        "answers": [
          {"ans": "C. 3100 BCE", "score": 0},
          {"ans": "When Menes united Upper & Lower Egypt", "score": 0},
          {"ans": "When the first pyramid was built", "score": 0},
          {"ans": "Both A and B", "score": 1},
        ],
      },
      {
        "question": "Who was the first female pharaoh in Egyptian history??",
        "answers": [
          {"ans": "Ramses", "score": 0},
          {"ans": "Hatshepsut", "score": 1},
          {"ans": "Akhenaten", "score": 0},
          {"ans": "Thutmose", "score": 0},
        ],
      },
    ],
  },

//////////////General Test //////////////////

  {
    "categoryName": "General Test",
    "color": Colors.yellow,
    "data": [
      {
        "question": "Who is known as “The Baltimore Bullet”?",
        "answers": [
          {
            "ans": "Roger Federer",
            "score": 0,
          },
          {
            "ans": "Usain Bolt",
            "score": 0,
          },
          {
            "ans": "Michael Phelps",
            "score": 1,
          },
          {
            "ans": "Michael Jordan",
            "score": 0,
          },
        ]
      },
      {
        "question": "Who Is The First Country Won The World Cup ?",
        "answers": [
          {
            "ans": "Uruguay",
            "score": 1,
          },
          {
            "ans": "Brazil",
            "score": 0,
          },
          {
            "ans": "Italy",
            "score": 1,
          },
          {
            "ans": "Spain",
            "score": 0,
          },
        ]
      },
      {
        "question": "How many FIFA World Cup has been played till 2022?",
        "answers": [
          {
            "ans": "29",
            "score": 0,
          },
          {
            "ans": "52",
            "score": 0,
          },
          {
            "ans": "22",
            "score": 1,
          },
          {
            "ans": "14",
            "score": 0,
          },
        ]
      },
      {
        "question":
            "How many times has India won the Men’s Hockey World Cup in the Olympics?",
        "answers": [
          {
            "ans": "3",
            "score": 1,
          },
          {
            "ans": "2",
            "score": 0,
          },
          {
            "ans": "1",
            "score": 1,
          },
          {
            "ans": "0",
            "score": 0,
          },
        ]
      },
      {
        "question": "Which Sport is Performed by the Legend “Muhammad Ali”?",
        "answers": [
          {
            "ans": "Weight Lifting",
            "score": 0,
          },
          {
            "ans": "Swiming",
            "score": 0,
          },
          {
            "ans": "Boxing",
            "score": 1,
          },
          {
            "ans": "Shooting",
            "score": 0,
          },
        ]
      },
      {
        "question": "Who is known as “The Baltimore Bullet”?",
        "answers": [
          {
            "ans": "Roger Federer",
            "score": 0,
          },
          {
            "ans": "Usain Bolt",
            "score": 0,
          },
          {
            "ans": "Michael Phelps",
            "score": 1,
          },
          {
            "ans": "Michael Jordan",
            "score": 0,
          },
          {
            "question":
                "Which of the following statements is true concerning Egyptian pyramids?",
            "answers": [
              {"ans": "They show the power of the pharaoh", "score": 0},
              {
                "ans": "They serve as a protective tomb for the pharaoh",
                "score": 0
              },
              {
                "ans": "They took many years and thousands of workers to build",
                "score": 0
              },
              {"ans": "All of the above", "score": 1},
            ],
          },
          {
            "question":
                " Which pharaoh is credited with the unification of Upper and Lower Egypt?",
            "answers": [
              {"ans": "Thutmose", "score": 0},
              {"ans": "Tutankhamon", "score": 0},
              {"ans": "Menes", "score": 1},
              {"ans": "Akhenaten", "score": 0},
            ],
          },
          {
            "question":
                "When did Egyptian history begin according to historians?",
            "answers": [
              {"ans": "C. 3100 BCE", "score": 0},
              {"ans": "When Menes united Upper & Lower Egypt", "score": 0},
              {"ans": "When the first pyramid was built", "score": 0},
              {"ans": "Both A and B", "score": 1},
            ],
          },
          {
            "question":
                "Who was the first female pharaoh in Egyptian history??",
            "answers": [
              {"ans": "Ramses", "score": 0},
              {"ans": "Hatshepsut", "score": 1},
              {"ans": "Akhenaten", "score": 0},
              {"ans": "Thutmose", "score": 0},
            ],
          },
        ]
      },
    ],
  },

/////////IQ Question////////
  {
    "categoryName": "IQ Test",
    "color": Colors.green,
    "data": [
      {
        "question":
            "Which number should come next in the series? 1, 4, 9, 16, __",
        "answers": [
          {"ans": "25", "score": 1},
          {"ans": "36", "score": 0},
          {"ans": "49", "score": 0},
          {"ans": "64", "score": 0},
        ],
      },
      {
        "question":
            "What is the missing letter in the following sequence? A, C, E, __, I",
        "answers": [
          {"ans": "F", "score": 0},
          {"ans": "G", "score": 1},
          {"ans": "H", "score": 0},
          {"ans": "J", "score": 0},
        ],
      },
      {
        "question":
            "What is the next number in the Fibonacci sequence: 0, 1, 1, 2, 3, 5, __",
        "answers": [
          {"ans": "8", "score": 1},
          {"ans": "10", "score": 0},
          {"ans": "7", "score": 0},
          {"ans": "6", "score": 0},
        ],
      },
      {
        "question":
            "If all Fruits are Apples, and some Apples are Oranges, then:",
        "answers": [
          {"ans": "All Oranges are Fruits", "score": 1},
          {"ans": "All Fruits are Oranges", "score": 0},
          {"ans": "All Oranges are Apples", "score": 0},
          {"ans": "None of the above", "score": 0},
        ],
      },
      {
        "question":
            "Mary's father has five daughters: Nana, Nene, Nini, Nono, and __",
        "answers": [
          {"ans": "Mary", "score": 1},
          {"ans": "Nunu", "score": 0},
          {"ans": "Nina", "score": 0},
          {"ans": "None of the above", "score": 0},
        ],
      },
      {
        "question":
            "What is the missing number in the following sequence? 2, 5, 10, 17, __, 37",
        "answers": [
          {"ans": "26", "score": 0},
          {"ans": "28", "score": 0},
          {"ans": "29", "score": 1},
          {"ans": "31", "score": 0},
        ],
      },
      {
        "question":
            "If a plane crashes on the border of the United States and Canada, where do they bury the survivors?",
        "answers": [
          {"ans": "Nowhere, survivors are not buried", "score": 1},
          {"ans": "In the United States", "score": 0},
          {"ans": "In Canada", "score": 0},
          {"ans": "It depends on the nationality of the survivors", "score": 0},
        ],
      },
    ],
  },

/////////Geography Test//////

  {
    "categoryName": "Geography Test",
    "color": Colors.brown,
    "data": [
      {
        "question": "What is the capital of France?",
        "answers": [
          {"ans": "Paris", "score": 1},
          {"ans": "London", "score": 0},
          {"ans": "Berlin", "score": 0},
          {"ans": "Rome", "score": 0}
        ]
      },
      {
        "question": "Which continent is the largest by land area?",
        "answers": [
          {"ans": "Asia", "score": 1},
          {"ans": "Africa", "score": 0},
          {"ans": "North America", "score": 0},
          {"ans": "South America", "score": 0}
        ]
      },
      {
        "question": "What is the longest river in the world?",
        "answers": [
          {"ans": "Nile", "score": 1},
          {"ans": "Amazon", "score": 0},
          {"ans": "Yangtze", "score": 0},
          {"ans": "Mississippi", "score": 0}
        ]
      },
      {
        "question": "Which country is known as the 'Land of the Rising Sun'?",
        "answers": [
          {"ans": "Japan", "score": 1},
          {"ans": "China", "score": 0},
          {"ans": "Korea", "score": 0},
          {"ans": "Thailand", "score": 0}
        ]
      },
      {
        "question": "What is the largest desert in the world?",
        "answers": [
          {"ans": "Sahara", "score": 1},
          {"ans": "Gobi", "score": 0},
          {"ans": "Arabian", "score": 0},
          {"ans": "Kalahari", "score": 0}
        ]
      },
      {
        "question": "Which country is both an island and a continent?",
        "answers": [
          {"ans": "Australia", "score": 1},
          {"ans": "New Zealand", "score": 0},
          {"ans": "Madagascar", "score": 0},
          {"ans": "Iceland", "score": 0}
        ]
      },
      {
        "question": "What is the highest mountain in the world?",
        "answers": [
          {"ans": "Mount Everest", "score": 1},
          {"ans": "K2", "score": 0},
          {"ans": "Kangchenjunga", "score": 0},
          {"ans": "Makalu", "score": 0}
        ]
      },
      {
        "question": "Which ocean is the largest by area?",
        "answers": [
          {"ans": "Pacific", "score": 1},
          {"ans": "Atlantic", "score": 0},
          {"ans": "Indian", "score": 0},
          {"ans": "Arctic", "score": 0}
        ]
      },
      {
        "question": "Which country is known as the 'Land of Fire and Ice'?",
        "answers": [
          {"ans": "Iceland", "score": 1},
          {"ans": "Greenland", "score": 0},
          {"ans": "Norway", "score": 0},
          {"ans": "Finland", "score": 0}
        ]
      },
      {
        "question": "What is the largest country in the world by land area?",
        "answers": [
          {"ans": "Russia", "score": 1},
          {"ans": "Canada", "score": 0},
          {"ans": "China", "score": 0},
          {"ans": "United States", "score": 0},
        ],
      },
    ],
  },

  ///// math test /////

  {
    "categoryName": "Math Test",
    "color": Colors.grey,
    "data": [
      {
        "question": "What is the value of 2 + 2?",
        "answers": [
          {"ans": "4", "score": 1},
          {"ans": "2", "score": 0},
          {"ans": "8", "score": 0},
          {"ans": "6", "score": 0}
        ]
      },
      {
        "question": "Simplify the expression: 3 × (4 + 2)",
        "answers": [
          {"ans": "18", "score": 0},
          {"ans": "12", "score": 0},
          {"ans": "24", "score": 0},
          {"ans": "18", "score": 1}
        ]
      },
      {
        "question": "What is the square of 9?",
        "answers": [
          {"ans": "81", "score": 1},
          {"ans": "27", "score": 0},
          {"ans": "36", "score": 0},
          {"ans": "64", "score": 0}
        ]
      },
      {
        "question": "Solve the equation: 2x - 5 = 15",
        "answers": [
          {"ans": "x = 10", "score": 1},
          {"ans": "x = 5", "score": 0},
          {"ans": "x = 15", "score": 0},
          {"ans": "x = 20", "score": 0}
        ]
      },
      {
        "question": "What is the value of 8 × 7?",
        "answers": [
          {"ans": "56", "score": 1},
          {"ans": "14", "score": 0},
          {"ans": "64", "score": 0},
          {"ans": "48", "score": 0}
        ]
      },
      {
        "question": "Solve the equation: 3x + 7 = 28",
        "answers": [
          {"ans": "x = 7", "score": 1},
          {"ans": "x = 10", "score": 0},
          {"ans": "x = 14", "score": 0},
          {"ans": "x = 21", "score": 0}
        ]
      },
      {
        "question": "What is the value of 5²?",
        "answers": [
          {"ans": "25", "score": 1},
          {"ans": "5", "score": 0},
          {"ans": "10", "score": 0},
          {"ans": "15", "score": 0}
        ]
      },
      {
        "question":
            "Calculate the area of a circle with radius 5 cm (use π = 3.14).",
        "answers": [
          {"ans": "78.5 cm²", "score": 1},
          {"ans": "31.4 cm²", "score": 0},
          {"ans": "25 cm²", "score": 0},
          {"ans": "15.7 cm²", "score": 0}
        ]
      },
      {
        "question": "What is the value of 10 ÷ 2 + 3?",
        "answers": [
          {"ans": "8", "score": 0},
          {"ans": "13", "score": 1},
          {"ans": "7", "score": 0},
          {"ans": "5", "score": 0}
        ]
      },
      {
        "question": "Simplify the expression: 2(x + 3)",
        "answers": [
          {"ans": "2x + 6", "score": 1},
          {"ans": "2x - 6", "score": 0},
          {"ans": "x + 6", "score": 0},
          {"ans": "x - 6", "score": 0}
        ]
      },
      {
        "question": "What is the value of log₂(16)?",
        "answers": [
          {"ans": "4", "score": 1},
          {"ans": "2", "score": 0},
          {"ans": "8", "score": 0},
          {"ans": "16", "score": 0}
        ]
      },
      {
        "question": "Solve the equation: 4x - 3 = 9",
        "answers": [
          {"ans": "x = 3", "score": 1},
          {"ans": "x = 6", "score": 0},
          {"ans": "x = 9", "score": 0},
          {"ans": "x = 12", "score": 0},
        ],
      },
    ],
  },
];
