//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PhoneMessageThreadItemProjection {
  /// Returns a new [PhoneMessageThreadItemProjection] instance.
  PhoneMessageThreadItemProjection({
    required this.body,
    required this.phoneNumberId,
    required this.created,
    required this.messageDirection,
    required this.toPhoneNumber,
    required this.fromPhoneNumber,
  });

  String body;

  String phoneNumberId;

  DateTime created;

  PhoneMessageThreadItemProjectionMessageDirectionEnum messageDirection;

  String toPhoneNumber;

  String fromPhoneNumber;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PhoneMessageThreadItemProjection &&
     other.body == body &&
     other.phoneNumberId == phoneNumberId &&
     other.created == created &&
     other.messageDirection == messageDirection &&
     other.toPhoneNumber == toPhoneNumber &&
     other.fromPhoneNumber == fromPhoneNumber;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (body.hashCode) +
    (phoneNumberId.hashCode) +
    (created.hashCode) +
    (messageDirection.hashCode) +
    (toPhoneNumber.hashCode) +
    (fromPhoneNumber.hashCode);

  @override
  String toString() => 'PhoneMessageThreadItemProjection[body=$body, phoneNumberId=$phoneNumberId, created=$created, messageDirection=$messageDirection, toPhoneNumber=$toPhoneNumber, fromPhoneNumber=$fromPhoneNumber]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'body'] = this.body;
      json[r'phoneNumberId'] = this.phoneNumberId;
      json[r'created'] = this.created.toUtc().toIso8601String();
      json[r'messageDirection'] = this.messageDirection;
      json[r'toPhoneNumber'] = this.toPhoneNumber;
      json[r'fromPhoneNumber'] = this.fromPhoneNumber;
    return json;
  }

  /// Returns a new [PhoneMessageThreadItemProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PhoneMessageThreadItemProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PhoneMessageThreadItemProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PhoneMessageThreadItemProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PhoneMessageThreadItemProjection(
        body: mapValueOfType<String>(json, r'body')!,
        phoneNumberId: mapValueOfType<String>(json, r'phoneNumberId')!,
        created: mapDateTime(json, r'created', '')!,
        messageDirection: PhoneMessageThreadItemProjectionMessageDirectionEnum.fromJson(json[r'messageDirection'])!,
        toPhoneNumber: mapValueOfType<String>(json, r'toPhoneNumber')!,
        fromPhoneNumber: mapValueOfType<String>(json, r'fromPhoneNumber')!,
      );
    }
    return null;
  }

  static List<PhoneMessageThreadItemProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhoneMessageThreadItemProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhoneMessageThreadItemProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PhoneMessageThreadItemProjection> mapFromJson(dynamic json) {
    final map = <String, PhoneMessageThreadItemProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PhoneMessageThreadItemProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PhoneMessageThreadItemProjection-objects as value to a dart map
  static Map<String, List<PhoneMessageThreadItemProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PhoneMessageThreadItemProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PhoneMessageThreadItemProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'body',
    'phoneNumberId',
    'created',
    'messageDirection',
    'toPhoneNumber',
    'fromPhoneNumber',
  };
}


class PhoneMessageThreadItemProjectionMessageDirectionEnum {
  /// Instantiate a new enum with the provided [value].
  const PhoneMessageThreadItemProjectionMessageDirectionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const OUTBOUND = PhoneMessageThreadItemProjectionMessageDirectionEnum._(r'OUTBOUND');
  static const INBOUND = PhoneMessageThreadItemProjectionMessageDirectionEnum._(r'INBOUND');

  /// List of all possible values in this [enum][PhoneMessageThreadItemProjectionMessageDirectionEnum].
  static const values = <PhoneMessageThreadItemProjectionMessageDirectionEnum>[
    OUTBOUND,
    INBOUND,
  ];

  static PhoneMessageThreadItemProjectionMessageDirectionEnum? fromJson(dynamic value) => PhoneMessageThreadItemProjectionMessageDirectionEnumTypeTransformer().decode(value);

  static List<PhoneMessageThreadItemProjectionMessageDirectionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhoneMessageThreadItemProjectionMessageDirectionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhoneMessageThreadItemProjectionMessageDirectionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PhoneMessageThreadItemProjectionMessageDirectionEnum] to String,
/// and [decode] dynamic data back to [PhoneMessageThreadItemProjectionMessageDirectionEnum].
class PhoneMessageThreadItemProjectionMessageDirectionEnumTypeTransformer {
  factory PhoneMessageThreadItemProjectionMessageDirectionEnumTypeTransformer() => _instance ??= const PhoneMessageThreadItemProjectionMessageDirectionEnumTypeTransformer._();

  const PhoneMessageThreadItemProjectionMessageDirectionEnumTypeTransformer._();

  String encode(PhoneMessageThreadItemProjectionMessageDirectionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PhoneMessageThreadItemProjectionMessageDirectionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PhoneMessageThreadItemProjectionMessageDirectionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'OUTBOUND': return PhoneMessageThreadItemProjectionMessageDirectionEnum.OUTBOUND;
        case r'INBOUND': return PhoneMessageThreadItemProjectionMessageDirectionEnum.INBOUND;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PhoneMessageThreadItemProjectionMessageDirectionEnumTypeTransformer] instance.
  static PhoneMessageThreadItemProjectionMessageDirectionEnumTypeTransformer? _instance;
}


