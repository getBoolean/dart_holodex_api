import 'package:dart_holodex_api/src/enums/channel_sort.dart';
import 'package:dart_holodex_api/src/enums/channel_type.dart';
import 'package:dart_holodex_api/src/enums/enum_with_code_extension.dart';
import 'package:dart_holodex_api/src/enums/includes.dart';
import 'package:dart_holodex_api/src/enums/language.dart';
import 'package:dart_holodex_api/src/enums/order.dart';
import 'package:dart_holodex_api/src/enums/organization.dart';
import 'package:dart_holodex_api/src/enums/search_sort.dart';
import 'package:dart_holodex_api/src/enums/search_target.dart';
import 'package:dart_holodex_api/src/enums/video_sort.dart';
import 'package:dart_holodex_api/src/enums/video_status.dart';
import 'package:dart_holodex_api/src/enums/video_type.dart';

/// Convert `paginated` to a string value expected by the Holodex API.
String paginatedToString(bool paginated) => paginated ? 'yes' : '';

/// Convert `comments` to a string value expected by the Holodex API.
String includeCommentsToString(bool comments) => comments ? '1' : '0';

/// Concat `list` to a string value expected by the Holodex API.
String concatStringList(List<String> list) => list.join(',');

/// Concat `items` to a string value expected by the Holodex API.
String? concatIncludesList(List<Includes> items) =>
    items.isEmpty ? null : concatEnumWithCodeList(items);

/// Concat `list` to a string value expected by the Holodex API.
String? concatVideoSortList(List<VideoSort> list) =>
    list.isEmpty ? null : concatEnumWithCodeList(list);

/// Concat `list` to a string value expected by the Holodex API.
String? concatVideoStatusList(List<VideoStatus> list) =>
    list.isEmpty ? null : concatEnumWithCodeList(list);

/// Concat `list` to a string value expected by the Holodex API.
String concatOrganizationList(List<Organization> list) =>
    list.map((e) => e.name).join(',');

/// Convert `organization` to a string value expected by the Holodex API.
String? organizationToString(Organization? organization) => organization?.name;

/// Concat `list` to a list of strings expected by the Holodex API.
List<String> organizationListToStringList(List<Organization> list) =>
    list.map((e) => e.name).toList();

/// Convert `list` to a list of strings expected by the Holodex API.
List<String> searchTargetToStringList(List<SearchTarget> list) =>
    list.map((e) => e.code).toList();

/// Concat `languages` to a string value expected by the Holodex API
/// and default to [Language.all] if `languages` is empty.
String concatLanguageListWithDefault(List<Language> languages) =>
    concatLanguageList(languages.isEmpty ? [Language.all] : languages);

/// Convert `value` to a string value
String intToString(int value) => value.toString();

/// Convert `value` to a string value
String? intToStringNullable(int? value) => value?.toString();

/// Convert `sort` to a string value expected by the Holodex API.
String searchSortToString(SearchSort sort) => sort.code;

/// Convert `type` to a string value expected by the Holodex API.
String? channelTypeToString(ChannelType? type) => type?.code;

/// Convert `list` to a list of strings expected by the Holodex API.
List<String>? channelSortToStringList(List<ChannelSort> list) =>
    list.isEmpty ? null : list.map((e) => e.code).toList();

/// Convert `order` to a string value expected by the Holodex API.
String orderToString(Order order) => order.code;

/// Convert `list` to a list of strings expected by the Holodex API.
List<String>? nullStringListIfEmpty(List<String> value) =>
    value.isEmpty ? null : value;

/// Convert `type` to a string value expected by the Holodex API.
String? videoTypeToString(VideoType? type) => type?.code;

/// Convert `languages` to a list of strings expected by the Holodex API.
List<String> languageListToStringList(List<Language> languages) =>
    languages.map((e) => e.toLanguageTag()).toList();

/// Convert a list of strings to a list of [Language]s.
List<Language> stringListToLanguageList(List<String> languages) =>
    languages.map(Language.fromString).toList();

/// Concat `list` to a string value expected by the Holodex API.
String concatLanguageList(List<Language> languages) =>
    languages.map((e) => e.toLanguageTag()).join(',');
