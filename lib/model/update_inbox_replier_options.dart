//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateInboxReplierOptions {
  /// Returns a new [UpdateInboxReplierOptions] instance.
  UpdateInboxReplierOptions({
    required this.inboxId,
    this.name,
    required this.field,
    required this.match,
    this.replyTo,
    this.subject,
    this.from,
    this.charset,
    this.isHTML,
    this.ignoreReplyTo,
    this.body,
    this.templateId,
    this.templateVariables = const {},
  });

  /// Inbox ID to attach replier to
  String inboxId;

  /// Name for replier
  String? name;

  /// Field to match against to trigger inbox replier for inbound email
  UpdateInboxReplierOptionsFieldEnum field;

  /// String or wildcard style match for field specified when evaluating reply rules
  String match;

  /// Reply-to email address when sending replying
  String? replyTo;

  /// Subject override when replying to email
  String? subject;

  /// Send email from address
  String? from;

  /// Email reply charset
  String? charset;

  /// Send HTML email
  bool? isHTML;

  /// Ignore sender replyTo when responding. Send directly to the sender if enabled.
  bool? ignoreReplyTo;

  /// Email body for reply
  String? body;

  /// ID of template to use when sending a reply
  String? templateId;

  /// Template variable values
  Map<String, Object>? templateVariables;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateInboxReplierOptions &&
     other.inboxId == inboxId &&
     other.name == name &&
     other.field == field &&
     other.match == match &&
     other.replyTo == replyTo &&
     other.subject == subject &&
     other.from == from &&
     other.charset == charset &&
     other.isHTML == isHTML &&
     other.ignoreReplyTo == ignoreReplyTo &&
     other.body == body &&
     other.templateId == templateId &&
     other.templateVariables == templateVariables;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (inboxId.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (field.hashCode) +
    (match.hashCode) +
    (replyTo == null ? 0 : replyTo!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (charset == null ? 0 : charset!.hashCode) +
    (isHTML == null ? 0 : isHTML!.hashCode) +
    (ignoreReplyTo == null ? 0 : ignoreReplyTo!.hashCode) +
    (body == null ? 0 : body!.hashCode) +
    (templateId == null ? 0 : templateId!.hashCode) +
    (templateVariables == null ? 0 : templateVariables!.hashCode);

  @override
  String toString() => 'UpdateInboxReplierOptions[inboxId=$inboxId, name=$name, field=$field, match=$match, replyTo=$replyTo, subject=$subject, from=$from, charset=$charset, isHTML=$isHTML, ignoreReplyTo=$ignoreReplyTo, body=$body, templateId=$templateId, templateVariables=$templateVariables]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'inboxId'] = this.inboxId;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'field'] = this.field;
      json[r'match'] = this.match;
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
    if (this.isHTML != null) {
      json[r'isHTML'] = this.isHTML;
    } else {
      json[r'isHTML'] = null;
    }
    if (this.ignoreReplyTo != null) {
      json[r'ignoreReplyTo'] = this.ignoreReplyTo;
    } else {
      json[r'ignoreReplyTo'] = null;
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
    return json;
  }

  /// Returns a new [UpdateInboxReplierOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateInboxReplierOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateInboxReplierOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateInboxReplierOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateInboxReplierOptions(
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
        name: mapValueOfType<String>(json, r'name'),
        field: UpdateInboxReplierOptionsFieldEnum.fromJson(json[r'field'])!,
        match: mapValueOfType<String>(json, r'match')!,
        replyTo: mapValueOfType<String>(json, r'replyTo'),
        subject: mapValueOfType<String>(json, r'subject'),
        from: mapValueOfType<String>(json, r'from'),
        charset: mapValueOfType<String>(json, r'charset'),
        isHTML: mapValueOfType<bool>(json, r'isHTML'),
        ignoreReplyTo: mapValueOfType<bool>(json, r'ignoreReplyTo'),
        body: mapValueOfType<String>(json, r'body'),
        templateId: mapValueOfType<String>(json, r'templateId'),
        templateVariables: mapCastOfType<String, Object>(json, r'templateVariables') ?? const {},
      );
    }
    return null;
  }

  static List<UpdateInboxReplierOptions>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateInboxReplierOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateInboxReplierOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateInboxReplierOptions> mapFromJson(dynamic json) {
    final map = <String, UpdateInboxReplierOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateInboxReplierOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateInboxReplierOptions-objects as value to a dart map
  static Map<String, List<UpdateInboxReplierOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateInboxReplierOptions>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateInboxReplierOptions.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'inboxId',
    'field',
    'match',
  };
}

/// Field to match against to trigger inbox replier for inbound email
class UpdateInboxReplierOptionsFieldEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdateInboxReplierOptionsFieldEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RECIPIENTS = UpdateInboxReplierOptionsFieldEnum._(r'RECIPIENTS');
  static const SENDER = UpdateInboxReplierOptionsFieldEnum._(r'SENDER');
  static const SUBJECT = UpdateInboxReplierOptionsFieldEnum._(r'SUBJECT');
  static const ATTACHMENTS = UpdateInboxReplierOptionsFieldEnum._(r'ATTACHMENTS');

  /// List of all possible values in this [enum][UpdateInboxReplierOptionsFieldEnum].
  static const values = <UpdateInboxReplierOptionsFieldEnum>[
    RECIPIENTS,
    SENDER,
    SUBJECT,
    ATTACHMENTS,
  ];

  static UpdateInboxReplierOptionsFieldEnum? fromJson(dynamic value) => UpdateInboxReplierOptionsFieldEnumTypeTransformer().decode(value);

  static List<UpdateInboxReplierOptionsFieldEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateInboxReplierOptionsFieldEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateInboxReplierOptionsFieldEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdateInboxReplierOptionsFieldEnum] to String,
/// and [decode] dynamic data back to [UpdateInboxReplierOptionsFieldEnum].
class UpdateInboxReplierOptionsFieldEnumTypeTransformer {
  factory UpdateInboxReplierOptionsFieldEnumTypeTransformer() => _instance ??= const UpdateInboxReplierOptionsFieldEnumTypeTransformer._();

  const UpdateInboxReplierOptionsFieldEnumTypeTransformer._();

  String encode(UpdateInboxReplierOptionsFieldEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdateInboxReplierOptionsFieldEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdateInboxReplierOptionsFieldEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RECIPIENTS': return UpdateInboxReplierOptionsFieldEnum.RECIPIENTS;
        case r'SENDER': return UpdateInboxReplierOptionsFieldEnum.SENDER;
        case r'SUBJECT': return UpdateInboxReplierOptionsFieldEnum.SUBJECT;
        case r'ATTACHMENTS': return UpdateInboxReplierOptionsFieldEnum.ATTACHMENTS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdateInboxReplierOptionsFieldEnumTypeTransformer] instance.
  static UpdateInboxReplierOptionsFieldEnumTypeTransformer? _instance;
}


