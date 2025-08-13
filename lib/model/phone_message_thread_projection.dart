//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PhoneMessageThreadProjection {
  /// Returns a new [PhoneMessageThreadProjection] instance.
  PhoneMessageThreadProjection({
    this.otherPhoneNumber,
    required this.lastMessageDirection,
    required this.lastBody,
    required this.lastCreated,
    this.phoneNumber,
    required this.phoneNumberId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? otherPhoneNumber;

  PhoneMessageThreadProjectionLastMessageDirectionEnum lastMessageDirection;

  String lastBody;

  DateTime lastCreated;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phoneNumber;

  String phoneNumberId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PhoneMessageThreadProjection &&
     other.otherPhoneNumber == otherPhoneNumber &&
     other.lastMessageDirection == lastMessageDirection &&
     other.lastBody == lastBody &&
     other.lastCreated == lastCreated &&
     other.phoneNumber == phoneNumber &&
     other.phoneNumberId == phoneNumberId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (otherPhoneNumber == null ? 0 : otherPhoneNumber!.hashCode) +
    (lastMessageDirection.hashCode) +
    (lastBody.hashCode) +
    (lastCreated.hashCode) +
    (phoneNumber == null ? 0 : phoneNumber!.hashCode) +
    (phoneNumberId.hashCode);

  @override
  String toString() => 'PhoneMessageThreadProjection[otherPhoneNumber=$otherPhoneNumber, lastMessageDirection=$lastMessageDirection, lastBody=$lastBody, lastCreated=$lastCreated, phoneNumber=$phoneNumber, phoneNumberId=$phoneNumberId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.otherPhoneNumber != null) {
      json[r'otherPhoneNumber'] = this.otherPhoneNumber;
    } else {
      json[r'otherPhoneNumber'] = null;
    }
      json[r'lastMessageDirection'] = this.lastMessageDirection;
      json[r'lastBody'] = this.lastBody;
      json[r'lastCreated'] = this.lastCreated.toUtc().toIso8601String();
    if (this.phoneNumber != null) {
      json[r'phoneNumber'] = this.phoneNumber;
    } else {
      json[r'phoneNumber'] = null;
    }
      json[r'phoneNumberId'] = this.phoneNumberId;
    return json;
  }

  /// Returns a new [PhoneMessageThreadProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PhoneMessageThreadProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PhoneMessageThreadProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PhoneMessageThreadProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PhoneMessageThreadProjection(
        otherPhoneNumber: mapValueOfType<String>(json, r'otherPhoneNumber'),
        lastMessageDirection: PhoneMessageThreadProjectionLastMessageDirectionEnum.fromJson(json[r'lastMessageDirection'])!,
        lastBody: mapValueOfType<String>(json, r'lastBody')!,
        lastCreated: mapDateTime(json, r'lastCreated', '')!,
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber'),
        phoneNumberId: mapValueOfType<String>(json, r'phoneNumberId')!,
      );
    }
    return null;
  }

  static List<PhoneMessageThreadProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhoneMessageThreadProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhoneMessageThreadProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PhoneMessageThreadProjection> mapFromJson(dynamic json) {
    final map = <String, PhoneMessageThreadProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PhoneMessageThreadProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PhoneMessageThreadProjection-objects as value to a dart map
  static Map<String, List<PhoneMessageThreadProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PhoneMessageThreadProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PhoneMessageThreadProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'lastMessageDirection',
    'lastBody',
    'lastCreated',
    'phoneNumberId',
  };
}


class PhoneMessageThreadProjectionLastMessageDirectionEnum {
  /// Instantiate a new enum with the provided [value].
  const PhoneMessageThreadProjectionLastMessageDirectionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const OUTBOUND = PhoneMessageThreadProjectionLastMessageDirectionEnum._(r'OUTBOUND');
  static const INBOUND = PhoneMessageThreadProjectionLastMessageDirectionEnum._(r'INBOUND');

  /// List of all possible values in this [enum][PhoneMessageThreadProjectionLastMessageDirectionEnum].
  static const values = <PhoneMessageThreadProjectionLastMessageDirectionEnum>[
    OUTBOUND,
    INBOUND,
  ];

  static PhoneMessageThreadProjectionLastMessageDirectionEnum? fromJson(dynamic value) => PhoneMessageThreadProjectionLastMessageDirectionEnumTypeTransformer().decode(value);

  static List<PhoneMessageThreadProjectionLastMessageDirectionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhoneMessageThreadProjectionLastMessageDirectionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhoneMessageThreadProjectionLastMessageDirectionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PhoneMessageThreadProjectionLastMessageDirectionEnum] to String,
/// and [decode] dynamic data back to [PhoneMessageThreadProjectionLastMessageDirectionEnum].
class PhoneMessageThreadProjectionLastMessageDirectionEnumTypeTransformer {
  factory PhoneMessageThreadProjectionLastMessageDirectionEnumTypeTransformer() => _instance ??= const PhoneMessageThreadProjectionLastMessageDirectionEnumTypeTransformer._();

  const PhoneMessageThreadProjectionLastMessageDirectionEnumTypeTransformer._();

  String encode(PhoneMessageThreadProjectionLastMessageDirectionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PhoneMessageThreadProjectionLastMessageDirectionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PhoneMessageThreadProjectionLastMessageDirectionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'OUTBOUND': return PhoneMessageThreadProjectionLastMessageDirectionEnum.OUTBOUND;
        case r'INBOUND': return PhoneMessageThreadProjectionLastMessageDirectionEnum.INBOUND;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PhoneMessageThreadProjectionLastMessageDirectionEnumTypeTransformer] instance.
  static PhoneMessageThreadProjectionLastMessageDirectionEnumTypeTransformer? _instance;
}


