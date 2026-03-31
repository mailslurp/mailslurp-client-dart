//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchEmailsOptions {
  /// Returns a new [SearchEmailsOptions] instance.
  SearchEmailsOptions({
    this.inboxIds = const [],
    this.pageIndex,
    this.pageSize,
    this.sortDirection,
    this.unreadOnly,
    this.searchFilter,
    this.since,
    this.before,
  });

  /// Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account.
  List<String> inboxIds;

  /// Optional page index in email list pagination
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pageIndex;

  /// Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results
  ///
  /// Maximum value: 100
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pageSize;

  /// Optional createdAt sort direction ASC or DESC
  SearchEmailsOptionsSortDirectionEnum? sortDirection;

  /// Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? unreadOnly;

  /// Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? searchFilter;

  /// Optional filter emails received after given date time
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? since;

  /// Optional filter emails received before given date time
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? before;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchEmailsOptions &&
     other.inboxIds == inboxIds &&
     other.pageIndex == pageIndex &&
     other.pageSize == pageSize &&
     other.sortDirection == sortDirection &&
     other.unreadOnly == unreadOnly &&
     other.searchFilter == searchFilter &&
     other.since == since &&
     other.before == before;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (inboxIds.hashCode) +
    (pageIndex == null ? 0 : pageIndex!.hashCode) +
    (pageSize == null ? 0 : pageSize!.hashCode) +
    (sortDirection == null ? 0 : sortDirection!.hashCode) +
    (unreadOnly == null ? 0 : unreadOnly!.hashCode) +
    (searchFilter == null ? 0 : searchFilter!.hashCode) +
    (since == null ? 0 : since!.hashCode) +
    (before == null ? 0 : before!.hashCode);

  @override
  String toString() => 'SearchEmailsOptions[inboxIds=$inboxIds, pageIndex=$pageIndex, pageSize=$pageSize, sortDirection=$sortDirection, unreadOnly=$unreadOnly, searchFilter=$searchFilter, since=$since, before=$before]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'inboxIds'] = this.inboxIds;
    if (this.pageIndex != null) {
      json[r'pageIndex'] = this.pageIndex;
    } else {
      json[r'pageIndex'] = null;
    }
    if (this.pageSize != null) {
      json[r'pageSize'] = this.pageSize;
    } else {
      json[r'pageSize'] = null;
    }
    if (this.sortDirection != null) {
      json[r'sortDirection'] = this.sortDirection;
    } else {
      json[r'sortDirection'] = null;
    }
    if (this.unreadOnly != null) {
      json[r'unreadOnly'] = this.unreadOnly;
    } else {
      json[r'unreadOnly'] = null;
    }
    if (this.searchFilter != null) {
      json[r'searchFilter'] = this.searchFilter;
    } else {
      json[r'searchFilter'] = null;
    }
    if (this.since != null) {
      json[r'since'] = this.since!.toUtc().toIso8601String();
    } else {
      json[r'since'] = null;
    }
    if (this.before != null) {
      json[r'before'] = this.before!.toUtc().toIso8601String();
    } else {
      json[r'before'] = null;
    }
    return json;
  }

  /// Returns a new [SearchEmailsOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchEmailsOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchEmailsOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchEmailsOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchEmailsOptions(
        inboxIds: json[r'inboxIds'] is List
            ? (json[r'inboxIds'] as List).cast<String>()
            : const [],
        pageIndex: mapValueOfType<int>(json, r'pageIndex'),
        pageSize: mapValueOfType<int>(json, r'pageSize'),
        sortDirection: SearchEmailsOptionsSortDirectionEnum.fromJson(json[r'sortDirection']),
        unreadOnly: mapValueOfType<bool>(json, r'unreadOnly'),
        searchFilter: mapValueOfType<String>(json, r'searchFilter'),
        since: mapDateTime(json, r'since', ''),
        before: mapDateTime(json, r'before', ''),
      );
    }
    return null;
  }

  static List<SearchEmailsOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchEmailsOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchEmailsOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchEmailsOptions> mapFromJson(dynamic json) {
    final map = <String, SearchEmailsOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchEmailsOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchEmailsOptions-objects as value to a dart map
  static Map<String, List<SearchEmailsOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchEmailsOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchEmailsOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Optional createdAt sort direction ASC or DESC
class SearchEmailsOptionsSortDirectionEnum {
  /// Instantiate a new enum with the provided [value].
  const SearchEmailsOptionsSortDirectionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ASC = SearchEmailsOptionsSortDirectionEnum._(r'ASC');
  static const DESC = SearchEmailsOptionsSortDirectionEnum._(r'DESC');

  /// List of all possible values in this [enum][SearchEmailsOptionsSortDirectionEnum].
  static const values = <SearchEmailsOptionsSortDirectionEnum>[
    ASC,
    DESC,
  ];

  static SearchEmailsOptionsSortDirectionEnum? fromJson(dynamic value) => SearchEmailsOptionsSortDirectionEnumTypeTransformer().decode(value);

  static List<SearchEmailsOptionsSortDirectionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchEmailsOptionsSortDirectionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchEmailsOptionsSortDirectionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SearchEmailsOptionsSortDirectionEnum] to String,
/// and [decode] dynamic data back to [SearchEmailsOptionsSortDirectionEnum].
class SearchEmailsOptionsSortDirectionEnumTypeTransformer {
  factory SearchEmailsOptionsSortDirectionEnumTypeTransformer() => _instance ??= const SearchEmailsOptionsSortDirectionEnumTypeTransformer._();

  const SearchEmailsOptionsSortDirectionEnumTypeTransformer._();

  String encode(SearchEmailsOptionsSortDirectionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SearchEmailsOptionsSortDirectionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SearchEmailsOptionsSortDirectionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ASC': return SearchEmailsOptionsSortDirectionEnum.ASC;
        case r'DESC': return SearchEmailsOptionsSortDirectionEnum.DESC;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SearchEmailsOptionsSortDirectionEnumTypeTransformer] instance.
  static SearchEmailsOptionsSortDirectionEnumTypeTransformer? _instance;
}


