class Question {
  final int id;
  final String question;
  final int answer;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}

const List questionList = [
  {
    "id": 1,
    "Categoria": "Entertainment: Video Games",
    "type": "multiple",
    "difficulty": "medium",
    "question": "¿Dónde te sientes más seguro?",
    "options": ["Casa de Mamá", "Casade papá", "Casa de los abuelos", "otra"]
  },
  {
    "id": 2,
    "category": "Entertainment: Video Games",
    "type": "multiple",
    "difficulty": "medium",
    "question": "¿Estás enfadado por lo que ha pasado hoy?",
    "correct_answer": 3,
    "options": ["Mucho", "No demasiado", "Un poco", "No"]
  },
  {
    "id": 3,
    "category": "Entertainment: Video Games",
    "type": "multiple",
    "difficulty": "medium",
    "question": "¿A quien cuando tienes un problema?",
    "correct_answer": 0,
    "options": ["Mamá", "Papá", "Familiar", "Otras personas"]
  },
  {
    "id": 4,
    "category": "Entertainment: Video Games",
    "type": "multiple",
    "difficulty": "medium",
    "question": "¿Cómo te sientes ahora?",
    "correct_answer": 2,
    "options": ["Bien", "Muy bien", "Mal", "Muy mal"]
  },
  {
    "id": 5,
    "category": "Entertainment: Video Games",
    "type": "multiple",
    "difficulty": "medium",
    "question": "¿Qué te gusta hacer cuando estás triste?",
    "correct_answer": 0,
    "options": ["Llorar", "Gritar", "Esconder la tristesa", "Otro"]
  },
  {
    "id": 6,
    "category": "Entertainment: Video Games",
    "type": "multiple",
    "difficulty": "medium",
    "question": "Si tuvieras que decirte algo lindo, ¿qué te dirías?",
    "correct_answer": 3,
    "options": [
      "confia más",
      "Eres una buena persona",
      "Eres muy inteligente",
      "Otra"
    ]
  },
  {
    "id": 7,
    "category": "Entertainment: Video Games",
    "type": "multiple",
    "difficulty": "medium",
    "question": "¿Cómo te sientes en casa?",
    "correct_answer": 1,
    "options": ["Feliz", "Enojado/a", "Asustado", "triste"]
  },
  {
    "id": 8,
    "category": "Entertainment: Video Games",
    "type": "multiple",
    "difficulty": "medium",
    "question": "¿Cuánto te quiere tu madre?",
    "correct_answer": 0,
    "options": ["Mucho", "No lo sé", "Muy poco", "No me quiere"]
  },
  {
    "id": 9,
    "category": "Entertainment: Video Games",
    "type": "multiple",
    "difficulty": "medium",
    "question": "¿Cuánto te quiere tu padre?",
    "correct_answer": 1,
    "options": ["Mucho", "No lo sé", "Muy poco", "No me quiere"]
  },
  {
    "id": 10,
    "category": "Entertainment: Video Games",
    "type": "multiple",
    "difficulty": "medium",
    "question": "¿Te gusta salir de viaje con tu familia?",
    "correct_answer": 3,
    "options": ["Si", "No", "Nunca hemos ido de viaje", "A veces"]
  }
];
