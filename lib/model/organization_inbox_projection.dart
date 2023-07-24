//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrganizationInboxProjection {
  /// Returns a new [OrganizationInboxProjection] instance.
  OrganizationInboxProjection({
    required this.id,
    this.domainId,
    required this.createdAt,
    this.name,
    this.emailAddress,
    required this.favourite,
    this.tags = const [],
    required this.teamAccess,
    this.inboxType,
    required this.readOnly,
    required this.virtualInbox,
  });

  /// ID of the inbox. The ID is a UUID-V4 format string. Use the inboxId for calls to Inbox and Email Controller endpoints. See the emailAddress property for the email address or the inbox. To get emails in an inbox use the WaitFor and Inbox Controller methods `waitForLatestEmail` and `getEmails` methods respectively. Inboxes can be used with aliases to forward emails automatically.
  String id;

  /// ID of custom domain used by the inbox if any
  String? domainId;

  /// When the inbox was created. Time stamps are in ISO DateTime Format `yyyy-MM-dd'T'HH:mm:ss.SSSXXX` e.g. `2000-10-31T01:30:00.000-05:00`.
  DateTime createdAt;

  /// Name of the inbox and used as the sender name when sending emails .Displayed in the dashboard for easier search
  String? name;

  /// The inbox's email address. Inbox projections and previews may not include the email address. To view the email address fetch the inbox entity directly. Send an email to this address and the inbox will receive and store it for you. Note the email address in MailSlurp match characters exactly and are case sensitive so `+123` additions are considered different addresses. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
  String? emailAddress;

  /// Is the inbox a favorite inbox. Make an inbox a favorite is typically done in the dashboard for quick access or filtering
  bool favourite;

  /// Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
  List<String>? tags;

  /// Does inbox permit team access for organization team members. If so team users can use inbox and emails associated with it. See the team access guide at https://www.mailslurp.com/guides/team-email-account-sharing/
  bool teamAccess;

  /// Type of inbox. HTTP inboxes are faster and better for most cases. SMTP inboxes are more suited for public facing inbound messages (but cannot send).
  OrganizationInboxProjectionInboxTypeEnum? inboxType;

  /// Is the inbox readOnly for the caller. Read only means can not be deleted or modified. This flag is present when using team accounts and shared inboxes.
  bool readOnly;

  /// Virtual inbox can receive email but will not send emails to real recipients. Will save sent email record but never send an actual email. Perfect for testing mail server actions.
  bool virtualInbox;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrganizationInboxProjection &&
     other.id == id &&
     other.domainId == domainId &&
     other.createdAt == createdAt &&
     other.name == name &&
     other.emailAddress == emailAddress &&
     other.favourite == favourite &&
     other.tags == tags &&
     other.teamAccess == teamAccess &&
     other.inboxType == inboxType &&
     other.readOnly == readOnly &&
     other.virtualInbox == virtualInbox;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (domainId == null ? 0 : domainId!.hashCode) +
    (createdAt.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (emailAddress == null ? 0 : emailAddress!.hashCode) +
    (favourite.hashCode) +
    (tags == null ? 0 : tags!.hashCode) +
    (teamAccess.hashCode) +
    (inboxType == null ? 0 : inboxType!.hashCode) +
    (readOnly.hashCode) +
    (virtualInbox.hashCode);

  @override
  String toString() => 'OrganizationInboxProjection[id=$id, domainId=$domainId, createdAt=$createdAt, name=$name, emailAddress=$emailAddress, favourite=$favourite, tags=$tags, teamAccess=$teamAccess, inboxType=$inboxType, readOnly=$readOnly, virtualInbox=$virtualInbox]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.domainId != null) {
      json[r'domainId'] = this.domainId;
    } else {
      json[r'domainId'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.emailAddress != null) {
      json[r'emailAddress'] = this.emailAddress;
    } else {
      json[r'emailAddress'] = null;
    }
      json[r'favourite'] = this.favourite;
    if (this.tags != null) {
      json[r'tags'] = this.tags;
    } else {
      json[r'tags'] = null;
    }
      json[r'teamAccess'] = this.teamAccess;
    if (this.inboxType != null) {
      json[r'inboxType'] = this.inboxType;
    } else {
      json[r'inboxType'] = null;
    }
      json[r'readOnly'] = this.readOnly;
      json[r'virtualInbox'] = this.virtualInbox;
    return json;
  }

  /// Returns a new [OrganizationInboxProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrganizationInboxProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrganizationInboxProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrganizationInboxProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrganizationInboxProjection(
        id: mapValueOfType<String>(json, r'id')!,
        domainId: mapValueOfType<String>(json, r'domainId'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        name: mapValueOfType<String>(json, r'name'),
        emailAddress: mapValueOfType<String>(json, r'emailAddress'),
        favourite: mapValueOfType<bool>(json, r'favourite')!,
        tags: json[r'tags'] is List
            ? (json[r'tags'] as List).cast<String>()
            : const [],
        teamAccess: mapValueOfType<bool>(json, r'teamAccess')!,
        inboxType: OrganizationInboxProjectionInboxTypeEnum.fromJson(json[r'inboxType']),
        readOnly: mapValueOfType<bool>(json, r'readOnly')!,
        virtualInbox: mapValueOfType<bool>(json, r'virtualInbox')!,
      );
    }
    return null;
  }

  static List<OrganizationInboxProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrganizationInboxProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrganizationInboxProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrganizationInboxProjection> mapFromJson(dynamic json) {
    final map = <String, OrganizationInboxProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrganizationInboxProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrganizationInboxProjection-objects as value to a dart map
  static Map<String, List<OrganizationInboxProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrganizationInboxProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrganizationInboxProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'createdAt',
    'favourite',
    'teamAccess',
    'readOnly',
    'virtualInbox',
  };
}

