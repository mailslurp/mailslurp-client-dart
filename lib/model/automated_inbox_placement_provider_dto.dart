//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AutomatedInboxPlacementProviderDto {
  /// Returns a new [AutomatedInboxPlacementProviderDto] instance.
  AutomatedInboxPlacementProviderDto({
    required this.provider,
    required this.displayName,
    required this.availability,
    required this.credentialType,
  });

  AutomatedInboxPlacementProviderDtoProviderEnum provider;

  String displayName;

  AutomatedInboxPlacementProviderDtoAvailabilityEnum availability;

  String credentialType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AutomatedInboxPlacementProviderDto &&
     other.provider == provider &&
     other.displayName == displayName &&
     other.availability == availability &&
     other.credentialType == credentialType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (provider.hashCode) +
    (displayName.hashCode) +
    (availability.hashCode) +
    (credentialType.hashCode);

  @override
  String toString() => 'AutomatedInboxPlacementProviderDto[provider=$provider, displayName=$displayName, availability=$availability, credentialType=$credentialType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'provider'] = this.provider;
      json[r'displayName'] = this.displayName;
      json[r'availability'] = this.availability;
      json[r'credentialType'] = this.credentialType;
    return json;
  }

  /// Returns a new [AutomatedInboxPlacementProviderDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AutomatedInboxPlacementProviderDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AutomatedInboxPlacementProviderDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AutomatedInboxPlacementProviderDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AutomatedInboxPlacementProviderDto(
        provider: AutomatedInboxPlacementProviderDtoProviderEnum.fromJson(json[r'provider'])!,
        displayName: mapValueOfType<String>(json, r'displayName')!,
        availability: AutomatedInboxPlacementProviderDtoAvailabilityEnum.fromJson(json[r'availability'])!,
        credentialType: mapValueOfType<String>(json, r'credentialType')!,
      );
    }
    return null;
  }

  static List<AutomatedInboxPlacementProviderDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AutomatedInboxPlacementProviderDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AutomatedInboxPlacementProviderDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AutomatedInboxPlacementProviderDto> mapFromJson(dynamic json) {
    final map = <String, AutomatedInboxPlacementProviderDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AutomatedInboxPlacementProviderDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AutomatedInboxPlacementProviderDto-objects as value to a dart map
  static Map<String, List<AutomatedInboxPlacementProviderDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AutomatedInboxPlacementProviderDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AutomatedInboxPlacementProviderDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'provider',
    'displayName',
    'availability',
    'credentialType',
  };
}


class AutomatedInboxPlacementProviderDtoProviderEnum {
  /// Instantiate a new enum with the provided [value].
  const AutomatedInboxPlacementProviderDtoProviderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SMTP = AutomatedInboxPlacementProviderDtoProviderEnum._(r'SMTP');
  static const AMAZON_SES = AutomatedInboxPlacementProviderDtoProviderEnum._(r'AMAZON_SES');
  static const SENDGRID = AutomatedInboxPlacementProviderDtoProviderEnum._(r'SENDGRID');
  static const RESEND = AutomatedInboxPlacementProviderDtoProviderEnum._(r'RESEND');
  static const MAILGUN = AutomatedInboxPlacementProviderDtoProviderEnum._(r'MAILGUN');
  static const POSTMARK = AutomatedInboxPlacementProviderDtoProviderEnum._(r'POSTMARK');

  /// List of all possible values in this [enum][AutomatedInboxPlacementProviderDtoProviderEnum].
  static const values = <AutomatedInboxPlacementProviderDtoProviderEnum>[
    SMTP,
    AMAZON_SES,
    SENDGRID,
    RESEND,
    MAILGUN,
    POSTMARK,
  ];

  static AutomatedInboxPlacementProviderDtoProviderEnum? fromJson(dynamic value) => AutomatedInboxPlacementProviderDtoProviderEnumTypeTransformer().decode(value);

