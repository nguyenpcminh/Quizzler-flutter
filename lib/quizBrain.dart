import 'question.dart';

class QuizBrain {

  int _numberQuestion = 0;

  List<Question> _questionBank = [
    Question(q: 'You can lead a cow down stairs but not up stairs', a: false),
    Question(
        q: 'Approximately one quarter of human bones are in the feet', a: true),
    Question(q: 'A slug\'s blood is green', a: true),
    Question(q: 'You can lead a cow down stairs but not up stairs', a: false),
    Question(
        q: 'Approximately one quarter of human bones are in the feet', a: true),
    Question(q: 'A slug\'s blood is green', a: true),
    Question(q: 'You can lead a cow down stairs but not up stairs', a: false),
    Question(
        q: 'Approximately one quarter of human bones are in the feet', a: true),
    Question(q: 'A slug\'s blood is green', a: true),
    Question(q: 'You can lead a cow down stairs but not up stairs', a: false),
    Question(
        q: 'Approximately one quarter of human bones are in the feet', a: true),
    Question(q: 'A slug\'s blood is green', a: true),
  ];

  void nextQuestion(){
    if (_numberQuestion < _questionBank.length - 1){
      _numberQuestion++;
    }
  }

  String getQuestionText() {
    return _questionBank[_numberQuestion].questionText;
  }

  bool getAnswer() {
    return _questionBank[_numberQuestion].answer;
  }

  bool isFinished(){
    if (_numberQuestion >= _questionBank.length - 1){
      print ('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset(){
    _numberQuestion = 0;
  }
}
