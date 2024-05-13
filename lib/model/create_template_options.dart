//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateTemplateOptions {
  /// Returns a new [CreateTemplateOptions] instance.
  CreateTemplateOptions({
    required this.name,
    required this.content,
  });

  /// Name of template
  String name;

  /// Template content. Can include moustache style variables such as {{var_name}}
  String content;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateTemplateOptions &&
     other.name == name &&
     other.content == content;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (content.hashCode);

  @override
  String toString() => 'CreateTemplateOptions[name=$name, content=$content]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'content'] = this.content;
    return json;
  }

  /// Returns a new [CreateTemplateOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateTemplateOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateTemplateOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateTemplateOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateTemplateOptions(
        name: mapValueOfType<String>(json, r'name')!,
        content: mapValueOfType<String>(json, r'content')!,
      );
    }
    return null;
  }

  static List<CreateTemplateOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateTemplateOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateTemplateOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateTemplateOptions> mapFromJson(dynamic json) {
    final map = <String, CreateTemplateOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateTemplateOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateTemplateOptions-objects as value to a dart map
  static Map<String, List<CreateTemplateOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateTemplateOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateTemplateOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'content',
  };
}

