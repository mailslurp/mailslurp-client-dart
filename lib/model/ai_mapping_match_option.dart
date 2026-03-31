//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AIMappingMatchOption {
  /// Returns a new [AIMappingMatchOption] instance.
  AIMappingMatchOption({
    required this.field,
    required this.should,
    required this.value,
  });

  /// Fields of an email, sms, or attachment object that can be used to filter results
  AIMappingMatchOptionFieldEnum field;

  /// How the value of the field specified should be compared to the value given in the match options.
  AIMappingMatchOptionShouldEnum should;

  /// The value you wish to compare with the value of the field specified using the `should` value passed. For example `BODY` should `CONTAIN` a value passed. When should value is `MATCH` pass a regex
  String value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AIMappingMatchOption &&
     other.field == field &&
     other.should == should &&
     other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (field.hashCode) +
    (should.hashCode) +
    (value.hashCode);

  @override
  String toString() => 'AIMappingMatchOption[field=$field, should=$should, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'field'] = this.field;
      json[r'should'] = this.should;
      json[r'value'] = this.value;
    return json;
  }

  /// Returns a new [AIMappingMatchOption] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AIMappingMatchOption? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AIMappingMatchOption[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AIMappingMatchOption[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AIMappingMatchOption(
        field: AIMappingMatchOptionFieldEnum.fromJson(json[r'field'])!,
        should: AIMappingMatchOptionShouldEnum.fromJson(json[r'should'])!,
        value: mapValueOfType<String>(json, r'value')!,
      );
    }
    return null;
  }

  static List<AIMappingMatchOption> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AIMappingMatchOption>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AIMappingMatchOption.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AIMappingMatchOption> mapFromJson(dynamic json) {
    final map = <String, AIMappingMatchOption>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AIMappingMatchOption.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AIMappingMatchOption-objects as value to a dart map
  static Map<String, List<AIMappingMatchOption>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AIMappingMatchOption>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AIMappingMatchOption.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'field',
    'should',
    'value',
  };
}

/// Fields of an email, sms, or attachment object that can be used to filter results
class AIMappingMatchOptionFieldEnum {
  /// Instantiate a new enum with the provided [value].
  const AIMappingMatchOptionFieldEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SUBJECT = AIMappingMatchOptionFieldEnum._(r'SUBJECT');
  static const TO = AIMappingMatchOptionFieldEnum._(r'TO');
  static const BCC = AIMappingMatchOptionFieldEnum._(r'BCC');
  static const CC = AIMappingMatchOptionFieldEnum._(r'CC');
  static const FROM = AIMappingMatchOptionFieldEnum._(r'FROM');
  static const HEADERS = AIMappingMatchOptionFieldEnum._(r'HEADERS');
  static const FILENAME = AIMappingMatchOptionFieldEnum._(r'FILENAME');
  static const SMS = AIMappingMatchOptionFieldEnum._(r'SMS');

  /// List of all possible values in this [enum][AIMappingMatchOptionFieldEnum].
  static const values = <AIMappingMatchOptionFieldEnum>[
    SUBJECT,
    TO,
    BCC,
    CC,
    FROM,
    HEADERS,
    FILENAME,
    SMS,
  ];

  static AIMappingMatchOptionFieldEnum? fromJson(dynamic value) => AIMappingMatchOptionFieldEnumTypeTransformer().decode(value);

  static List<AIMappingMatchOptionFieldEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AIMappingMatchOptionFieldEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AIMappingMatchOptionFieldEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AIMappingMatchOptionFieldEnum] to String,
/// and [decode] dynamic data back to [AIMappingMatchOptionFieldEnum].
class AIMappingMatchOptionFieldEnumTypeTransformer {
  factory AIMappingMatchOptionFieldEnumTypeTransformer() => _instance ??= const AIMappingMatchOptionFieldEnumTypeTransformer._();

  const AIMappingMatchOptionFieldEnumTypeTransformer._();

  String encode(AIMappingMatchOptionFieldEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AIMappingMatchOptionFieldEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AIMappingMatchOptionFieldEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SUBJECT': return AIMappingMatchOptionFieldEnum.SUBJECT;
        case r'TO': return AIMappingMatchOptionFieldEnum.TO;
        case r'BCC': return AIMappingMatchOptionFieldEnum.BCC;
        case r'CC': return AIMappingMatchOptionFieldEnum.CC;
        case r'FROM': return AIMappingMatchOptionFieldEnum.FROM;
        case r'HEADERS': return AIMappingMatchOptionFieldEnum.HEADERS;
        case r'FILENAME': return AIMappingMatchOptionFieldEnum.FILENAME;
        case r'SMS': return AIMappingMatchOptionFieldEnum.SMS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AIMappingMatchOptionFieldEnumTypeTransformer] instance.
  static AIMappingMatchOptionFieldEnumTypeTransformer? _instance;
}


/// How the value of the field specified should be compared to the value given in the match options.
class AIMappingMatchOptionShouldEnum {
  /// Instantiate a new enum with the provided [value].
  const AIMappingMatchOptionShouldEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MATCH = AIMappingMatchOptionShouldEnum._(r'MATCH');
  static const CONTAIN = AIMappingMatchOptionShouldEnum._(r'CONTAIN');
  static const EQUAL = AIMappingMatchOptionShouldEnum._(r'EQUAL');

  /// List of all possible values in this [enum][AIMappingMatchOptionShouldEnum].
  static const values = <AIMappingMatchOptionShouldEnum>[
    MATCH,
    CONTAIN,
    EQUAL,
  ];

  static AIMappingMatchOptionShouldEnum? fromJson(dynamic value) => AIMappingMatchOptionShouldEnumTypeTransformer().decode(value);

  static List<AIMappingMatchOptionShouldEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AIMappingMatchOptionShouldEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AIMappingMatchOptionShouldEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AIMappingMatchOptionShouldEnum] to String,
/// and [decode] dynamic data back to [AIMappingMatchOptionShouldEnum].
class AIMappingMatchOptionShouldEnumTypeTransformer {
  factory AIMappingMatchOptionShouldEnumTypeTransformer() => _instance ??= const AIMappingMatchOptionShouldEnumTypeTransformer._();

  const AIMappingMatchOptionShouldEnumTypeTransformer._();

  String encode(AIMappingMatchOptionShouldEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AIMappingMatchOptionShouldEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AIMappingMatchOptionShouldEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MATCH': return AIMappingMatchOptionShouldEnum.MATCH;
        case r'CONTAIN': return AIMappingMatchOptionShouldEnum.CONTAIN;
        case r'EQUAL': return AIMappingMatchOptionShouldEnum.EQUAL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AIMappingMatchOptionShouldEnumTypeTransformer] instance.
  static AIMappingMatchOptionShouldEnumTypeTransformer? _instance;
}