  static List<AutomatedInboxPlacementProviderDtoProviderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AutomatedInboxPlacementProviderDtoProviderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AutomatedInboxPlacementProviderDtoProviderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AutomatedInboxPlacementProviderDtoProviderEnum] to String,
/// and [decode] dynamic data back to [AutomatedInboxPlacementProviderDtoProviderEnum].
class AutomatedInboxPlacementProviderDtoProviderEnumTypeTransformer {
  factory AutomatedInboxPlacementProviderDtoProviderEnumTypeTransformer() => _instance ??= const AutomatedInboxPlacementProviderDtoProviderEnumTypeTransformer._();

  const AutomatedInboxPlacementProviderDtoProviderEnumTypeTransformer._();

  String encode(AutomatedInboxPlacementProviderDtoProviderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AutomatedInboxPlacementProviderDtoProviderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AutomatedInboxPlacementProviderDtoProviderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SMTP': return AutomatedInboxPlacementProviderDtoProviderEnum.SMTP;
        case r'AMAZON_SES': return AutomatedInboxPlacementProviderDtoProviderEnum.AMAZON_SES;
        case r'SENDGRID': return AutomatedInboxPlacementProviderDtoProviderEnum.SENDGRID;
        case r'RESEND': return AutomatedInboxPlacementProviderDtoProviderEnum.RESEND;
        case r'MAILGUN': return AutomatedInboxPlacementProviderDtoProviderEnum.MAILGUN;
        case r'POSTMARK': return AutomatedInboxPlacementProviderDtoProviderEnum.POSTMARK;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AutomatedInboxPlacementProviderDtoProviderEnumTypeTransformer] instance.
  static AutomatedInboxPlacementProviderDtoProviderEnumTypeTransformer? _instance;
}



class AutomatedInboxPlacementProviderDtoAvailabilityEnum {
  /// Instantiate a new enum with the provided [value].
  const AutomatedInboxPlacementProviderDtoAvailabilityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const AVAILABLE = AutomatedInboxPlacementProviderDtoAvailabilityEnum._(r'AVAILABLE');
  static const PLANNED = AutomatedInboxPlacementProviderDtoAvailabilityEnum._(r'PLANNED');

  /// List of all possible values in this [enum][AutomatedInboxPlacementProviderDtoAvailabilityEnum].
  static const values = <AutomatedInboxPlacementProviderDtoAvailabilityEnum>[
    AVAILABLE,
    PLANNED,
  ];

  static AutomatedInboxPlacementProviderDtoAvailabilityEnum? fromJson(dynamic value) => AutomatedInboxPlacementProviderDtoAvailabilityEnumTypeTransformer().decode(value);

  static List<AutomatedInboxPlacementProviderDtoAvailabilityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AutomatedInboxPlacementProviderDtoAvailabilityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AutomatedInboxPlacementProviderDtoAvailabilityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AutomatedInboxPlacementProviderDtoAvailabilityEnum] to String,
/// and [decode] dynamic data back to [AutomatedInboxPlacementProviderDtoAvailabilityEnum].
class AutomatedInboxPlacementProviderDtoAvailabilityEnumTypeTransformer {
  factory AutomatedInboxPlacementProviderDtoAvailabilityEnumTypeTransformer() => _instance ??= const AutomatedInboxPlacementProviderDtoAvailabilityEnumTypeTransformer._();

  const AutomatedInboxPlacementProviderDtoAvailabilityEnumTypeTransformer._();

  String encode(AutomatedInboxPlacementProviderDtoAvailabilityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AutomatedInboxPlacementProviderDtoAvailabilityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AutomatedInboxPlacementProviderDtoAvailabilityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AVAILABLE': return AutomatedInboxPlacementProviderDtoAvailabilityEnum.AVAILABLE;
        case r'PLANNED': return AutomatedInboxPlacementProviderDtoAvailabilityEnum.PLANNED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AutomatedInboxPlacementProviderDtoAvailabilityEnumTypeTransformer] instance.
  static AutomatedInboxPlacementProviderDtoAvailabilityEnumTypeTransformer? _instance;
}


