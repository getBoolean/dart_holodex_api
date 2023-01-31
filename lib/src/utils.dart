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

String paginatedToString(bool paginated) => paginated ? 'yes' : '';

String includeCommentsToString(bool comments) => comments ? '1' : '0';

String concatStringList(List<String> list) => list.join(',');

String? concatIncludesList(List<Includes> items) =>
    items.isEmpty ? null : concatEnumWithCodeList(items);

String concatOrganizationList(List<Organization> list) =>
    concatEnumWithCodeList(list);

String concatVideoSortList(List<VideoSort> list) =>
    concatEnumWithCodeList(list);

String concatVideoStatusList(List<VideoStatus> list) =>
    concatEnumWithCodeList(list);

String concatSearchTargetList(List<SearchTarget> list) =>
    concatEnumWithCodeList(list);

String? organizationToString(Organization? organization) => organization?.code;

List<String> organizationToStringList(List<Organization> list) =>
    list.map((e) => e.code).toList();

List<String> searchTargetToStringList(List<SearchTarget> list) =>
    list.map((e) => e.code).toList();

String concatLanguageListWithDefault(List<Language> languages) =>
    concatLanguageList(languages.isEmpty ? [Language.all] : languages);

String intToString(int value) => value.toString();

String searchSortToString(SearchSort sort) => sort.code;

String? channelTypeToString(ChannelType? type) => type?.code;

List<String>? channelSortToStringList(List<ChannelSort> list) =>
    list.isEmpty ? null : list.map((e) => e.code).toList();

String orderToString(Order order) => order.code;

List<String>? nullStringListIfEmpty(List<String> value) => value.isEmpty ? null : value;

String? videoTypeToString(VideoType? type) => type?.code;