//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxDto {
  /// Returns a new [InboxDto] instance.
  InboxDto({
    required this.id,
    this.userId,
    required this.createdAt,
    this.name,
    this.domainId,
    this.description,
    required this.emailAddress,
    this.expiresAt,
    required this.favourite,
    this.tags = const [],
    this.inboxType,
    required this.readOnly,
    required this.virtualInbox,
  });

  /// ID of the inbox. The ID is a UUID-V4 format string. Use the inboxId for calls to Inbox and Email Controller endpoints. See the emailAddress property for the email address or the inbox. To get emails in an inbox use the WaitFor and Inbox Controller methods `waitForLatestEmail` and `getEmails` methods respectively. Inboxes can be used with aliases to forward emails automatically.
  String id;

  /// ID of user that inbox belongs to
  String? userId;

  /// When the inbox was created. Time stamps are in ISO DateTime Format `yyyy-MM-dd'T'HH:mm:ss.SSSXXX` e.g. `2000-10-31T01:30:00.000-05:00`.
  DateTime createdAt;

  /// Name of the inbox and used as the sender name when sending emails .Displayed in the dashboard for easier search
  String? name;

  /// ID of custom domain used by the inbox if any
  String? domainId;

  /// Description of an inbox for labelling and searching purposes
  String? description;

  /// The inbox's email address. Inbox projections and previews may not include the email address. To view the email address fetch the inbox entity directly. Send an email to this address and the inbox will receive and store it for you. Note the email address in MailSlurp match characters exactly and are case sensitive so `+123` additions are considered different addresses. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
  String emailAddress;

  /// Inbox expiration time. When, if ever, the inbox should expire and be deleted. If null then this inbox is permanent and the emails in it won't be deleted. This is the default behavior unless expiration date is set. If an expiration date is set and the time is reached MailSlurp will expire the inbox and move it to an expired inbox entity. You can still access the emails belonging to it but it can no longer send or receive email.
  String? expiresAt;

  /// Is the inbox a favorite inbox. Make an inbox a favorite is typically done in the dashboard for quick access or filtering
  bool favourite;

  /// Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
  List<String>? tags;

  /// Type of inbox. HTTP inboxes are faster and better for most cases. SMTP inboxes are more suited for public facing inbound messages (but cannot send).
  InboxDtoInboxTypeEnum? inboxType;

  /// Is the inbox readOnly for the caller. Read only means can not be deleted or modified. This flag is present when using team accounts and shared inboxes.
  bool readOnly;

  /// Virtual inbox can receive email but will not send emails to real recipients. Will save sent email record but never send an actual email. Perfect for testing mail server actions.
  bool virtualInbox;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxDto &&
     other.id == id &&
     other.userId == userId &&
     other.createdAt == createdAt &&
     other.name == name &&
     other.domainId == domainId &&
     other.description == description &&
     other.emailAddress == emailAddress &&
     other.expiresAt == expiresAt &&
     other.favourite == favourite &&
     other.tags == tags &&
     other.inboxType == inboxType &&
     other.readOnly == readOnly &&
     other.virtualInbox == virtualInbox;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (createdAt.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (domainId == null ? 0 : domainId!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (emailAddress.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (favourite.hashCode) +
    (tags == null ? 0 : tags!.hashCode) +
    (inboxType == null ? 0 : inboxType!.hashCode) +
    (readOnly.hashCode) +
    (virtualInbox.hashCode);

  @override
  String toString() => 'InboxDto[id=$id, userId=$userId, createdAt=$createdAt, name=$name, domainId=$domainId, description=$description, emailAddress=$emailAddress, expiresAt=$expiresAt, favourite=$favourite, tags=$tags, inboxType=$inboxType, readOnly=$readOnly, virtualInbox=$virtualInbox]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.domainId != null) {
      json[r'domainId'] = this.domainId;
    } else {
      json[r'domainId'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'emailAddress'] = this.emailAddress;
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt;
    } else {
      json[r'expiresAt'] = null;
    }
      json[r'favourite'] = this.favourite;
    if (this.tags != null) {
      json[r'tags'] = this.tags;
    } else {
      json[r'tags'] = null;
    }
    if (this.inboxType != null) {
      json[r'inboxType'] = this.inboxType;
    } else {
      json[r'inboxType'] = null;
    }
      json[r'readOnly'] = this.readOnly;
      json[r'virtualInbox'] = this.virtualInbox;
    return json;
  }

  /// Returns a new [InboxDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxDto(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        name: mapValueOfType<String>(json, r'name'),
        domainId: mapValueOfType<String>(json, r'domainId'),
        description: mapValueOfType<String>(json, r'description'),
        emailAddress: mapValueOfType<String>(json, r'emailAddress')!,
        expiresAt: mapValueOfType<String>(json, r'expiresAt'),
        favourite: mapValueOfType<bool>(json, r'favourite')!,
        tags: json[r'tags'] is List
            ? (json[r'tags'] as List).cast<String>()
            : const [],
        inboxType: InboxDtoInboxTypeEnum.fromJson(json[r'inboxType']),
        readOnly: mapValueOfType<bool>(json, r'readOnly')!,
        virtualInbox: mapValueOfType<bool>(json, r'virtualInbox')!,
      );
    }
    return null;
  }

  static List<InboxDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxDto> mapFromJson(dynamic json) {
    final map = <String, InboxDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxDto-objects as value to a dart map
  static Map<String, List<InboxDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxDto.listFromJson(entry.value, growable: growable,);
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
    'createdAt',
    'emailAddress',
    'favourite',
    'readOnly',
    'virtualInbox',
  };
}

/// Type of inbox. HTTP inboxes are faster and better for most cases. SMTP inboxes are more suited for public facing inbound messages (but cannot send).
class InboxDtoInboxTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxDtoInboxTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HTTP_INBOX = InboxDtoInboxTypeEnum._(r'HTTP_INBOX');
  static const SMTP_INBOX = InboxDtoInboxTypeEnum._(r'SMTP_INBOX');

  /// List of all possible values in this [enum][InboxDtoInboxTypeEnum].
  static const values = <InboxDtoInboxTypeEnum>[
    HTTP_INBOX,
    SMTP_INBOX,
  ];

  static InboxDtoInboxTypeEnum? fromJson(dynamic value) => InboxDtoInboxTypeEnumTypeTransformer().decode(value);

  static List<InboxDtoInboxTypeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxDtoInboxTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxDtoInboxTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InboxDtoInboxTypeEnum] to String,
/// and [decode] dynamic data back to [InboxDtoInboxTypeEnum].
class InboxDtoInboxTypeEnumTypeTransformer {
  factory InboxDtoInboxTypeEnumTypeTransformer() => _instance ??= const InboxDtoInboxTypeEnumTypeTransformer._();

  const InboxDtoInboxTypeEnumTypeTransformer._();

  String encode(InboxDtoInboxTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxDtoInboxTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxDtoInboxTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HTTP_INBOX': return InboxDtoInboxTypeEnum.HTTP_INBOX;
        case r'SMTP_INBOX': return InboxDtoInboxTypeEnum.SMTP_INBOX;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InboxDtoInboxTypeEnumTypeTransformer] instance.
  static InboxDtoInboxTypeEnumTypeTransformer? _instance;
}


