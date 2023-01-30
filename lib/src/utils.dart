import 'package:dart_holodex_api/src/enums/enum_with_code_extension.dart';
import 'package:dart_holodex_api/src/enums/includes.dart';
import 'package:dart_holodex_api/src/enums/language.dart';

String paginatedToString(bool paginated) => paginated ? 'yes' : '';

String includeCommentsToString(bool comments) => comments ? '1' : '0';

String concatStringList(List<String> list) => list.join(',');

String? concatIncludesList(List<Includes> items) {
  return items.isEmpty ? null : concatEnumWithCodeList(items);
}

String concatLanguageListWithDefault(List<Language> languages) =>
    concatLanguageList(languages.isEmpty ? [Language.all] : languages);

String intToString(int value) => value.toString();
