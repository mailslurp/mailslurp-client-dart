//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateDomainOptions {
  /// Returns a new [UpdateDomainOptions] instance.
  UpdateDomainOptions({
    this.catchAllInboxId,
  });

  String catchAllInboxId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateDomainOptions &&
     other.catchAllInboxId == catchAllInboxId;

  @override
  int get hashCode =>
    (catchAllInboxId == null ? 0 : catchAllInboxId.hashCode);

  @override
  String toString() => 'UpdateDomainOptions[catchAllInboxId=$catchAllInboxId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (catchAllInboxId != null) {
      json[r'catchAllInboxId'] = catchAllInboxId;
    }
    return json;
  }

  /// Returns a new [UpdateDomainOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UpdateDomainOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : UpdateDomainOptions(
        catchAllInboxId: json[r'catchAllInboxId'],
    );

  static List<UpdateDomainOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UpdateDomainOptions>[]
      : json.map((v) => UpdateDomainOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, UpdateDomainOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UpdateDomainOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = UpdateDomainOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of UpdateDomainOptions-objects as value to a dart map
  static Map<String, List<UpdateDomainOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UpdateDomainOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = UpdateDomainOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

