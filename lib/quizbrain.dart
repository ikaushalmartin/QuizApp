import 'questionbank.dart';

int _questionnumber = 0;

class Quiz {
  List<questionbank> _setofquestionbank = [
    questionbank('Some cats are actually allergic to humans', true),
    questionbank('You can lead a cow down stairs but not up stairs.', false),
    questionbank(
        'Approximately one quarter of human bones are in the feet.', true),
    questionbank('A slug\'s blood is green.', true),
    questionbank('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    questionbank('It is illegal to pee in the Ocean in Portugal.', true),
    questionbank(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    questionbank(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    questionbank(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    questionbank(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    questionbank('Google was originally called \"Backrub\".', true),
    questionbank(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    questionbank(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];
  void nextques() {
    if (_questionnumber < _setofquestionbank.length - 1) {
      _questionnumber++;
    }
  }

  String questionb() {
    return _setofquestionbank[_questionnumber].questions;
  }

  bool quesans() {
    return _setofquestionbank[_questionnumber].answers;
  }

  bool isfinish() {
    if (_questionnumber == _setofquestionbank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionnumber = 0;
  }
}
