//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateInboxReplierOptions {
  /// Returns a new [CreateInboxReplierOptions] instance.
  CreateInboxReplierOptions({
    this.inboxId,
    this.name,
    this.field,
    this.match,
    this.replyTo,
    this.subject,
    this.from,
    this.charset,
    this.ignoreReplyTo,
    this.isHTML,
    this.body,
    this.templateId,
    this.templateVariables = const {},
    this.should,
    this.matchOptions,
  });

  /// Inbox ID to attach replier to
  String? inboxId;

  /// Name for replier
  String? name;

  /// Field to match against to trigger inbox replier for inbound email
  CreateInboxReplierOptionsFieldEnum? field;

  /// String or wildcard style match for field specified when evaluating reply rules. Use `*` to match anything.
  String? match;

  /// Reply-to email address when sending replying
  String? replyTo;

  /// Subject override when replying to email
  String? subject;

  /// Send email from address
  String? from;

  /// Email reply charset
  String? charset;

  /// Ignore sender replyTo when responding. Send directly to the sender if enabled.
  bool? ignoreReplyTo;

  /// Send HTML email
  bool? isHTML;

  /// Email body for reply
  String? body;

  /// ID of template to use when sending a reply
  String? templateId;

  /// Template variable values
  Map<String, Object>? templateVariables;

  /// Comparison mode for inbox automation matching.
  CreateInboxReplierOptionsShouldEnum? should;

  InboxAutomationMatchOptions? matchOptions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateInboxReplierOptions &&
     other.inboxId == inboxId &&
     other.name == name &&
     other.field == field &&
     other.match == match &&
     other.replyTo == replyTo &&
     other.subject == subject &&
     other.from == from &&
     other.charset == charset &&
     other.ignoreReplyTo == ignoreReplyTo &&
     other.isHTML == isHTML &&
     other.body == body &&
     other.templateId == templateId &&
     other.templateVariables == templateVariables &&
     other.should == should &&
     other.matchOptions == matchOptions;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (field == null ? 0 : field!.hashCode) +
    (match == null ? 0 : match!.hashCode) +
    (replyTo == null ? 0 : replyTo!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (charset == null ? 0 : charset!.hashCode) +
    (ignoreReplyTo == null ? 0 : ignoreReplyTo!.hashCode) +
    (isHTML == null ? 0 : isHTML!.hashCode) +
    (body == null ? 0 : body!.hashCode) +
    (templateId == null ? 0 : templateId!.hashCode) +
    (templateVariables == null ? 0 : templateVariables!.hashCode) +
    (should == null ? 0 : should!.hashCode) +
    (matchOptions == null ? 0 : matchOptions!.hashCode);

  @override
  String toString() => 'CreateInboxReplierOptions[inboxId=$inboxId, name=$name, field=$field, match=$match, replyTo=$replyTo, subject=$subject, from=$from, charset=$charset, ignoreReplyTo=$ignoreReplyTo, isHTML=$isHTML, body=$body, templateId=$templateId, templateVariables=$templateVariables, should=$should, matchOptions=$matchOptions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.inboxId != null) {
      json[r'inboxId'] = this.inboxId;
    } else {
      json[r'inboxId'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.field != null) {
      json[r'field'] = this.field;
    } else {
      json[r'field'] = null;
    }
    if (this.match != null) {
      json[r'match'] = this.match;
    } else {
      json[r'match'] = null;
    }
    if (this.replyTo != null) {
      json[r'replyTo'] = this.replyTo;
    } else {
      json[r'replyTo'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
    if (this.charset != null) {
      json[r'charset'] = this.charset;
    } else {
      json[r'charset'] = null;
    }
    if (this.ignoreReplyTo != null) {
      json[r'ignoreReplyTo'] = this.ignoreReplyTo;
    } else {
      json[r'ignoreReplyTo'] = null;
    }
    if (this.isHTML != null) {
      json[r'isHTML'] = this.isHTML;
    } else {
      json[r'isHTML'] = null;
    }
    if (this.body != null) {
      json[r'body'] = this.body;
    } else {
      json[r'body'] = null;
    }
    if (this.templateId != null) {
      json[r'templateId'] = this.templateId;
    } else {
      json[r'templateId'] = null;
    }
    if (this.templateVariables != null) {
      json[r'templateVariables'] = this.templateVariables;
    } else {
      json[r'templateVariables'] = null;
    }
    if (this.should != null) {
      json[r'should'] = this.should;
    } else {
      json[r'should'] = null;
    }
    if (this.matchOptions != null) {
      json[r'matchOptions'] = this.matchOptions;
    } else {
      json[r'matchOptions'] = null;
    }
    return json;
  }

  /// Returns a new [CreateInboxReplierOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateInboxReplierOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateInboxReplierOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateInboxReplierOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateInboxReplierOptions(
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        name: mapValueOfType<String>(json, r'name'),
        field: CreateInboxReplierOptionsFieldEnum.fromJson(json[r'field']),
        match: mapValueOfType<String>(json, r'match'),
        replyTo: mapValueOfType<String>(json, r'replyTo'),
        subject: mapValueOfType<String>(json, r'subject'),
        from: mapValueOfType<String>(json, r'from'),
        charset: mapValueOfType<String>(json, r'charset'),
        ignoreReplyTo: mapValueOfType<bool>(json, r'ignoreReplyTo'),
        isHTML: mapValueOfType<bool>(json, r'isHTML'),
        body: mapValueOfType<String>(json, r'body'),
        templateId: mapValueOfType<String>(json, r'templateId'),
        templateVariables: mapCastOfType<String, Object>(json, r'templateVariables') ?? const {},
        should: CreateInboxReplierOptionsShouldEnum.fromJson(json[r'should']),
        matchOptions: InboxAutomationMatchOptions.fromJson(json[r'matchOptions']),
      );
    }
    return null;
  }

  static List<CreateInboxReplierOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateInboxReplierOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateInboxReplierOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateInboxReplierOptions> mapFromJson(dynamic json) {
    final map = <String, CreateInboxReplierOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateInboxReplierOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateInboxReplierOptions-objects as value to a dart map
  static Map<String, List<CreateInboxReplierOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateInboxReplierOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateInboxReplierOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Field to match against to trigger inbox replier for inbound email
class CreateInboxReplierOptionsFieldEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateInboxReplierOptionsFieldEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RECIPIENTS = CreateInboxReplierOptionsFieldEnum._(r'RECIPIENTS');
  static const SENDER = CreateInboxReplierOptionsFieldEnum._(r'SENDER');
  static const SUBJECT = CreateInboxReplierOptionsFieldEnum._(r'SUBJECT');
  static const ATTACHMENTS = CreateInboxReplierOptionsFieldEnum._(r'ATTACHMENTS');
  static const ATTACHMENT_FILENAME = CreateInboxReplierOptionsFieldEnum._(r'ATTACHMENT_FILENAME');
  static const ATTACHMENT_TEXT = CreateInboxReplierOptionsFieldEnum._(r'ATTACHMENT_TEXT');

  /// List of all possible values in this [enum][CreateInboxReplierOptionsFieldEnum].
  static const values = <CreateInboxReplierOptionsFieldEnum>[
    RECIPIENTS,
    SENDER,
    SUBJECT,
    ATTACHMENTS,
    ATTACHMENT_FILENAME,
    ATTACHMENT_TEXT,
  ];

  static CreateInboxReplierOptionsFieldEnum? fromJson(dynamic value) => CreateInboxReplierOptionsFieldEnumTypeTransformer().decode(value);

  static List<CreateInboxReplierOptionsFieldEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateInboxReplierOptionsFieldEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateInboxReplierOptionsFieldEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateInboxReplierOptionsFieldEnum] to String,
