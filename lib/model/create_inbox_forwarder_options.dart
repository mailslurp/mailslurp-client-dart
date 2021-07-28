//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateInboxForwarderOptions {
  /// Returns a new [CreateInboxForwarderOptions] instance.
  CreateInboxForwarderOptions({
    @required this.field,
    @required this.match,
    this.forwardToRecipients = const [],
  });

  CreateInboxForwarderOptionsFieldEnum field;

  String match;

  List<String> forwardToRecipients;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateInboxForwarderOptions &&
     other.field == field &&
     other.match == match &&
     other.forwardToRecipients == forwardToRecipients;

  @override
  int get hashCode =>
    (field == null ? 0 : field.hashCode) +
    (match == null ? 0 : match.hashCode) +
    (forwardToRecipients == null ? 0 : forwardToRecipients.hashCode);

  @override
  String toString() => 'CreateInboxForwarderOptions[field=$field, match=$match, forwardToRecipients=$forwardToRecipients]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'field'] = field;
      json[r'match'] = match;
      json[r'forwardToRecipients'] = forwardToRecipients;
    return json;
  }

  /// Returns a new [CreateInboxForwarderOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CreateInboxForwarderOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : CreateInboxForwarderOptions(
        field: CreateInboxForwarderOptionsFieldEnum.fromJson(json[r'field']),
        match: json[r'match'],
        forwardToRecipients: json[r'forwardToRecipients'] == null
          ? null
          : (json[r'forwardToRecipients'] as List).cast<String>(),
    );

  static List<CreateInboxForwarderOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CreateInboxForwarderOptions>[]
      : json.map((v) => CreateInboxForwarderOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, CreateInboxForwarderOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CreateInboxForwarderOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = CreateInboxForwarderOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of CreateInboxForwarderOptions-objects as value to a dart map
  static Map<String, List<CreateInboxForwarderOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CreateInboxForwarderOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = CreateInboxForwarderOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class CreateInboxForwarderOptionsFieldEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateInboxForwarderOptionsFieldEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RECIPIENTS = CreateInboxForwarderOptionsFieldEnum._(r'RECIPIENTS');
  static const SENDER = CreateInboxForwarderOptionsFieldEnum._(r'SENDER');
  static const SUBJECT = CreateInboxForwarderOptionsFieldEnum._(r'SUBJECT');
  static const ATTACHMENTS = CreateInboxForwarderOptionsFieldEnum._(r'ATTACHMENTS');

  /// List of all possible values in this [enum][CreateInboxForwarderOptionsFieldEnum].
  static const values = <CreateInboxForwarderOptionsFieldEnum>[
    RECIPIENTS,
    SENDER,
    SUBJECT,
    ATTACHMENTS,
  ];

  static CreateInboxForwarderOptionsFieldEnum fromJson(dynamic value) =>
    CreateInboxForwarderOptionsFieldEnumTypeTransformer().decode(value);

  static List<CreateInboxForwarderOptionsFieldEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CreateInboxForwarderOptionsFieldEnum>[]
      : json
          .map((value) => CreateInboxForwarderOptionsFieldEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [CreateInboxForwarderOptionsFieldEnum] to String,
/// and [decode] dynamic data back to [CreateInboxForwarderOptionsFieldEnum].
class CreateInboxForwarderOptionsFieldEnumTypeTransformer {
  const CreateInboxForwarderOptionsFieldEnumTypeTransformer._();

  factory CreateInboxForwarderOptionsFieldEnumTypeTransformer() => _instance ??= CreateInboxForwarderOptionsFieldEnumTypeTransformer._();

  String encode(CreateInboxForwarderOptionsFieldEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateInboxForwarderOptionsFieldEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateInboxForwarderOptionsFieldEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'RECIPIENTS': return CreateInboxForwarderOptionsFieldEnum.RECIPIENTS;
      case r'SENDER': return CreateInboxForwarderOptionsFieldEnum.SENDER;
      case r'SUBJECT': return CreateInboxForwarderOptionsFieldEnum.SUBJECT;
      case r'ATTACHMENTS': return CreateInboxForwarderOptionsFieldEnum.ATTACHMENTS;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [CreateInboxForwarderOptionsFieldEnumTypeTransformer] instance.
  static CreateInboxForwarderOptionsFieldEnumTypeTransformer _instance;
}

