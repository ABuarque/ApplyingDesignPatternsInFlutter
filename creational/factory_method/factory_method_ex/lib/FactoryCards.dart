abstract class Card {
  
  void setContent(String content);
  
  String getContent();
  
}

class SimpleCard extends Card {
  
  String _content;
  
  @override
  void setContent(String content) {
    _content = content;
  }
  
  @override
  String getContent() {
    return _content;
  }
  
}

class CustomizedCard extends Card {
  
  String _content;
  
  @override
  void setContent(String content) {
    _content = content;
  }
  
  @override
  String getContent() {
    return _content;
  }
  
}

enum Cards { SIMPLE, CUSTOMIZED }

class CardsFactory {
  
  Card getAnimal(Cards type) {
    if(type == Cards.SIMPLE)
      return new SimpleCard();
    if(type == Cards.CUSTOMIZED)
      return new CustomizedCard();
    return null;
  }
  
}
