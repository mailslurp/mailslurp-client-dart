//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ImportEmailOptions {
  /// Returns a new [ImportEmailOptions] instance.
  ImportEmailOptions({
    required this.rawEmailBase64,
    this.externalId,
    this.runPipeline = false,
    this.overrideMessageId = true,
  });

  /// Base64 encoded RFC822/MIME email contents. This should be the full raw email including headers and body, such as the bytes from an `.eml` file.
  String rawEmailBase64;

  /// Optional external identifier for the imported email source. Useful for correlating imports back to another system.
  String? externalId;

  /// When true the normal inbound receive pipeline runs after persistence, including automations, webhooks, transformers, forwarders, repliers, and related fanout. When false the email is stored only.
  bool? runPipeline;

  /// When true MailSlurp rewrites the MIME `Message-ID` header before storing and parsing the email so imported messages do not collide with existing message identities.
  bool? overrideMessageId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImportEmailOptions &&
     other.rawEmailBase64 == rawEmailBase64 &&
     other.externalId == externalId &&
     other.runPipeline == runPipeline &&
     other.overrideMessageId == overrideMessageId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (rawEmailBase64.hashCode) +
    (externalId == null ? 0 : externalId!.hashCode) +
    (runPipeline == null ? 0 : runPipeline!.hashCode) +
    (overrideMessageId == null ? 0 : overrideMessageId!.hashCode);

  @override
  String toString() => 'ImportEmailOptions[rawEmailBase64=$rawEmailBase64, externalId=$externalId, runPipeline=$runPipeline, overrideMessageId=$overrideMessageId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'rawEmailBase64'] = this.rawEmailBase64;
    if (this.externalId != null) {
      json[r'externalId'] = this.externalId;
    } else {
      json[r'externalId'] = null;
    }
    if (this.runPipeline != null) {
      json[r'runPipeline'] = this.runPipeline;
    } else {
      json[r'runPipeline'] = null;
    }
    if (this.overrideMessageId != null) {
      json[r'overrideMessageId'] = this.overrideMessageId;
    } else {
      json[r'overrideMessageId'] = null;
    }
    return json;
  }

  /// Returns a new [ImportEmailOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImportEmailOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImportEmailOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImportEmailOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImportEmailOptions(
        rawEmailBase64: mapValueOfType<String>(json, r'rawEmailBase64')!,
        externalId: mapValueOfType<String>(json, r'externalId'),
        runPipeline: mapValueOfType<bool>(json, r'runPipeline') ?? false,
        overrideMessageId: mapValueOfType<bool>(json, r'overrideMessageId') ?? true,
      );
    }
    return null;
  }

  static List<ImportEmailOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImportEmailOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImportEmailOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImportEmailOptions> mapFromJson(dynamic json) {
    final map = <String, ImportEmailOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImportEmailOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImportEmailOptions-objects as value to a dart map
  static Map<String, List<ImportEmailOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImportEmailOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImportEmailOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'rawEmailBase64',
  };
}

