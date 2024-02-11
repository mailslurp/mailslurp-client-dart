//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxReplierDto {
  /// Returns a new [InboxReplierDto] instance.
  InboxReplierDto({
    required this.id,
    required this.inboxId,
    this.name,
    required this.field,
    required this.match,
    this.replyTo,
    this.subject,
    this.from,
    this.charset,
    required this.isHTML,
    this.templateId,
    this.templateVariables = const {},
    required this.ignoreReplyTo,
    required this.createdAt,
  });

  String id;

  String inboxId;

  String? name;

  InboxReplierDtoFieldEnum field;

  String match;

  String? replyTo;

  String? subject;

  String? from;

  String? charset;

  bool isHTML;

  String? templateId;

  Map<String, Object>? templateVariables;

  bool ignoreReplyTo;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxReplierDto &&
     other.id == id &&
     other.inboxId == inboxId &&
     other.name == name &&
     other.field == field &&
     other.match == match &&
     other.replyTo == replyTo &&
     other.subject == subject &&
     other.from == from &&
     other.charset == charset &&
     other.isHTML == isHTML &&
     other.templateId == templateId &&
     other.templateVariables == templateVariables &&
     other.ignoreReplyTo == ignoreReplyTo &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (inboxId.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (field.hashCode) +
    (match.hashCode) +
    (replyTo == null ? 0 : replyTo!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (charset == null ? 0 : charset!.hashCode) +
    (isHTML.hashCode) +
    (templateId == null ? 0 : templateId!.hashCode) +
    (templateVariables == null ? 0 : templateVariables!.hashCode) +
    (ignoreReplyTo.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'InboxReplierDto[id=$id, inboxId=$inboxId, name=$name, field=$field, match=$match, replyTo=$replyTo, subject=$subject, from=$from, charset=$charset, isHTML=$isHTML, templateId=$templateId, templateVariables=$templateVariables, ignoreReplyTo=$ignoreReplyTo, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
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
      json[r'isHTML'] = this.isHTML;
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
      json[r'ignoreReplyTo'] = this.ignoreReplyTo;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [InboxReplierDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxReplierDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxReplierDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxReplierDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxReplierDto(
        id: mapValueOfType<String>(json, r'id')!,
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
        name: mapValueOfType<String>(json, r'name'),
        field: InboxReplierDtoFieldEnum.fromJson(json[r'field'])!,
        match: mapValueOfType<String>(json, r'match')!,
        replyTo: mapValueOfType<String>(json, r'replyTo'),
        subject: mapValueOfType<String>(json, r'subject'),
        from: mapValueOfType<String>(json, r'from'),
        charset: mapValueOfType<String>(json, r'charset'),
        isHTML: mapValueOfType<bool>(json, r'isHTML')!,
        templateId: mapValueOfType<String>(json, r'templateId'),
        templateVariables: mapCastOfType<String, Object>(json, r'templateVariables') ?? const {},
        ignoreReplyTo: mapValueOfType<bool>(json, r'ignoreReplyTo')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
      );
    }
    return null;
  }

  static List<InboxReplierDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxReplierDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxReplierDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxReplierDto> mapFromJson(dynamic json) {
    final map = <String, InboxReplierDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxReplierDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxReplierDto-objects as value to a dart map
  static Map<String, List<InboxReplierDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxReplierDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxReplierDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'inboxId',
    'field',
    'match',
    'isHTML',
    'ignoreReplyTo',
    'createdAt',
  };
}


class InboxReplierDtoFieldEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxReplierDtoFieldEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RECIPIENTS = InboxReplierDtoFieldEnum._(r'RECIPIENTS');
  static const SENDER = InboxReplierDtoFieldEnum._(r'SENDER');
  static const SUBJECT = InboxReplierDtoFieldEnum._(r'SUBJECT');
  static const ATTACHMENTS = InboxReplierDtoFieldEnum._(r'ATTACHMENTS');

  /// List of all possible values in this [enum][InboxReplierDtoFieldEnum].
  static const values = <InboxReplierDtoFieldEnum>[
    RECIPIENTS,
    SENDER,
    SUBJECT,
    ATTACHMENTS,
  ];

  static InboxReplierDtoFieldEnum? fromJson(dynamic value) => InboxReplierDtoFieldEnumTypeTransformer().decode(value);

  static List<InboxReplierDtoFieldEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxReplierDtoFieldEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxReplierDtoFieldEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InboxReplierDtoFieldEnum] to String,
/// and [decode] dynamic data back to [InboxReplierDtoFieldEnum].
class InboxReplierDtoFieldEnumTypeTransformer {
  factory InboxReplierDtoFieldEnumTypeTransformer() => _instance ??= const InboxReplierDtoFieldEnumTypeTransformer._();

  const InboxReplierDtoFieldEnumTypeTransformer._();

  String encode(InboxReplierDtoFieldEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxReplierDtoFieldEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxReplierDtoFieldEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RECIPIENTS': return InboxReplierDtoFieldEnum.RECIPIENTS;
        case r'SENDER': return InboxReplierDtoFieldEnum.SENDER;
        case r'SUBJECT': return InboxReplierDtoFieldEnum.SUBJECT;
        case r'ATTACHMENTS': return InboxReplierDtoFieldEnum.ATTACHMENTS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InboxReplierDtoFieldEnumTypeTransformer] instance.
  static InboxReplierDtoFieldEnumTypeTransformer? _instance;
}


