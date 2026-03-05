//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateInboxDto {
  /// Returns a new [CreateInboxDto] instance.
  CreateInboxDto({
    this.emailAddress,
    this.domainName,
    this.domainId,
    this.name,
    this.description,
    this.useDomainPool,
    this.tags = const [],
    this.expiresAt,
    this.favourite,
    this.expiresIn,
    this.allowTeamAccess,
    this.inboxType,
    this.virtualInbox,
    this.useShortAddress,
    this.prefix,
  });

  /// A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as `123@mailslurp.com`. If you use the `useDomainPool` option when the email address is null it will generate an email address with a more varied domain ending such as `123@mailslurp.info` or `123@mailslurp.biz`. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Note domain types must match the inbox type - so `SMTP` inboxes will only work with `SMTP` type domains. Avoid `SMTP` inboxes if you need to send emails as they can only receive. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
  String? emailAddress;

  /// FQDN domain name for the domain you have verified. Will be appended with a randomly assigned recipient name. Use the `emailAddress` option instead to specify the full custom inbox.
  String? domainName;

  /// ID of custom domain to use for email address.
  String? domainId;

  /// Optional name of the inbox. Displayed in the dashboard for easier search and used as the sender name when sending emails.
  String? name;

  /// Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with
  String? description;

  /// Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default `@mailslurp.com` email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in `@mailslurp.{world,info,xyz,...}` . This means a TLD is randomly selecting from a list of `.biz`, `.info`, `.xyz` etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of `@mailslurp.com` or custom email address provided by the emailAddress field. Note this feature is only available for `HTTP` inbox types.
  bool? useDomainPool;

  /// Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
  List<String>? tags;

  /// Optional inbox expiration date. If null then this inbox is permanent and the emails in it won't be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd'T'HH:mm:ss.SSSXXX.
  DateTime? expiresAt;

  /// Is the inbox a favorite. Marking an inbox as a favorite is typically done in the dashboard for quick access or filtering
  bool? favourite;

  /// Number of milliseconds that inbox should exist for
  int? expiresIn;

  /// DEPRECATED (team access is always true). Grant team access to this inbox and the emails that belong to it for team members of your organization.
  bool? allowTeamAccess;

  /// Type of inbox. HTTP inboxes are faster and better for most cases. SMTP inboxes are more suited for public facing inbound messages (but cannot send).
  CreateInboxDtoInboxTypeEnum? inboxType;

  /// Virtual inbox prevents any outbound emails from being sent. It creates sent email records but will never send real emails to recipients. Great for testing and faking email sending.
  bool? virtualInbox;

  /// Use a shorter email address under 31 characters
  bool? useShortAddress;

  /// Prefix to add before the email address for easier labelling or identification.
  String? prefix;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateInboxDto &&
     other.emailAddress == emailAddress &&
     other.domainName == domainName &&
     other.domainId == domainId &&
     other.name == name &&
     other.description == description &&
     other.useDomainPool == useDomainPool &&
     other.tags == tags &&
     other.expiresAt == expiresAt &&
     other.favourite == favourite &&
     other.expiresIn == expiresIn &&
     other.allowTeamAccess == allowTeamAccess &&
     other.inboxType == inboxType &&
     other.virtualInbox == virtualInbox &&
     other.useShortAddress == useShortAddress &&
     other.prefix == prefix;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (emailAddress == null ? 0 : emailAddress!.hashCode) +
    (domainName == null ? 0 : domainName!.hashCode) +
    (domainId == null ? 0 : domainId!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (useDomainPool == null ? 0 : useDomainPool!.hashCode) +
    (tags == null ? 0 : tags!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (favourite == null ? 0 : favourite!.hashCode) +
    (expiresIn == null ? 0 : expiresIn!.hashCode) +
    (allowTeamAccess == null ? 0 : allowTeamAccess!.hashCode) +
    (inboxType == null ? 0 : inboxType!.hashCode) +
    (virtualInbox == null ? 0 : virtualInbox!.hashCode) +
    (useShortAddress == null ? 0 : useShortAddress!.hashCode) +
    (prefix == null ? 0 : prefix!.hashCode);

  @override
  String toString() => 'CreateInboxDto[emailAddress=$emailAddress, domainName=$domainName, domainId=$domainId, name=$name, description=$description, useDomainPool=$useDomainPool, tags=$tags, expiresAt=$expiresAt, favourite=$favourite, expiresIn=$expiresIn, allowTeamAccess=$allowTeamAccess, inboxType=$inboxType, virtualInbox=$virtualInbox, useShortAddress=$useShortAddress, prefix=$prefix]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.emailAddress != null) {
      json[r'emailAddress'] = this.emailAddress;
    } else {
      json[r'emailAddress'] = null;
    }
    if (this.domainName != null) {
      json[r'domainName'] = this.domainName;
    } else {
      json[r'domainName'] = null;
    }
    if (this.domainId != null) {
      json[r'domainId'] = this.domainId;
    } else {
      json[r'domainId'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.useDomainPool != null) {
      json[r'useDomainPool'] = this.useDomainPool;
    } else {
      json[r'useDomainPool'] = null;
    }
    if (this.tags != null) {
      json[r'tags'] = this.tags;
    } else {
      json[r'tags'] = null;
    }
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt!.toUtc().toIso8601String();
    } else {
      json[r'expiresAt'] = null;
    }
    if (this.favourite != null) {
      json[r'favourite'] = this.favourite;
    } else {
      json[r'favourite'] = null;
    }
    if (this.expiresIn != null) {
      json[r'expiresIn'] = this.expiresIn;
    } else {
      json[r'expiresIn'] = null;
    }
    if (this.allowTeamAccess != null) {
      json[r'allowTeamAccess'] = this.allowTeamAccess;
    } else {
      json[r'allowTeamAccess'] = null;
    }
    if (this.inboxType != null) {
      json[r'inboxType'] = this.inboxType;
    } else {
      json[r'inboxType'] = null;
    }
    if (this.virtualInbox != null) {
      json[r'virtualInbox'] = this.virtualInbox;
    } else {
      json[r'virtualInbox'] = null;
    }
    if (this.useShortAddress != null) {
      json[r'useShortAddress'] = this.useShortAddress;
    } else {
      json[r'useShortAddress'] = null;
    }
    if (this.prefix != null) {
      json[r'prefix'] = this.prefix;
    } else {
      json[r'prefix'] = null;
    }
    return json;
  }

  /// Returns a new [CreateInboxDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateInboxDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateInboxDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateInboxDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateInboxDto(
        emailAddress: mapValueOfType<String>(json, r'emailAddress'),
        domainName: mapValueOfType<String>(json, r'domainName'),
        domainId: mapValueOfType<String>(json, r'domainId'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        useDomainPool: mapValueOfType<bool>(json, r'useDomainPool'),
        tags: json[r'tags'] is List
            ? (json[r'tags'] as List).cast<String>()
            : const [],
        expiresAt: mapDateTime(json, r'expiresAt', ''),
        favourite: mapValueOfType<bool>(json, r'favourite'),
        expiresIn: mapValueOfType<int>(json, r'expiresIn'),
        allowTeamAccess: mapValueOfType<bool>(json, r'allowTeamAccess'),
        inboxType: CreateInboxDtoInboxTypeEnum.fromJson(json[r'inboxType']),
        virtualInbox: mapValueOfType<bool>(json, r'virtualInbox'),
        useShortAddress: mapValueOfType<bool>(json, r'useShortAddress'),
        prefix: mapValueOfType<String>(json, r'prefix'),
      );
    }
    return null;
  }

  static List<CreateInboxDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateInboxDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateInboxDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateInboxDto> mapFromJson(dynamic json) {
    final map = <String, CreateInboxDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateInboxDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateInboxDto-objects as value to a dart map
  static Map<String, List<CreateInboxDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateInboxDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateInboxDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Type of inbox. HTTP inboxes are faster and better for most cases. SMTP inboxes are more suited for public facing inbound messages (but cannot send).
class CreateInboxDtoInboxTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateInboxDtoInboxTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HTTP_INBOX = CreateInboxDtoInboxTypeEnum._(r'HTTP_INBOX');
  static const SMTP_INBOX = CreateInboxDtoInboxTypeEnum._(r'SMTP_INBOX');

  /// List of all possible values in this [enum][CreateInboxDtoInboxTypeEnum].
  static const values = <CreateInboxDtoInboxTypeEnum>[
    HTTP_INBOX,
    SMTP_INBOX,
  ];

  static CreateInboxDtoInboxTypeEnum? fromJson(dynamic value) => CreateInboxDtoInboxTypeEnumTypeTransformer().decode(value);

  static List<CreateInboxDtoInboxTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateInboxDtoInboxTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateInboxDtoInboxTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateInboxDtoInboxTypeEnum] to String,
/// and [decode] dynamic data back to [CreateInboxDtoInboxTypeEnum].
class CreateInboxDtoInboxTypeEnumTypeTransformer {
  factory CreateInboxDtoInboxTypeEnumTypeTransformer() => _instance ??= const CreateInboxDtoInboxTypeEnumTypeTransformer._();

  const CreateInboxDtoInboxTypeEnumTypeTransformer._();

  String encode(CreateInboxDtoInboxTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateInboxDtoInboxTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateInboxDtoInboxTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HTTP_INBOX': return CreateInboxDtoInboxTypeEnum.HTTP_INBOX;
        case r'SMTP_INBOX': return CreateInboxDtoInboxTypeEnum.SMTP_INBOX;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateInboxDtoInboxTypeEnumTypeTransformer] instance.
  static CreateInboxDtoInboxTypeEnumTypeTransformer? _instance;
}


