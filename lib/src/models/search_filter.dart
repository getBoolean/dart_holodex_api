import 'package:dart_holodex_api/src/enums/language.dart';
import 'package:dart_holodex_api/src/enums/organization.dart';
import 'package:dart_holodex_api/src/enums/search_sort.dart';
import 'package:dart_holodex_api/src/enums/search_target.dart';
import 'package:dart_holodex_api/src/models/api/video_full.dart';

class SearchFilter {
  // searchSort: SearchSort.newest,
  // languages: [Language.all],
  // searchTargets: [SearchTarget.clip, SearchTarget.stream],
  // topics: ['singing'],
  // videoChannels: <String>[],
  // organizations: [
  //   Organization.Hololive,
  //   Organization.Nijisanji,
  // ],
  // paginated: true,
  // offset: 0,
  // limit: 25,

  /// Sort by newest or oldest
  final SearchSort searchSort;

  /// If set, will filter clips to only show clips with these languages + all vtuber streams
  /// (provided searchTargets is not set to filter out streams)
  final List<Language> languages;

  /// Target types of videos
  final List<SearchTarget> searchTargets;

  /// Return videos that match one of the provided topics
  final List<String> topics;

  /// Videos with all of the specified channel ids. If two or more channel IDs are specified,
  /// will only return their collabs, or if one channel is a clipper, it will only show clips
  /// of the other vtubers made by this clipper.
  final List<String> videoChannels;

  /// Videos of channels in any of the specified organizations, or clips that involve a channel
  /// in the specified organization.
  final List<Organization> organizations;

  /// If paginated is set to true, returns [List]<[VideoFull]> with total, otherwise returns [List]<[VideoFull]> without the total.
  final bool paginated;

  /// Offset results
  final int offset;

  /// Result limit
  final int limit;

  /// Arguments:
  /// - `searchSort` Sort by newest or oldest
  /// - `languages` If set, will filter clips to only show clips with these languages + all vtuber streams (provided searchTargets is not set to filter out streams)
  /// - `searchTargets` Target types of videos
  /// - `topics` Return videos that match one of the provided topics
  /// - `videoChannels` Videos with all of the specified channel ids. If two or more channel IDs are specified, will only return their collabs, or if one channel is a clipper, it will only show clips of the other vtubers made by this clipper.
  /// - `organizations` Videos of channels in any of the specified organizations, or clips that involve a channel in the specified organization.
  /// - `paginated` If paginated is set to true, returns [List]<[VideoFull]> with total, otherwise returns without the total.
  /// - `offset` Offset results
  /// - `limit` Result limit
  const SearchFilter({
    this.searchSort = SearchSort.newest,
    this.languages = const [],
    this.searchTargets = const [SearchTarget.clip, SearchTarget.stream],
    this.topics = const [],
    this.videoChannels = const [],
    this.organizations = const [],
    this.paginated = true,
    this.offset = 0,
    this.limit = 25,
  }) : assert(limit <= 50, 'The limit cannot be greater than 50');
}
