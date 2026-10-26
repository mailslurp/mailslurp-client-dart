//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DevicePreviewSourceEmailDto {
  /// Returns a new [DevicePreviewSourceEmailDto] instance.
  DevicePreviewSourceEmailDto({
    this.subject,
    this.from,
    this.to = const [],
    this.cc = const [],
    this.bcc = const [],
    this.html,
    this.text,
  });

  String? subject;

  String? from;

  List<String> to;

  List<String> cc;

  List<String> bcc;

  String? html;

  String? text;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DevicePreviewSourceEmailDto &&
     other.subject == subject &&
     other.from == from &&
     other.to == to &&
     other.cc == cc &&
     other.bcc == bcc &&
     other.html == html &&
     other.text == text;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (subject == null ? 0 : subject!.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (to.hashCode) +
    (cc.hashCode) +
    (bcc.hashCode) +
    (html == null ? 0 : html!.hashCode) +
    (text == null ? 0 : text!.hashCode);

  @override
  String toString() => 'DevicePreviewSourceEmailDto[subject=$subject, from=$from, to=$to, cc=$cc, bcc=$bcc, html=$html, text=$text]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
      json[r'to'] = this.to;
      json[r'cc'] = this.cc;
      json[r'bcc'] = this.bcc;
    if (this.html != null) {
      json[r'html'] = this.html;
    } else {
      json[r'html'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    return json;
  }

  /// Returns a new [DevicePreviewSourceEmailDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DevicePreviewSourceEmailDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DevicePreviewSourceEmailDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DevicePreviewSourceEmailDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DevicePreviewSourceEmailDto(
        subject: mapValueOfType<String>(json, r'subject'),
        from: mapValueOfType<String>(json, r'from'),
        to: json[r'to'] is List
            ? (json[r'to'] as List).cast<String>()
            : const [],
        cc: json[r'cc'] is List
            ? (json[r'cc'] as List).cast<String>()
            : const [],
        bcc: json[r'bcc'] is List
            ? (json[r'bcc'] as List).cast<String>()
            : const [],
        html: mapValueOfType<String>(json, r'html'),
        text: mapValueOfType<String>(json, r'text'),
      );
    }
    return null;
  }

  static List<DevicePreviewSourceEmailDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewSourceEmailDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewSourceEmailDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DevicePreviewSourceEmailDto> mapFromJson(dynamic json) {
    final map = <String, DevicePreviewSourceEmailDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DevicePreviewSourceEmailDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DevicePreviewSourceEmailDto-objects as value to a dart map
  static Map<String, List<DevicePreviewSourceEmailDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DevicePreviewSourceEmailDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DevicePreviewSourceEmailDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'to',
    'cc',
    'bcc',
  };
}

