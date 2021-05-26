class Language {
  final int id;
  final String language;
  final String drapeau;
  final String languageCode;

  Language(this.id, this.language, this.drapeau, this.languageCode);
/*
  Ici, lister les langues compatibles avec l'application, chacune associée à son drapeau au format émoji et le code
  officiel du pays.
 */
  static List<Language> languageList() {
    return <Language>[
      Language(0, 'English', '🇬🇧', 'en'),
      Language(1, 'Français', '🇫🇷', 'fr'),
      Language(2, '日本語', '🇯🇵', 'ja'),
    ];
  }
}
