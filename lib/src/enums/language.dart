import 'package:intl/locale.dart';

extension LanguageValues on List<Language> {
  Language byLocale(Locale locale) => Language.other(locale);

  /// Throws a [FormatException] if [tag] is syntactically invalid.
  Language byTag(String tag) {
    for (var value in this) {
      if (value.toLanguageTag() == tag) return value;
    }
    return Language.other(Locale.parse((tag)));
  }
}

/// Holodex uses the BCP47 standard for language codes
///
/// Make a Pull Request or GitHub issue to add more language options.
class Language {
  const Language._internal(this.locale);

  final Locale locale;

  factory Language.other(Locale other) => Language._internal(other);

  factory Language.fromString(String? source) {
    if (source == null) return Language.all;
    final locale = Locale.tryParse(source);
    return locale != null ? Language.other(locale) : Language.all;
  }

  static final all =
      Language._internal(Locale.fromSubtags(languageCode: 'all'));

  static final english =
      Language._internal(Locale.fromSubtags(languageCode: 'en'));

  static final japanese =
      Language._internal(Locale.fromSubtags(languageCode: 'jp'));

  static final spanish =
      Language._internal(Locale.fromSubtags(languageCode: 'es'));

  static final chinese =
      Language._internal(Locale.fromSubtags(languageCode: 'zh'));

  static final korean =
      Language._internal(Locale.fromSubtags(languageCode: 'ko'));

  static final french =
      Language._internal(Locale.fromSubtags(languageCode: 'fr'));

  static final indonesian =
      Language._internal(Locale.fromSubtags(languageCode: 'id'));

  static final russian =
      Language._internal(Locale.fromSubtags(languageCode: 'ru'));

  static final List<Language> values = [
    Language.all,
    Language.english,
    Language.japanese,
    Language.spanish,
    Language.chinese,
    Language.korean,
    Language.french,
    Language.indonesian,
    Language.russian,
  ];

  String toLanguageTag() => locale.toLanguageTag();

  static String toStringStatic(Language language) =>
      language.locale.toLanguageTag();

  @override
  String toString() => locale.toLanguageTag();
}
