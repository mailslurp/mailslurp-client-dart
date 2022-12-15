//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FilterBouncedRecipientsOptions {
  /// Returns a new [FilterBouncedRecipientsOptions] instance.
  FilterBouncedRecipientsOptions({
    this.emailRecipients = const [],
  });

  List<String> emailRecipients;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FilterBouncedRecipientsOptions &&
     other.emailRecipients == emailRecipients;

  @override
  int get hashCode =>
    (emailRecipients == null ? 0 : emailRecipients.hashCode);

  @override
  String toString() => 'FilterBouncedRecipientsOptions[emailRecipients=$emailRecipients]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'emailRecipients'] = emailRecipients;
    return json;
  }

  /// Returns a new [FilterBouncedRecipientsOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FilterBouncedRecipientsOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : FilterBouncedRecipientsOptions(
        emailRecipients: json[r'emailRecipients'] == null
          ? null
          : (json[r'emailRecipients'] as List).cast<String>(),
    );

  static List<FilterBouncedRecipientsOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <FilterBouncedRecipientsOptions>[]
      : json.map((v) => FilterBouncedRecipientsOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, FilterBouncedRecipientsOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, FilterBouncedRecipientsOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = FilterBouncedRecipientsOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of FilterBouncedRecipientsOptions-objects as value to a dart map
  static Map<String, List<FilterBouncedRecipientsOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FilterBouncedRecipientsOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = FilterBouncedRecipientsOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

