//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetOrCreateSamlUserOptions {
  /// Returns a new [GetOrCreateSamlUserOptions] instance.
  GetOrCreateSamlUserOptions({
    @required this.issuer,
    @required this.nameId,
    this.nameIdFormat,
  });

  String issuer;

  String nameId;

  String nameIdFormat;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetOrCreateSamlUserOptions &&
     other.issuer == issuer &&
     other.nameId == nameId &&
     other.nameIdFormat == nameIdFormat;

  @override
  int get hashCode =>
    (issuer == null ? 0 : issuer.hashCode) +
    (nameId == null ? 0 : nameId.hashCode) +
    (nameIdFormat == null ? 0 : nameIdFormat.hashCode);

  @override
  String toString() => 'GetOrCreateSamlUserOptions[issuer=$issuer, nameId=$nameId, nameIdFormat=$nameIdFormat]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'issuer'] = issuer;
      json[r'nameId'] = nameId;
    if (nameIdFormat != null) {
      json[r'nameIdFormat'] = nameIdFormat;
    }
    return json;
  }

  /// Returns a new [GetOrCreateSamlUserOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetOrCreateSamlUserOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GetOrCreateSamlUserOptions(
        issuer: json[r'issuer'],
        nameId: json[r'nameId'],
        nameIdFormat: json[r'nameIdFormat'],
    );

  static List<GetOrCreateSamlUserOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GetOrCreateSamlUserOptions>[]
      : json.map((v) => GetOrCreateSamlUserOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, GetOrCreateSamlUserOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GetOrCreateSamlUserOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = GetOrCreateSamlUserOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of GetOrCreateSamlUserOptions-objects as value to a dart map
  static Map<String, List<GetOrCreateSamlUserOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GetOrCreateSamlUserOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = GetOrCreateSamlUserOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

