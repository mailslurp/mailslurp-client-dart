//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MatchOption {
  /// Returns a new [MatchOption] instance.
  MatchOption({
    required this.field,
    required this.should,
    required this.value,
  });

  /// Fields of an email object that can be used to filter results
  MatchOptionFieldEnum field;

  /// How the value of the email field specified should be compared to the value given in the match options.
  MatchOptionShouldEnum should;

  /// The value you wish to compare with the value of the field specified using the `should` value passed. For example `BODY` should `CONTAIN` a value passed.
  String value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MatchOption &&
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
  String toString() => 'MatchOption[field=$field, should=$should, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'field'] = this.field;
      json[r'should'] = this.should;
      json[r'value'] = this.value;
    return json;
  }

  /// Returns a new [MatchOption] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MatchOption? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MatchOption[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MatchOption[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MatchOption(
        field: MatchOptionFieldEnum.fromJson(json[r'field'])!,
        should: MatchOptionShouldEnum.fromJson(json[r'should'])!,
        value: mapValueOfType<String>(json, r'value')!,
      );
    }
    return null;
  }

  static List<MatchOption> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MatchOption>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MatchOption.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MatchOption> mapFromJson(dynamic json) {
    final map = <String, MatchOption>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MatchOption.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MatchOption-objects as value to a dart map
  static Map<String, List<MatchOption>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MatchOption>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MatchOption.listFromJson(entry.value, growable: growable,);
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

/// Fields of an email object that can be used to filter results
class MatchOptionFieldEnum {
  /// Instantiate a new enum with the provided [value].
  const MatchOptionFieldEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SUBJECT = MatchOptionFieldEnum._(r'SUBJECT');
  static const TO = MatchOptionFieldEnum._(r'TO');
  static const BCC = MatchOptionFieldEnum._(r'BCC');
  static const CC = MatchOptionFieldEnum._(r'CC');
  static const FROM = MatchOptionFieldEnum._(r'FROM');
  static const HEADERS = MatchOptionFieldEnum._(r'HEADERS');

  /// List of all possible values in this [enum][MatchOptionFieldEnum].
  static const values = <MatchOptionFieldEnum>[
    SUBJECT,
    TO,
    BCC,
    CC,
    FROM,
    HEADERS,
  ];

  static MatchOptionFieldEnum? fromJson(dynamic value) => MatchOptionFieldEnumTypeTransformer().decode(value);

  static List<MatchOptionFieldEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MatchOptionFieldEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MatchOptionFieldEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MatchOptionFieldEnum] to String,
/// and [decode] dynamic data back to [MatchOptionFieldEnum].
class MatchOptionFieldEnumTypeTransformer {
  factory MatchOptionFieldEnumTypeTransformer() => _instance ??= const MatchOptionFieldEnumTypeTransformer._();

  const MatchOptionFieldEnumTypeTransformer._();

  String encode(MatchOptionFieldEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MatchOptionFieldEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MatchOptionFieldEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SUBJECT': return MatchOptionFieldEnum.SUBJECT;
        case r'TO': return MatchOptionFieldEnum.TO;
        case r'BCC': return MatchOptionFieldEnum.BCC;
        case r'CC': return MatchOptionFieldEnum.CC;
        case r'FROM': return MatchOptionFieldEnum.FROM;
        case r'HEADERS': return MatchOptionFieldEnum.HEADERS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MatchOptionFieldEnumTypeTransformer] instance.
  static MatchOptionFieldEnumTypeTransformer? _instance;
}


/// How the value of the email field specified should be compared to the value given in the match options.
class MatchOptionShouldEnum {
  /// Instantiate a new enum with the provided [value].
  const MatchOptionShouldEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MATCH = MatchOptionShouldEnum._(r'MATCH');
  static const CONTAIN = MatchOptionShouldEnum._(r'CONTAIN');
  static const EQUAL = MatchOptionShouldEnum._(r'EQUAL');

  /// List of all possible values in this [enum][MatchOptionShouldEnum].
  static const values = <MatchOptionShouldEnum>[
    MATCH,
    CONTAIN,
    EQUAL,
  ];

  static MatchOptionShouldEnum? fromJson(dynamic value) => MatchOptionShouldEnumTypeTransformer().decode(value);

  static List<MatchOptionShouldEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MatchOptionShouldEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MatchOptionShouldEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MatchOptionShouldEnum] to String,
/// and [decode] dynamic data back to [MatchOptionShouldEnum].
class MatchOptionShouldEnumTypeTransformer {
  factory MatchOptionShouldEnumTypeTransformer() => _instance ??= const MatchOptionShouldEnumTypeTransformer._();

  const MatchOptionShouldEnumTypeTransformer._();

  String encode(MatchOptionShouldEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MatchOptionShouldEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MatchOptionShouldEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MATCH': return MatchOptionShouldEnum.MATCH;
        case r'CONTAIN': return MatchOptionShouldEnum.CONTAIN;
        case r'EQUAL': return MatchOptionShouldEnum.EQUAL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MatchOptionShouldEnumTypeTransformer] instance.
  static MatchOptionShouldEnumTypeTransformer? _instance;
}


