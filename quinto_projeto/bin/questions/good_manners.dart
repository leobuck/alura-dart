class GoodManners {
  String question;
  bool isThisGoodManners = false;
  String kakoBot = 'KakoBOT:\n';

  GoodManners(this.question);

  bool isThisManners() {
    if (question.contains('oi') ||
        question.contains('Oi') ||
        question.contains('ola') ||
        question.contains('Ola') ||
        question.contains('obrigado') ||
        question.contains('Obrigado') ||
        question.contains('obrigada') ||
        question.contains('Obrigada') ||
        question.contains('bom') ||
        question.contains('Bom') ||
        question.contains('boa') ||
        question.contains('Boa') ||
        question.contains('dia') ||
        question.contains('Dia') ||
        question.contains('tarde') ||
        question.contains('Tarde') ||
        question.contains('noite') ||
        question.contains('Noite') ||
        question.contains('de nada') ||
        question.contains('De nada')) {
      isThisGoodManners = true;
    }

    return isThisGoodManners;
  }
}
