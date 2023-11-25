// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'channel_video_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$ChannelVideoFilterImplToJson(
    _$ChannelVideoFilterImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('include', concatIncludesList(instance.includes));
  val['lang'] = concatLanguageListWithDefault(instance.languages);
  val['limit'] = intToString(instance.limit);
  val['offset'] = intToString(instance.offset);
  val['paginated'] = paginatedToString(instance.paginated);
  return val;
}
