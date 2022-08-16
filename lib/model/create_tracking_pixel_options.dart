//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateTrackingPixelOptions {
  /// Returns a new [CreateTrackingPixelOptions] instance.
  CreateTrackingPixelOptions({
    this.name,
    this.recipient,
  });

  String name;

  String recipient;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateTrackingPixelOptions &&
     other.name == name &&
     other.recipient == recipient;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    (recipient == null ? 0 : recipient.hashCode);

  @override
  String toString() => 'CreateTrackingPixelOptions[name=$name, recipient=$recipient]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (recipient != null) {
      json[r'recipient'] = recipient;
    }
    return json;
  }

  /// Returns a new [CreateTrackingPixelOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CreateTrackingPixelOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : CreateTrackingPixelOptions(
        name: json[r'name'],
        recipient: json[r'recipient'],
    );

  static List<CreateTrackingPixelOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CreateTrackingPixelOptions>[]
      : json.map((v) => CreateTrackingPixelOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, CreateTrackingPixelOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CreateTrackingPixelOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = CreateTrackingPixelOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of CreateTrackingPixelOptions-objects as value to a dart map
  static Map<String, List<CreateTrackingPixelOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CreateTrackingPixelOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = CreateTrackingPixelOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

