//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateDomainOptions {
  /// Returns a new [CreateDomainOptions] instance.
  CreateDomainOptions({
    required this.domain,
    this.description,
    this.createdCatchAllInbox,
    this.domainType,
  });

  /// The top level domain you wish to use with MailSlurp. Do not specify subdomain just the top level. So `test.com` covers all subdomains such as `mail.test.com`. Don't include a protocol such as `http://`. Once added you must complete the verification steps by adding the returned records to your domain.
  String domain;

  /// Optional description of the domain.
  String? description;

  /// Whether to create a catch all inbox for the domain. Any email sent to an address using your domain that cannot be matched to an existing inbox you created with the domain will be routed to the created catch all inbox. You can access emails using the regular methods on this inbox ID.
  bool? createdCatchAllInbox;

  /// Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails.
  CreateDomainOptionsDomainTypeEnum? domainType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateDomainOptions &&
     other.domain == domain &&
     other.description == description &&
     other.createdCatchAllInbox == createdCatchAllInbox &&
     other.domainType == domainType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domain.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (createdCatchAllInbox == null ? 0 : createdCatchAllInbox!.hashCode) +
    (domainType == null ? 0 : domainType!.hashCode);

  @override
  String toString() => 'CreateDomainOptions[domain=$domain, description=$description, createdCatchAllInbox=$createdCatchAllInbox, domainType=$domainType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'domain'] = this.domain;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.createdCatchAllInbox != null) {
      json[r'createdCatchAllInbox'] = this.createdCatchAllInbox;
    } else {
      json[r'createdCatchAllInbox'] = null;
    }
    if (this.domainType != null) {
      json[r'domainType'] = this.domainType;
    } else {
      json[r'domainType'] = null;
    }
    return json;
  }

  /// Returns a new [CreateDomainOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateDomainOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateDomainOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateDomainOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateDomainOptions(
        domain: mapValueOfType<String>(json, r'domain')!,
        description: mapValueOfType<String>(json, r'description'),
        createdCatchAllInbox: mapValueOfType<bool>(json, r'createdCatchAllInbox'),
        domainType: CreateDomainOptionsDomainTypeEnum.fromJson(json[r'domainType']),
      );
    }
    return null;
  }

  static List<CreateDomainOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateDomainOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateDomainOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateDomainOptions> mapFromJson(dynamic json) {
    final map = <String, CreateDomainOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateDomainOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateDomainOptions-objects as value to a dart map
  static Map<String, List<CreateDomainOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateDomainOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateDomainOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'domain',
  };
}

/// Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails.
class CreateDomainOptionsDomainTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateDomainOptionsDomainTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HTTP_INBOX = CreateDomainOptionsDomainTypeEnum._(r'HTTP_INBOX');
  static const SMTP_DOMAIN = CreateDomainOptionsDomainTypeEnum._(r'SMTP_DOMAIN');

  /// List of all possible values in this [enum][CreateDomainOptionsDomainTypeEnum].
  static const values = <CreateDomainOptionsDomainTypeEnum>[
    HTTP_INBOX,
    SMTP_DOMAIN,
  ];

  static CreateDomainOptionsDomainTypeEnum? fromJson(dynamic value) => CreateDomainOptionsDomainTypeEnumTypeTransformer().decode(value);

  static List<CreateDomainOptionsDomainTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateDomainOptionsDomainTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateDomainOptionsDomainTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateDomainOptionsDomainTypeEnum] to String,
/// and [decode] dynamic data back to [CreateDomainOptionsDomainTypeEnum].
class CreateDomainOptionsDomainTypeEnumTypeTransformer {
  factory CreateDomainOptionsDomainTypeEnumTypeTransformer() => _instance ??= const CreateDomainOptionsDomainTypeEnumTypeTransformer._();

  const CreateDomainOptionsDomainTypeEnumTypeTransformer._();

  String encode(CreateDomainOptionsDomainTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateDomainOptionsDomainTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateDomainOptionsDomainTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HTTP_INBOX': return CreateDomainOptionsDomainTypeEnum.HTTP_INBOX;
        case r'SMTP_DOMAIN': return CreateDomainOptionsDomainTypeEnum.SMTP_DOMAIN;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateDomainOptionsDomainTypeEnumTypeTransformer] instance.
  static CreateDomainOptionsDomainTypeEnumTypeTransformer? _instance;
}


