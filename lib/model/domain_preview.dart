//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DomainPreview {
  /// Returns a new [DomainPreview] instance.
  DomainPreview({
    required this.id,
    required this.domain,
    this.catchAllInboxId,
    required this.createdAt,
    required this.domainType,
    required this.isVerified,
    required this.hasMissingRecords,
  });

  String id;

  String domain;

  String? catchAllInboxId;

  DateTime createdAt;

  /// Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails.
  DomainPreviewDomainTypeEnum domainType;

  bool isVerified;

  bool hasMissingRecords;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainPreview &&
     other.id == id &&
     other.domain == domain &&
     other.catchAllInboxId == catchAllInboxId &&
     other.createdAt == createdAt &&
     other.domainType == domainType &&
     other.isVerified == isVerified &&
     other.hasMissingRecords == hasMissingRecords;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (domain.hashCode) +
    (catchAllInboxId == null ? 0 : catchAllInboxId!.hashCode) +
    (createdAt.hashCode) +
    (domainType.hashCode) +
    (isVerified.hashCode) +
    (hasMissingRecords.hashCode);

  @override
  String toString() => 'DomainPreview[id=$id, domain=$domain, catchAllInboxId=$catchAllInboxId, createdAt=$createdAt, domainType=$domainType, isVerified=$isVerified, hasMissingRecords=$hasMissingRecords]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'domain'] = this.domain;
    if (this.catchAllInboxId != null) {
      json[r'catchAllInboxId'] = this.catchAllInboxId;
    } else {
      json[r'catchAllInboxId'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'domainType'] = this.domainType;
      json[r'isVerified'] = this.isVerified;
      json[r'hasMissingRecords'] = this.hasMissingRecords;
    return json;
  }

  /// Returns a new [DomainPreview] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainPreview? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DomainPreview[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DomainPreview[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DomainPreview(
        id: mapValueOfType<String>(json, r'id')!,
        domain: mapValueOfType<String>(json, r'domain')!,
        catchAllInboxId: mapValueOfType<String>(json, r'catchAllInboxId'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        domainType: DomainPreviewDomainTypeEnum.fromJson(json[r'domainType'])!,
        isVerified: mapValueOfType<bool>(json, r'isVerified')!,
        hasMissingRecords: mapValueOfType<bool>(json, r'hasMissingRecords')!,
      );
    }
    return null;
  }

  static List<DomainPreview>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainPreview>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainPreview.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainPreview> mapFromJson(dynamic json) {
    final map = <String, DomainPreview>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainPreview.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainPreview-objects as value to a dart map
  static Map<String, List<DomainPreview>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainPreview>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainPreview.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'domain',
    'createdAt',
    'domainType',
    'isVerified',
    'hasMissingRecords',
  };
}

/// Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails.
class DomainPreviewDomainTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const DomainPreviewDomainTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HTTP_INBOX = DomainPreviewDomainTypeEnum._(r'HTTP_INBOX');
  static const SMTP_DOMAIN = DomainPreviewDomainTypeEnum._(r'SMTP_DOMAIN');

  /// List of all possible values in this [enum][DomainPreviewDomainTypeEnum].
  static const values = <DomainPreviewDomainTypeEnum>[
    HTTP_INBOX,
    SMTP_DOMAIN,
  ];

  static DomainPreviewDomainTypeEnum? fromJson(dynamic value) => DomainPreviewDomainTypeEnumTypeTransformer().decode(value);

  static List<DomainPreviewDomainTypeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainPreviewDomainTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainPreviewDomainTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DomainPreviewDomainTypeEnum] to String,
/// and [decode] dynamic data back to [DomainPreviewDomainTypeEnum].
class DomainPreviewDomainTypeEnumTypeTransformer {
  factory DomainPreviewDomainTypeEnumTypeTransformer() => _instance ??= const DomainPreviewDomainTypeEnumTypeTransformer._();

  const DomainPreviewDomainTypeEnumTypeTransformer._();

  String encode(DomainPreviewDomainTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DomainPreviewDomainTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainPreviewDomainTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HTTP_INBOX': return DomainPreviewDomainTypeEnum.HTTP_INBOX;
        case r'SMTP_DOMAIN': return DomainPreviewDomainTypeEnum.SMTP_DOMAIN;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DomainPreviewDomainTypeEnumTypeTransformer] instance.
  static DomainPreviewDomainTypeEnumTypeTransformer? _instance;
}


