//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExportLink {
  /// Returns a new [ExportLink] instance.
  ExportLink({
    this.downloadLink,
  });

  String downloadLink;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExportLink &&
     other.downloadLink == downloadLink;

  @override
  int get hashCode =>
    (downloadLink == null ? 0 : downloadLink.hashCode);

  @override
  String toString() => 'ExportLink[downloadLink=$downloadLink]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (downloadLink != null) {
      json[r'downloadLink'] = downloadLink;
    }
    return json;
  }

  /// Returns a new [ExportLink] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ExportLink fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ExportLink(
        downloadLink: json[r'downloadLink'],
    );

  static List<ExportLink> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ExportLink>[]
      : json.map((v) => ExportLink.fromJson(v)).toList(growable: true == growable);

  static Map<String, ExportLink> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ExportLink>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ExportLink.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ExportLink-objects as value to a dart map
  static Map<String, List<ExportLink>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ExportLink>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ExportLink.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

