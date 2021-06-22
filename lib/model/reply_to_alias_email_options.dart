//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ReplyToAliasEmailOptions {
  /// Returns a new [ReplyToAliasEmailOptions] instance.
  ReplyToAliasEmailOptions({
    this.attachments = const [],
    this.body,
    this.charset,
    this.isHTML,
    this.sendStrategy,
    this.template,
    this.templateVariables,
    this.useInboxName,
  });

  /// List of uploaded attachments to send with the reply. Optional.
  List<String> attachments;

  /// Body of the reply email you want to send
  String body;

  /// The charset that your message should be sent with. Optional. Default is UTF-8
  String charset;

  /// Is the reply HTML
  bool isHTML;

  /// When to send the email. Typically immediately
  ReplyToAliasEmailOptionsSendStrategyEnum sendStrategy;

  /// Template ID to use instead of body. Will use template variable map to fill defined variable slots.
  String template;

  /// Template variables if using a template
  Object templateVariables;

  /// Optionally use inbox name as display name for sender email address
  bool useInboxName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReplyToAliasEmailOptions &&
     other.attachments == attachments &&
     other.body == body &&
     other.charset == charset &&
     other.isHTML == isHTML &&
     other.sendStrategy == sendStrategy &&
     other.template == template &&
     other.templateVariables == templateVariables &&
     other.useInboxName == useInboxName;

  @override
  int get hashCode =>
    (attachments == null ? 0 : attachments.hashCode) +
    (body == null ? 0 : body.hashCode) +
    (charset == null ? 0 : charset.hashCode) +
    (isHTML == null ? 0 : isHTML.hashCode) +
    (sendStrategy == null ? 0 : sendStrategy.hashCode) +
    (template == null ? 0 : template.hashCode) +
    (templateVariables == null ? 0 : templateVariables.hashCode) +
    (useInboxName == null ? 0 : useInboxName.hashCode);

  @override
  String toString() => 'ReplyToAliasEmailOptions[attachments=$attachments, body=$body, charset=$charset, isHTML=$isHTML, sendStrategy=$sendStrategy, template=$template, templateVariables=$templateVariables, useInboxName=$useInboxName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (attachments != null) {
      json[r'attachments'] = attachments;
    }
    if (body != null) {
      json[r'body'] = body;
    }
    if (charset != null) {
      json[r'charset'] = charset;
    }
    if (isHTML != null) {
      json[r'isHTML'] = isHTML;
    }
    if (sendStrategy != null) {
      json[r'sendStrategy'] = sendStrategy;
    }
    if (template != null) {
      json[r'template'] = template;
    }
    if (templateVariables != null) {
      json[r'templateVariables'] = templateVariables;
    }
    if (useInboxName != null) {
      json[r'useInboxName'] = useInboxName;
    }
    return json;
  }

  /// Returns a new [ReplyToAliasEmailOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReplyToAliasEmailOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ReplyToAliasEmailOptions(
        attachments: json[r'attachments'] == null
          ? null
          : (json[r'attachments'] as List).cast<String>(),
        body: json[r'body'],
        charset: json[r'charset'],
        isHTML: json[r'isHTML'],
        sendStrategy: ReplyToAliasEmailOptionsSendStrategyEnum.fromJson(json[r'sendStrategy']),
        template: json[r'template'],
        templateVariables: json[r'templateVariables'],
        useInboxName: json[r'useInboxName'],
    );

  static List<ReplyToAliasEmailOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ReplyToAliasEmailOptions>[]
      : json.map((v) => ReplyToAliasEmailOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, ReplyToAliasEmailOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ReplyToAliasEmailOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ReplyToAliasEmailOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ReplyToAliasEmailOptions-objects as value to a dart map
  static Map<String, List<ReplyToAliasEmailOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ReplyToAliasEmailOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ReplyToAliasEmailOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// When to send the email. Typically immediately
class ReplyToAliasEmailOptionsSendStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const ReplyToAliasEmailOptionsSendStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SINGLE_MESSAGE = ReplyToAliasEmailOptionsSendStrategyEnum._(r'SINGLE_MESSAGE');

  /// List of all possible values in this [enum][ReplyToAliasEmailOptionsSendStrategyEnum].
  static const values = <ReplyToAliasEmailOptionsSendStrategyEnum>[
    SINGLE_MESSAGE,
  ];

  static ReplyToAliasEmailOptionsSendStrategyEnum fromJson(dynamic value) =>
    ReplyToAliasEmailOptionsSendStrategyEnumTypeTransformer().decode(value);

  static List<ReplyToAliasEmailOptionsSendStrategyEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ReplyToAliasEmailOptionsSendStrategyEnum>[]
      : json
          .map((value) => ReplyToAliasEmailOptionsSendStrategyEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [ReplyToAliasEmailOptionsSendStrategyEnum] to String,
/// and [decode] dynamic data back to [ReplyToAliasEmailOptionsSendStrategyEnum].
class ReplyToAliasEmailOptionsSendStrategyEnumTypeTransformer {
  const ReplyToAliasEmailOptionsSendStrategyEnumTypeTransformer._();

  factory ReplyToAliasEmailOptionsSendStrategyEnumTypeTransformer() => _instance ??= ReplyToAliasEmailOptionsSendStrategyEnumTypeTransformer._();

  String encode(ReplyToAliasEmailOptionsSendStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ReplyToAliasEmailOptionsSendStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ReplyToAliasEmailOptionsSendStrategyEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'SINGLE_MESSAGE': return ReplyToAliasEmailOptionsSendStrategyEnum.SINGLE_MESSAGE;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ReplyToAliasEmailOptionsSendStrategyEnumTypeTransformer] instance.
  static ReplyToAliasEmailOptionsSendStrategyEnumTypeTransformer _instance;
}

