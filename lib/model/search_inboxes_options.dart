//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchInboxesOptions {
  /// Returns a new [SearchInboxesOptions] instance.
  SearchInboxesOptions({
    this.pageIndex,
    this.pageSize,
    this.sortDirection,
    this.favourite,
    this.search,
    this.tag,
    this.since,
    this.before,
    this.inboxType,
    this.inboxFunction,
    this.domainId,
  });

  /// Optional page index in list pagination
  int? pageIndex;

  /// Optional page size in list pagination
  int? pageSize;

  /// Optional createdAt sort direction ASC or DESC
  SearchInboxesOptionsSortDirectionEnum? sortDirection;

  /// Optionally filter results for favourites only
  bool? favourite;

  /// Optionally filter by search words partial matching ID, tags, name, and email address
  String? search;

  /// Optionally filter by tags. Will return inboxes that include given tags
  String? tag;

  /// Optional filter by created after given date time
  DateTime? since;

  /// Optional filter by created before given date time
  DateTime? before;

  /// Type of inbox. HTTP inboxes are faster and better for most cases. SMTP inboxes are more suited for public facing inbound messages (but cannot send).
  SearchInboxesOptionsInboxTypeEnum? inboxType;

  /// Optional filter by inbox function
  SearchInboxesOptionsInboxFunctionEnum? inboxFunction;

  /// Optional domain ID filter
  String? domainId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchInboxesOptions &&
     other.pageIndex == pageIndex &&
     other.pageSize == pageSize &&
     other.sortDirection == sortDirection &&
     other.favourite == favourite &&
     other.search == search &&
     other.tag == tag &&
     other.since == since &&
     other.before == before &&
     other.inboxType == inboxType &&
     other.inboxFunction == inboxFunction &&
     other.domainId == domainId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (pageIndex == null ? 0 : pageIndex!.hashCode) +
    (pageSize == null ? 0 : pageSize!.hashCode) +
    (sortDirection == null ? 0 : sortDirection!.hashCode) +
    (favourite == null ? 0 : favourite!.hashCode) +
    (search == null ? 0 : search!.hashCode) +
    (tag == null ? 0 : tag!.hashCode) +
    (since == null ? 0 : since!.hashCode) +
    (before == null ? 0 : before!.hashCode) +
    (inboxType == null ? 0 : inboxType!.hashCode) +
    (inboxFunction == null ? 0 : inboxFunction!.hashCode) +
    (domainId == null ? 0 : domainId!.hashCode);

  @override
  String toString() => 'SearchInboxesOptions[pageIndex=$pageIndex, pageSize=$pageSize, sortDirection=$sortDirection, favourite=$favourite, search=$search, tag=$tag, since=$since, before=$before, inboxType=$inboxType, inboxFunction=$inboxFunction, domainId=$domainId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.favourite != null) {
      json[r'favourite'] = this.favourite;
    } else {
      json[r'favourite'] = null;
    }
    if (this.search != null) {
      json[r'search'] = this.search;
    } else {
      json[r'search'] = null;
    }
    if (this.tag != null) {
      json[r'tag'] = this.tag;
    } else {
      json[r'tag'] = null;
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
    if (this.inboxType != null) {
      json[r'inboxType'] = this.inboxType;
    } else {
      json[r'inboxType'] = null;
    }
    if (this.inboxFunction != null) {
      json[r'inboxFunction'] = this.inboxFunction;
    } else {
      json[r'inboxFunction'] = null;
    }
    if (this.domainId != null) {
      json[r'domainId'] = this.domainId;
    } else {
      json[r'domainId'] = null;
    }
    return json;
  }

  /// Returns a new [SearchInboxesOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchInboxesOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchInboxesOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchInboxesOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchInboxesOptions(
        pageIndex: mapValueOfType<int>(json, r'pageIndex'),
        pageSize: mapValueOfType<int>(json, r'pageSize'),
        sortDirection: SearchInboxesOptionsSortDirectionEnum.fromJson(json[r'sortDirection']),
        favourite: mapValueOfType<bool>(json, r'favourite'),
        search: mapValueOfType<String>(json, r'search'),
        tag: mapValueOfType<String>(json, r'tag'),
        since: mapDateTime(json, r'since', ''),
        before: mapDateTime(json, r'before', ''),
        inboxType: SearchInboxesOptionsInboxTypeEnum.fromJson(json[r'inboxType']),
        inboxFunction: SearchInboxesOptionsInboxFunctionEnum.fromJson(json[r'inboxFunction']),
        domainId: mapValueOfType<String>(json, r'domainId'),
      );
    }
    return null;
  }

  static List<SearchInboxesOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchInboxesOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchInboxesOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchInboxesOptions> mapFromJson(dynamic json) {
    final map = <String, SearchInboxesOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchInboxesOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchInboxesOptions-objects as value to a dart map
  static Map<String, List<SearchInboxesOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchInboxesOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchInboxesOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Optional createdAt sort direction ASC or DESC
class SearchInboxesOptionsSortDirectionEnum {
  /// Instantiate a new enum with the provided [value].
  const SearchInboxesOptionsSortDirectionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ASC = SearchInboxesOptionsSortDirectionEnum._(r'ASC');
  static const DESC = SearchInboxesOptionsSortDirectionEnum._(r'DESC');

  /// List of all possible values in this [enum][SearchInboxesOptionsSortDirectionEnum].
  static const values = <SearchInboxesOptionsSortDirectionEnum>[
    ASC,
    DESC,
  ];

  static SearchInboxesOptionsSortDirectionEnum? fromJson(dynamic value) => SearchInboxesOptionsSortDirectionEnumTypeTransformer().decode(value);

  static List<SearchInboxesOptionsSortDirectionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchInboxesOptionsSortDirectionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchInboxesOptionsSortDirectionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SearchInboxesOptionsSortDirectionEnum] to String,
/// and [decode] dynamic data back to [SearchInboxesOptionsSortDirectionEnum].
class SearchInboxesOptionsSortDirectionEnumTypeTransformer {
  factory SearchInboxesOptionsSortDirectionEnumTypeTransformer() => _instance ??= const SearchInboxesOptionsSortDirectionEnumTypeTransformer._();

  const SearchInboxesOptionsSortDirectionEnumTypeTransformer._();

  String encode(SearchInboxesOptionsSortDirectionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SearchInboxesOptionsSortDirectionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SearchInboxesOptionsSortDirectionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ASC': return SearchInboxesOptionsSortDirectionEnum.ASC;
        case r'DESC': return SearchInboxesOptionsSortDirectionEnum.DESC;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SearchInboxesOptionsSortDirectionEnumTypeTransformer] instance.
  static SearchInboxesOptionsSortDirectionEnumTypeTransformer? _instance;
}


/// Type of inbox. HTTP inboxes are faster and better for most cases. SMTP inboxes are more suited for public facing inbound messages (but cannot send).
class SearchInboxesOptionsInboxTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const SearchInboxesOptionsInboxTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HTTP_INBOX = SearchInboxesOptionsInboxTypeEnum._(r'HTTP_INBOX');
  static const SMTP_INBOX = SearchInboxesOptionsInboxTypeEnum._(r'SMTP_INBOX');

  /// List of all possible values in this [enum][SearchInboxesOptionsInboxTypeEnum].
  static const values = <SearchInboxesOptionsInboxTypeEnum>[
    HTTP_INBOX,
    SMTP_INBOX,
  ];

  static SearchInboxesOptionsInboxTypeEnum? fromJson(dynamic value) => SearchInboxesOptionsInboxTypeEnumTypeTransformer().decode(value);

  static List<SearchInboxesOptionsInboxTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchInboxesOptionsInboxTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchInboxesOptionsInboxTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SearchInboxesOptionsInboxTypeEnum] to String,
