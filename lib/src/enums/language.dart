import 'package:dart_holodex_api/src/utils.dart';
import 'package:intl/locale.dart';

/// Extension methods for list of [Language].
extension LanguageValues on List<Language> {
  /// Returns the [Language] with the given [locale].
  Language byLocale(Locale locale) => Language.other(locale);

  /// Throws a [FormatException] if [tag] is syntactically invalid.
  Language byTag(String tag) {
    for (var value in this) {
      if (value.toLanguageTag() == tag) return value;
    }
    return Language.other(Locale.parse((tag)));
  }

  /// Converts a list of [Language] to a list of [String].
  List<String> toStringList() => languageListToStringList(this);

  /// Concatenates a list of [Language] to a [String].
  String get concat => concatLanguageList(this);
}

/// Holodex uses the BCP47 standard for language codes
///
/// Make a Pull Request or GitHub issue to add more language options.
class Language {
  const Language._internal(this.locale);

  /// The [Locale] of this [Language].
  final Locale locale;

  /// Returns a new [Language] for a locale that is not included in [values].
  factory Language.other(Locale other) => Language._internal(other);

  /// Returns a new [Language] from a string language code. If the string is
  /// not a valid [Unicode Locale Identifiers](https://www.unicode.org/reports/tr35/#Unicode_locale_identifier)
  /// it defaults to [Language.all].
  factory Language.fromString(String? source) {
    if (source == null) return Language.all;
    final locale = Locale.tryParse(source);
    return locale != null ? Language.other(locale) : Language.all;
  }

  /// [Language] with locale set to `all`.
  static final all =
      Language._internal(Locale.fromSubtags(languageCode: 'all'));

  /// [Language] with locale `en`.
  static final english =
      Language._internal(Locale.fromSubtags(languageCode: 'en'));

  /// [Language] with locale `jp`.
  static final japanese =
      Language._internal(Locale.fromSubtags(languageCode: 'jp'));

  /// [Language] with locale `es`.
  static final spanish =
      Language._internal(Locale.fromSubtags(languageCode: 'es'));

  /// [Language] with locale `zh`.
  static final chinese =
      Language._internal(Locale.fromSubtags(languageCode: 'zh'));

  /// [Language] with locale `ko`.
  static final korean =
      Language._internal(Locale.fromSubtags(languageCode: 'ko'));

  /// [Language] with locale `fr`.
  static final french =
      Language._internal(Locale.fromSubtags(languageCode: 'fr'));

  /// [Language] with locale `id`.
  static final indonesian =
      Language._internal(Locale.fromSubtags(languageCode: 'id'));

  /// [Language] with locale `ru`.
  static final russian =
      Language._internal(Locale.fromSubtags(languageCode: 'ru'));

  /// Most languages supported by Holodex as of 2023-02-05.
  ///
  /// Submit a Pull Request or GitHub issue to add more languages
  /// or use [Language.other]
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

  /// Returns the language tag for this [Language] from the [Locale].
  String toLanguageTag() => locale.toLanguageTag();

  /// Returns the language tag for [language] from the [Locale].
  static String toStringStatic(Language language) =>
      language.locale.toLanguageTag();

  @override
  String toString() => locale.toLanguageTag();
}