/// and [decode] dynamic data back to [CreateInboxReplierOptionsFieldEnum].
class CreateInboxReplierOptionsFieldEnumTypeTransformer {
  factory CreateInboxReplierOptionsFieldEnumTypeTransformer() => _instance ??= const CreateInboxReplierOptionsFieldEnumTypeTransformer._();

  const CreateInboxReplierOptionsFieldEnumTypeTransformer._();

  String encode(CreateInboxReplierOptionsFieldEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateInboxReplierOptionsFieldEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateInboxReplierOptionsFieldEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RECIPIENTS': return CreateInboxReplierOptionsFieldEnum.RECIPIENTS;
        case r'SENDER': return CreateInboxReplierOptionsFieldEnum.SENDER;
        case r'SUBJECT': return CreateInboxReplierOptionsFieldEnum.SUBJECT;
        case r'ATTACHMENTS': return CreateInboxReplierOptionsFieldEnum.ATTACHMENTS;
        case r'ATTACHMENT_FILENAME': return CreateInboxReplierOptionsFieldEnum.ATTACHMENT_FILENAME;
        case r'ATTACHMENT_TEXT': return CreateInboxReplierOptionsFieldEnum.ATTACHMENT_TEXT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateInboxReplierOptionsFieldEnumTypeTransformer] instance.
  static CreateInboxReplierOptionsFieldEnumTypeTransformer? _instance;
}


/// Comparison mode for inbox automation matching.
class CreateInboxReplierOptionsShouldEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateInboxReplierOptionsShouldEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const WILDCARD = CreateInboxReplierOptionsShouldEnum._(r'WILDCARD');
  static const MATCH = CreateInboxReplierOptionsShouldEnum._(r'MATCH');
  static const CONTAIN = CreateInboxReplierOptionsShouldEnum._(r'CONTAIN');
  static const EQUAL = CreateInboxReplierOptionsShouldEnum._(r'EQUAL');

  /// List of all possible values in this [enum][CreateInboxReplierOptionsShouldEnum].
  static const values = <CreateInboxReplierOptionsShouldEnum>[
    WILDCARD,
    MATCH,
    CONTAIN,
    EQUAL,
  ];

  static CreateInboxReplierOptionsShouldEnum? fromJson(dynamic value) => CreateInboxReplierOptionsShouldEnumTypeTransformer().decode(value);

  static List<CreateInboxReplierOptionsShouldEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateInboxReplierOptionsShouldEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateInboxReplierOptionsShouldEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateInboxReplierOptionsShouldEnum] to String,
/// and [decode] dynamic data back to [CreateInboxReplierOptionsShouldEnum].
class CreateInboxReplierOptionsShouldEnumTypeTransformer {
  factory CreateInboxReplierOptionsShouldEnumTypeTransformer() => _instance ??= const CreateInboxReplierOptionsShouldEnumTypeTransformer._();

  const CreateInboxReplierOptionsShouldEnumTypeTransformer._();

  String encode(CreateInboxReplierOptionsShouldEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateInboxReplierOptionsShouldEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateInboxReplierOptionsShouldEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'WILDCARD': return CreateInboxReplierOptionsShouldEnum.WILDCARD;
        case r'MATCH': return CreateInboxReplierOptionsShouldEnum.MATCH;
        case r'CONTAIN': return CreateInboxReplierOptionsShouldEnum.CONTAIN;
        case r'EQUAL': return CreateInboxReplierOptionsShouldEnum.EQUAL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateInboxReplierOptionsShouldEnumTypeTransformer] instance.
  static CreateInboxReplierOptionsShouldEnumTypeTransformer? _instance;
}