/// and [decode] dynamic data back to [SearchInboxesOptionsInboxTypeEnum].
class SearchInboxesOptionsInboxTypeEnumTypeTransformer {
  factory SearchInboxesOptionsInboxTypeEnumTypeTransformer() => _instance ??= const SearchInboxesOptionsInboxTypeEnumTypeTransformer._();

  const SearchInboxesOptionsInboxTypeEnumTypeTransformer._();

  String encode(SearchInboxesOptionsInboxTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SearchInboxesOptionsInboxTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SearchInboxesOptionsInboxTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HTTP_INBOX': return SearchInboxesOptionsInboxTypeEnum.HTTP_INBOX;
        case r'SMTP_INBOX': return SearchInboxesOptionsInboxTypeEnum.SMTP_INBOX;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SearchInboxesOptionsInboxTypeEnumTypeTransformer] instance.
  static SearchInboxesOptionsInboxTypeEnumTypeTransformer? _instance;
}


/// Optional filter by inbox function
class SearchInboxesOptionsInboxFunctionEnum {
  /// Instantiate a new enum with the provided [value].
  const SearchInboxesOptionsInboxFunctionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ALIAS = SearchInboxesOptionsInboxFunctionEnum._(r'ALIAS');
  static const THREAD = SearchInboxesOptionsInboxFunctionEnum._(r'THREAD');
  static const CATCH_ALL = SearchInboxesOptionsInboxFunctionEnum._(r'CATCH_ALL');
  static const CONNECTOR = SearchInboxesOptionsInboxFunctionEnum._(r'CONNECTOR');
  static const ACCOUNT = SearchInboxesOptionsInboxFunctionEnum._(r'ACCOUNT');
  static const GUEST = SearchInboxesOptionsInboxFunctionEnum._(r'GUEST');
  static const OAUTH_CONNECTION_GMAIL = SearchInboxesOptionsInboxFunctionEnum._(r'OAUTH_CONNECTION_GMAIL');

