//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SmsMatchOption {
  /// Returns a new [SmsMatchOption] instance.
  SmsMatchOption({
    required this.field,
    required this.should,
    required this.value,
  });

  /// Fields of an SMS object that can be used to filter results
  SmsMatchOptionFieldEnum field;

  /// How the value of the email field specified should be compared to the value given in the match options.
  SmsMatchOptionShouldEnum should;

  /// The value you wish to compare with the value of the field specified using the `should` value passed. For example `BODY` should `CONTAIN` a value passed.
  String value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SmsMatchOption &&
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
  String toString() => 'SmsMatchOption[field=$field, should=$should, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'field'] = this.field;
      json[r'should'] = this.should;
      json[r'value'] = this.value;
    return json;
  }

  /// Returns a new [SmsMatchOption] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SmsMatchOption? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SmsMatchOption[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SmsMatchOption[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SmsMatchOption(
        field: SmsMatchOptionFieldEnum.fromJson(json[r'field'])!,
        should: SmsMatchOptionShouldEnum.fromJson(json[r'should'])!,
        value: mapValueOfType<String>(json, r'value')!,
      );
    }
    return null;
  }

  static List<SmsMatchOption> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SmsMatchOption>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SmsMatchOption.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SmsMatchOption> mapFromJson(dynamic json) {
    final map = <String, SmsMatchOption>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SmsMatchOption.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SmsMatchOption-objects as value to a dart map
  static Map<String, List<SmsMatchOption>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SmsMatchOption>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SmsMatchOption.listFromJson(entry.value, growable: growable,);
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

/// Fields of an SMS object that can be used to filter results
class SmsMatchOptionFieldEnum {
  /// Instantiate a new enum with the provided [value].
  const SmsMatchOptionFieldEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const BODY = SmsMatchOptionFieldEnum._(r'BODY');
  static const FROM = SmsMatchOptionFieldEnum._(r'FROM');

  /// List of all possible values in this [enum][SmsMatchOptionFieldEnum].
  static const values = <SmsMatchOptionFieldEnum>[
    BODY,
    FROM,
  ];

  static SmsMatchOptionFieldEnum? fromJson(dynamic value) => SmsMatchOptionFieldEnumTypeTransformer().decode(value);

  static List<SmsMatchOptionFieldEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SmsMatchOptionFieldEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SmsMatchOptionFieldEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SmsMatchOptionFieldEnum] to String,
/// and [decode] dynamic data back to [SmsMatchOptionFieldEnum].
class SmsMatchOptionFieldEnumTypeTransformer {
  factory SmsMatchOptionFieldEnumTypeTransformer() => _instance ??= const SmsMatchOptionFieldEnumTypeTransformer._();

  const SmsMatchOptionFieldEnumTypeTransformer._();

  String encode(SmsMatchOptionFieldEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SmsMatchOptionFieldEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SmsMatchOptionFieldEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'BODY': return SmsMatchOptionFieldEnum.BODY;
        case r'FROM': return SmsMatchOptionFieldEnum.FROM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SmsMatchOptionFieldEnumTypeTransformer] instance.
  static SmsMatchOptionFieldEnumTypeTransformer? _instance;
}


/// How the value of the email field specified should be compared to the value given in the match options.
class SmsMatchOptionShouldEnum {
  /// Instantiate a new enum with the provided [value].
  const SmsMatchOptionShouldEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MATCH = SmsMatchOptionShouldEnum._(r'MATCH');
  static const CONTAIN = SmsMatchOptionShouldEnum._(r'CONTAIN');
  static const EQUAL = SmsMatchOptionShouldEnum._(r'EQUAL');

  /// List of all possible values in this [enum][SmsMatchOptionShouldEnum].
  static const values = <SmsMatchOptionShouldEnum>[
    MATCH,
    CONTAIN,
    EQUAL,
  ];

  static SmsMatchOptionShouldEnum? fromJson(dynamic value) => SmsMatchOptionShouldEnumTypeTransformer().decode(value);

  static List<SmsMatchOptionShouldEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SmsMatchOptionShouldEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SmsMatchOptionShouldEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SmsMatchOptionShouldEnum] to String,
/// and [decode] dynamic data back to [SmsMatchOptionShouldEnum].
class SmsMatchOptionShouldEnumTypeTransformer {
  factory SmsMatchOptionShouldEnumTypeTransformer() => _instance ??= const SmsMatchOptionShouldEnumTypeTransformer._();

  const SmsMatchOptionShouldEnumTypeTransformer._();

  String encode(SmsMatchOptionShouldEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SmsMatchOptionShouldEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SmsMatchOptionShouldEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MATCH': return SmsMatchOptionShouldEnum.MATCH;
        case r'CONTAIN': return SmsMatchOptionShouldEnum.CONTAIN;
        case r'EQUAL': return SmsMatchOptionShouldEnum.EQUAL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SmsMatchOptionShouldEnumTypeTransformer] instance.
  static SmsMatchOptionShouldEnumTypeTransformer? _instance;
}


