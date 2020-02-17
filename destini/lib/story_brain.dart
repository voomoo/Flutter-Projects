import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;
  List<Story> _storyData = [
    Story(
        t: 'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        c1: 'I\'ll hop in. Thanks for the help!',
        c2: 'Better ask him if he\'s a murderer first.'),
    Story(
        t: 'He nods slowly, unphased by the question.',
        c1: 'At least he\'s honest. I\'ll climb in.',
        c2: 'Wait, I know how to change a tire.'),
    Story(
        t: 'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        c1: 'I love Elton John! Hand him the cassette tape.',
        c2: 'It\'s him or me! You take the knife and stab him.'),
    Story(
        t: 'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        c1: 'Restart',
        c2: ''),
    Story(
        t: 'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        c1: 'Restart',
        c2: ''),
    Story(
        t: 'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        c1: 'Restart',
        c2: '')
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  void nextStory(int choiceNumber) {
    if (_storyNumber == 0 && choiceNumber == 1) {
      _storyNumber += 2;
    } else if (_storyNumber == 0 && choiceNumber == 2) {
      _storyNumber += 1;
    } else if (_storyNumber == 1 && choiceNumber == 1) {
      _storyNumber += 1;
    } else if (_storyNumber == 1 && choiceNumber == 2) {
      _storyNumber += 2;
    } else if (_storyNumber == 2 && choiceNumber == 1) {
      _storyNumber += 3;
    } else if (_storyNumber == 2 && choiceNumber == 2) {
      _storyNumber += 2;
    } else if (_storyNumber == 3 && choiceNumber == 1) {
      restart();
    } else if (_storyNumber == 4 && choiceNumber == 1) {
      restart();
    } else if (_storyNumber == 5 && choiceNumber == 1) {
      restart();
    }
//
  }

  void restart() {
    _storyNumber = 0;
  }

  bool shouldBeVisible() {
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }


}
