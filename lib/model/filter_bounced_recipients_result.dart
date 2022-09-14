//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FilterBouncedRecipientsResult {
  /// Returns a new [FilterBouncedRecipientsResult] instance.
  FilterBouncedRecipientsResult({
    this.filteredRecipients = const [],
  });

  List<String> filteredRecipients;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FilterBouncedRecipientsResult &&
     other.filteredRecipients == filteredRecipients;

  @override
  int get hashCode =>
    (filteredRecipients == null ? 0 : filteredRecipients.hashCode);

  @override
  String toString() => 'FilterBouncedRecipientsResult[filteredRecipients=$filteredRecipients]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'filteredRecipients'] = filteredRecipients;
    return json;
  }

  /// Returns a new [FilterBouncedRecipientsResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FilterBouncedRecipientsResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : FilterBouncedRecipientsResult(
        filteredRecipients: json[r'filteredRecipients'] == null
          ? null
          : (json[r'filteredRecipients'] as List).cast<String>(),
    );

  static List<FilterBouncedRecipientsResult> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <FilterBouncedRecipientsResult>[]
      : json.map((v) => FilterBouncedRecipientsResult.fromJson(v)).toList(growable: true == growable);

  static Map<String, FilterBouncedRecipientsResult> mapFromJson(Map<String, dynamic> json) {
    final map = <String, FilterBouncedRecipientsResult>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = FilterBouncedRecipientsResult.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of FilterBouncedRecipientsResult-objects as value to a dart map
  static Map<String, List<FilterBouncedRecipientsResult>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FilterBouncedRecipientsResult>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = FilterBouncedRecipientsResult.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

