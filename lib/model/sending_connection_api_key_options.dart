//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SendingConnectionApiKeyOptions {
  /// Returns a new [SendingConnectionApiKeyOptions] instance.
  SendingConnectionApiKeyOptions({
    required this.apiKey,
    this.sendingDomain,
    this.region,
  });

  String apiKey;

  String? sendingDomain;

  SendingConnectionApiKeyOptionsRegionEnum? region;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendingConnectionApiKeyOptions &&
     other.apiKey == apiKey &&
     other.sendingDomain == sendingDomain &&
     other.region == region;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (apiKey.hashCode) +
    (sendingDomain == null ? 0 : sendingDomain!.hashCode) +
    (region == null ? 0 : region!.hashCode);

  @override
  String toString() => 'SendingConnectionApiKeyOptions[apiKey=$apiKey, sendingDomain=$sendingDomain, region=$region]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'apiKey'] = this.apiKey;
    if (this.sendingDomain != null) {
      json[r'sendingDomain'] = this.sendingDomain;
    } else {
      json[r'sendingDomain'] = null;
    }
    if (this.region != null) {
      json[r'region'] = this.region;
    } else {
      json[r'region'] = null;
    }
    return json;
  }

  /// Returns a new [SendingConnectionApiKeyOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendingConnectionApiKeyOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SendingConnectionApiKeyOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SendingConnectionApiKeyOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SendingConnectionApiKeyOptions(
        apiKey: mapValueOfType<String>(json, r'apiKey')!,
        sendingDomain: mapValueOfType<String>(json, r'sendingDomain'),
        region: SendingConnectionApiKeyOptionsRegionEnum.fromJson(json[r'region']),
      );
    }
    return null;
  }

  static List<SendingConnectionApiKeyOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingConnectionApiKeyOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingConnectionApiKeyOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendingConnectionApiKeyOptions> mapFromJson(dynamic json) {
    final map = <String, SendingConnectionApiKeyOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendingConnectionApiKeyOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendingConnectionApiKeyOptions-objects as value to a dart map
  static Map<String, List<SendingConnectionApiKeyOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SendingConnectionApiKeyOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SendingConnectionApiKeyOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'apiKey',
  };
}


class SendingConnectionApiKeyOptionsRegionEnum {
  /// Instantiate a new enum with the provided [value].
  const SendingConnectionApiKeyOptionsRegionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const US = SendingConnectionApiKeyOptionsRegionEnum._(r'US');
  static const EU = SendingConnectionApiKeyOptionsRegionEnum._(r'EU');

  /// List of all possible values in this [enum][SendingConnectionApiKeyOptionsRegionEnum].
  static const values = <SendingConnectionApiKeyOptionsRegionEnum>[
    US,
    EU,
  ];

  static SendingConnectionApiKeyOptionsRegionEnum? fromJson(dynamic value) => SendingConnectionApiKeyOptionsRegionEnumTypeTransformer().decode(value);

  static List<SendingConnectionApiKeyOptionsRegionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingConnectionApiKeyOptionsRegionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingConnectionApiKeyOptionsRegionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SendingConnectionApiKeyOptionsRegionEnum] to String,
/// and [decode] dynamic data back to [SendingConnectionApiKeyOptionsRegionEnum].
class SendingConnectionApiKeyOptionsRegionEnumTypeTransformer {
  factory SendingConnectionApiKeyOptionsRegionEnumTypeTransformer() => _instance ??= const SendingConnectionApiKeyOptionsRegionEnumTypeTransformer._();

  const SendingConnectionApiKeyOptionsRegionEnumTypeTransformer._();

  String encode(SendingConnectionApiKeyOptionsRegionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SendingConnectionApiKeyOptionsRegionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SendingConnectionApiKeyOptionsRegionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'US': return SendingConnectionApiKeyOptionsRegionEnum.US;
        case r'EU': return SendingConnectionApiKeyOptionsRegionEnum.EU;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SendingConnectionApiKeyOptionsRegionEnumTypeTransformer] instance.
  static SendingConnectionApiKeyOptionsRegionEnumTypeTransformer? _instance;
}