  /// List of all possible values in this [enum][SearchInboxesOptionsInboxFunctionEnum].
  static const values = <SearchInboxesOptionsInboxFunctionEnum>[
    ALIAS,
    THREAD,
    CATCH_ALL,
    CONNECTOR,
    ACCOUNT,
    GUEST,
    OAUTH_CONNECTION_GMAIL,
  ];

  static SearchInboxesOptionsInboxFunctionEnum? fromJson(dynamic value) => SearchInboxesOptionsInboxFunctionEnumTypeTransformer().decode(value);

  static List<SearchInboxesOptionsInboxFunctionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchInboxesOptionsInboxFunctionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchInboxesOptionsInboxFunctionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SearchInboxesOptionsInboxFunctionEnum] to String,
/// and [decode] dynamic data back to [SearchInboxesOptionsInboxFunctionEnum].
class SearchInboxesOptionsInboxFunctionEnumTypeTransformer {
  factory SearchInboxesOptionsInboxFunctionEnumTypeTransformer() => _instance ??= const SearchInboxesOptionsInboxFunctionEnumTypeTransformer._();

  const SearchInboxesOptionsInboxFunctionEnumTypeTransformer._();

  String encode(SearchInboxesOptionsInboxFunctionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SearchInboxesOptionsInboxFunctionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SearchInboxesOptionsInboxFunctionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ALIAS': return SearchInboxesOptionsInboxFunctionEnum.ALIAS;
        case r'THREAD': return SearchInboxesOptionsInboxFunctionEnum.THREAD;
        case r'CATCH_ALL': return SearchInboxesOptionsInboxFunctionEnum.CATCH_ALL;
        case r'CONNECTOR': return SearchInboxesOptionsInboxFunctionEnum.CONNECTOR;
        case r'ACCOUNT': return SearchInboxesOptionsInboxFunctionEnum.ACCOUNT;
        case r'GUEST': return SearchInboxesOptionsInboxFunctionEnum.GUEST;
        case r'OAUTH_CONNECTION_GMAIL': return SearchInboxesOptionsInboxFunctionEnum.OAUTH_CONNECTION_GMAIL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SearchInboxesOptionsInboxFunctionEnumTypeTransformer] instance.
  static SearchInboxesOptionsInboxFunctionEnumTypeTransformer? _instance;
}


