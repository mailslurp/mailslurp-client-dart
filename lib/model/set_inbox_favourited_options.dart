//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SetInboxFavouritedOptions {
  /// Returns a new [SetInboxFavouritedOptions] instance.
  SetInboxFavouritedOptions({
    @required this.state,
  });

  /// Is the inbox a favorite. Marking an inbox as a favorite is typically done in the dashboard for quick access or filtering
  bool state;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SetInboxFavouritedOptions &&
     other.state == state;

  @override
  int get hashCode =>
    (state == null ? 0 : state.hashCode);

  @override
  String toString() => 'SetInboxFavouritedOptions[state=$state]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'state'] = state;
    return json;
  }

  /// Returns a new [SetInboxFavouritedOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SetInboxFavouritedOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : SetInboxFavouritedOptions(
        state: json[r'state'],
    );

  static List<SetInboxFavouritedOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <SetInboxFavouritedOptions>[]
      : json.map((v) => SetInboxFavouritedOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, SetInboxFavouritedOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SetInboxFavouritedOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = SetInboxFavouritedOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of SetInboxFavouritedOptions-objects as value to a dart map
  static Map<String, List<SetInboxFavouritedOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SetInboxFavouritedOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = SetInboxFavouritedOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

