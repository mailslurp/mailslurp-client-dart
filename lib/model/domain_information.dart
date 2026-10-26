//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DomainInformation {
  /// Returns a new [DomainInformation] instance.
  DomainInformation({
    required this.domainName,
    required this.verified,
    required this.domainType,
  });

  String domainName;

  bool verified;

  /// Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails.
  DomainInformationDomainTypeEnum domainType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainInformation &&
     other.domainName == domainName &&
     other.verified == verified &&
     other.domainType == domainType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domainName.hashCode) +
    (verified.hashCode) +
    (domainType.hashCode);

  @override
  String toString() => 'DomainInformation[domainName=$domainName, verified=$verified, domainType=$domainType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'domainName'] = this.domainName;
      json[r'verified'] = this.verified;
      json[r'domainType'] = this.domainType;
    return json;
  }

  /// Returns a new [DomainInformation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainInformation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DomainInformation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DomainInformation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DomainInformation(
        domainName: mapValueOfType<String>(json, r'domainName')!,
        verified: mapValueOfType<bool>(json, r'verified')!,
        domainType: DomainInformationDomainTypeEnum.fromJson(json[r'domainType'])!,
      );
    }
    return null;
  }

  static List<DomainInformation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainInformation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainInformation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainInformation> mapFromJson(dynamic json) {
    final map = <String, DomainInformation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainInformation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainInformation-objects as value to a dart map
  static Map<String, List<DomainInformation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainInformation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainInformation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'domainName',
    'verified',
    'domainType',
  };
}

/// Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails.
class DomainInformationDomainTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const DomainInformationDomainTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HTTP_INBOX = DomainInformationDomainTypeEnum._(r'HTTP_INBOX');
  static const SMTP_DOMAIN = DomainInformationDomainTypeEnum._(r'SMTP_DOMAIN');

  /// List of all possible values in this [enum][DomainInformationDomainTypeEnum].
  static const values = <DomainInformationDomainTypeEnum>[
    HTTP_INBOX,
    SMTP_DOMAIN,
  ];

  static DomainInformationDomainTypeEnum? fromJson(dynamic value) => DomainInformationDomainTypeEnumTypeTransformer().decode(value);

  static List<DomainInformationDomainTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainInformationDomainTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainInformationDomainTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DomainInformationDomainTypeEnum] to String,
/// and [decode] dynamic data back to [DomainInformationDomainTypeEnum].
class DomainInformationDomainTypeEnumTypeTransformer {
  factory DomainInformationDomainTypeEnumTypeTransformer() => _instance ??= const DomainInformationDomainTypeEnumTypeTransformer._();

  const DomainInformationDomainTypeEnumTypeTransformer._();

  String encode(DomainInformationDomainTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DomainInformationDomainTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainInformationDomainTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HTTP_INBOX': return DomainInformationDomainTypeEnum.HTTP_INBOX;
        case r'SMTP_DOMAIN': return DomainInformationDomainTypeEnum.SMTP_DOMAIN;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DomainInformationDomainTypeEnumTypeTransformer] instance.
  static DomainInformationDomainTypeEnumTypeTransformer? _instance;
}