/// Type of inbox. HTTP inboxes are faster and better for most cases. SMTP inboxes are more suited for public facing inbound messages (but cannot send).
class OrganizationInboxProjectionInboxTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const OrganizationInboxProjectionInboxTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HTTP_INBOX = OrganizationInboxProjectionInboxTypeEnum._(r'HTTP_INBOX');
  static const SMTP_INBOX = OrganizationInboxProjectionInboxTypeEnum._(r'SMTP_INBOX');

  /// List of all possible values in this [enum][OrganizationInboxProjectionInboxTypeEnum].
  static const values = <OrganizationInboxProjectionInboxTypeEnum>[
    HTTP_INBOX,
    SMTP_INBOX,
  ];

  static OrganizationInboxProjectionInboxTypeEnum? fromJson(dynamic value) => OrganizationInboxProjectionInboxTypeEnumTypeTransformer().decode(value);

  static List<OrganizationInboxProjectionInboxTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrganizationInboxProjectionInboxTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrganizationInboxProjectionInboxTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OrganizationInboxProjectionInboxTypeEnum] to String,
/// and [decode] dynamic data back to [OrganizationInboxProjectionInboxTypeEnum].
class OrganizationInboxProjectionInboxTypeEnumTypeTransformer {
  factory OrganizationInboxProjectionInboxTypeEnumTypeTransformer() => _instance ??= const OrganizationInboxProjectionInboxTypeEnumTypeTransformer._();

  const OrganizationInboxProjectionInboxTypeEnumTypeTransformer._();

  String encode(OrganizationInboxProjectionInboxTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OrganizationInboxProjectionInboxTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrganizationInboxProjectionInboxTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HTTP_INBOX': return OrganizationInboxProjectionInboxTypeEnum.HTTP_INBOX;
        case r'SMTP_INBOX': return OrganizationInboxProjectionInboxTypeEnum.SMTP_INBOX;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OrganizationInboxProjectionInboxTypeEnumTypeTransformer] instance.
  static OrganizationInboxProjectionInboxTypeEnumTypeTransformer? _instance;
}


