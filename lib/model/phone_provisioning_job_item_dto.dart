//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PhoneProvisioningJobItemDto {
  /// Returns a new [PhoneProvisioningJobItemDto] instance.
  PhoneProvisioningJobItemDto({
    required this.id,
    required this.phoneNumber,
    this.providerLabel,
    required this.status,
    this.lineType,
    this.carrierName,
    this.mobileCountryCode,
    this.mobileNetworkCode,
    this.phoneNumberId,
    this.failureMessage,
  });

  String id;

  String phoneNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? providerLabel;

  PhoneProvisioningJobItemDtoStatusEnum status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lineType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? carrierName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mobileCountryCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mobileNetworkCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phoneNumberId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? failureMessage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PhoneProvisioningJobItemDto &&
     other.id == id &&
     other.phoneNumber == phoneNumber &&
     other.providerLabel == providerLabel &&
     other.status == status &&
     other.lineType == lineType &&
     other.carrierName == carrierName &&
     other.mobileCountryCode == mobileCountryCode &&
     other.mobileNetworkCode == mobileNetworkCode &&
     other.phoneNumberId == phoneNumberId &&
     other.failureMessage == failureMessage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (phoneNumber.hashCode) +
    (providerLabel == null ? 0 : providerLabel!.hashCode) +
    (status.hashCode) +
    (lineType == null ? 0 : lineType!.hashCode) +
    (carrierName == null ? 0 : carrierName!.hashCode) +
    (mobileCountryCode == null ? 0 : mobileCountryCode!.hashCode) +
    (mobileNetworkCode == null ? 0 : mobileNetworkCode!.hashCode) +
    (phoneNumberId == null ? 0 : phoneNumberId!.hashCode) +
    (failureMessage == null ? 0 : failureMessage!.hashCode);

  @override
  String toString() => 'PhoneProvisioningJobItemDto[id=$id, phoneNumber=$phoneNumber, providerLabel=$providerLabel, status=$status, lineType=$lineType, carrierName=$carrierName, mobileCountryCode=$mobileCountryCode, mobileNetworkCode=$mobileNetworkCode, phoneNumberId=$phoneNumberId, failureMessage=$failureMessage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'phoneNumber'] = this.phoneNumber;
    if (this.providerLabel != null) {
      json[r'providerLabel'] = this.providerLabel;
    } else {
      json[r'providerLabel'] = null;
    }
      json[r'status'] = this.status;
    if (this.lineType != null) {
      json[r'lineType'] = this.lineType;
    } else {
      json[r'lineType'] = null;
    }
    if (this.carrierName != null) {
      json[r'carrierName'] = this.carrierName;
    } else {
      json[r'carrierName'] = null;
    }
    if (this.mobileCountryCode != null) {
      json[r'mobileCountryCode'] = this.mobileCountryCode;
    } else {
      json[r'mobileCountryCode'] = null;
    }
    if (this.mobileNetworkCode != null) {
      json[r'mobileNetworkCode'] = this.mobileNetworkCode;
    } else {
      json[r'mobileNetworkCode'] = null;
    }
    if (this.phoneNumberId != null) {
      json[r'phoneNumberId'] = this.phoneNumberId;
    } else {
      json[r'phoneNumberId'] = null;
    }
    if (this.failureMessage != null) {
      json[r'failureMessage'] = this.failureMessage;
    } else {
      json[r'failureMessage'] = null;
    }
    return json;
  }

  /// Returns a new [PhoneProvisioningJobItemDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PhoneProvisioningJobItemDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PhoneProvisioningJobItemDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PhoneProvisioningJobItemDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PhoneProvisioningJobItemDto(
        id: mapValueOfType<String>(json, r'id')!,
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber')!,
        providerLabel: mapValueOfType<String>(json, r'providerLabel'),
        status: PhoneProvisioningJobItemDtoStatusEnum.fromJson(json[r'status'])!,
        lineType: mapValueOfType<String>(json, r'lineType'),
        carrierName: mapValueOfType<String>(json, r'carrierName'),
        mobileCountryCode: mapValueOfType<String>(json, r'mobileCountryCode'),
        mobileNetworkCode: mapValueOfType<String>(json, r'mobileNetworkCode'),
        phoneNumberId: mapValueOfType<String>(json, r'phoneNumberId'),
        failureMessage: mapValueOfType<String>(json, r'failureMessage'),
      );
    }
    return null;
  }

  static List<PhoneProvisioningJobItemDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhoneProvisioningJobItemDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhoneProvisioningJobItemDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PhoneProvisioningJobItemDto> mapFromJson(dynamic json) {
    final map = <String, PhoneProvisioningJobItemDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PhoneProvisioningJobItemDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PhoneProvisioningJobItemDto-objects as value to a dart map
  static Map<String, List<PhoneProvisioningJobItemDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PhoneProvisioningJobItemDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PhoneProvisioningJobItemDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'phoneNumber',
    'status',
  };
}


class PhoneProvisioningJobItemDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const PhoneProvisioningJobItemDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PENDING = PhoneProvisioningJobItemDtoStatusEnum._(r'PENDING');
  static const PROVISIONING = PhoneProvisioningJobItemDtoStatusEnum._(r'PROVISIONING');
  static const PROVISIONED = PhoneProvisioningJobItemDtoStatusEnum._(r'PROVISIONED');
  static const UNAVAILABLE = PhoneProvisioningJobItemDtoStatusEnum._(r'UNAVAILABLE');
  static const FAILED = PhoneProvisioningJobItemDtoStatusEnum._(r'FAILED');

  /// List of all possible values in this [enum][PhoneProvisioningJobItemDtoStatusEnum].
  static const values = <PhoneProvisioningJobItemDtoStatusEnum>[
    PENDING,
    PROVISIONING,
    PROVISIONED,
    UNAVAILABLE,
    FAILED,
  ];

  static PhoneProvisioningJobItemDtoStatusEnum? fromJson(dynamic value) => PhoneProvisioningJobItemDtoStatusEnumTypeTransformer().decode(value);

  static List<PhoneProvisioningJobItemDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhoneProvisioningJobItemDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhoneProvisioningJobItemDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PhoneProvisioningJobItemDtoStatusEnum] to String,
/// and [decode] dynamic data back to [PhoneProvisioningJobItemDtoStatusEnum].
class PhoneProvisioningJobItemDtoStatusEnumTypeTransformer {
  factory PhoneProvisioningJobItemDtoStatusEnumTypeTransformer() => _instance ??= const PhoneProvisioningJobItemDtoStatusEnumTypeTransformer._();

  const PhoneProvisioningJobItemDtoStatusEnumTypeTransformer._();

  String encode(PhoneProvisioningJobItemDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PhoneProvisioningJobItemDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PhoneProvisioningJobItemDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PENDING': return PhoneProvisioningJobItemDtoStatusEnum.PENDING;
        case r'PROVISIONING': return PhoneProvisioningJobItemDtoStatusEnum.PROVISIONING;
        case r'PROVISIONED': return PhoneProvisioningJobItemDtoStatusEnum.PROVISIONED;
        case r'UNAVAILABLE': return PhoneProvisioningJobItemDtoStatusEnum.UNAVAILABLE;
        case r'FAILED': return PhoneProvisioningJobItemDtoStatusEnum.FAILED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PhoneProvisioningJobItemDtoStatusEnumTypeTransformer] instance.
  static PhoneProvisioningJobItemDtoStatusEnumTypeTransformer? _instance;
}


