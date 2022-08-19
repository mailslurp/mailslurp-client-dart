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
    @required this.body,
    @required this.isHTML,
    this.charset,
    this.attachments = const [],
    this.templateVariables = const {},
    this.template,
    this.sendStrategy,
    this.useInboxName,
    this.html,
  });

  /// Body of the reply email you want to send
  String body;

  /// Is the reply HTML
  bool isHTML;

  /// The charset that your message should be sent with. Optional. Default is UTF-8
  String charset;

  /// List of uploaded attachments to send with the reply. Optional.
  List<String> attachments;

  /// Template variables if using a template
  Map<String, Object> templateVariables;

  /// Template ID to use instead of body. Will use template variable map to fill defined variable slots.
  String template;

  /// How an email should be sent based on its recipients
  ReplyToAliasEmailOptionsSendStrategyEnum sendStrategy;

  /// Optionally use inbox name as display name for sender email address
  bool useInboxName;

  bool html;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReplyToAliasEmailOptions &&
     other.body == body &&
     other.isHTML == isHTML &&
     other.charset == charset &&
     other.attachments == attachments &&
     other.templateVariables == templateVariables &&
     other.template == template &&
     other.sendStrategy == sendStrategy &&
     other.useInboxName == useInboxName &&
     other.html == html;

  @override
  int get hashCode =>
    (body == null ? 0 : body.hashCode) +
    (isHTML == null ? 0 : isHTML.hashCode) +
    (charset == null ? 0 : charset.hashCode) +
    (attachments == null ? 0 : attachments.hashCode) +
    (templateVariables == null ? 0 : templateVariables.hashCode) +
    (template == null ? 0 : template.hashCode) +
    (sendStrategy == null ? 0 : sendStrategy.hashCode) +
    (useInboxName == null ? 0 : useInboxName.hashCode) +
    (html == null ? 0 : html.hashCode);

  @override
  String toString() => 'ReplyToAliasEmailOptions[body=$body, isHTML=$isHTML, charset=$charset, attachments=$attachments, templateVariables=$templateVariables, template=$template, sendStrategy=$sendStrategy, useInboxName=$useInboxName, html=$html]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'body'] = body;
      json[r'isHTML'] = isHTML;
    if (charset != null) {
      json[r'charset'] = charset;
    }
    if (attachments != null) {
      json[r'attachments'] = attachments;
    }
    if (templateVariables != null) {
      json[r'templateVariables'] = templateVariables;
    }
    if (template != null) {
      json[r'template'] = template;
    }
    if (sendStrategy != null) {
      json[r'sendStrategy'] = sendStrategy;
    }
    if (useInboxName != null) {
      json[r'useInboxName'] = useInboxName;
    }
    if (html != null) {
      json[r'html'] = html;
    }
    return json;
  }

  /// Returns a new [ReplyToAliasEmailOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReplyToAliasEmailOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ReplyToAliasEmailOptions(
        body: json[r'body'],
        isHTML: json[r'isHTML'],
        charset: json[r'charset'],
        attachments: json[r'attachments'] == null
          ? null
          : (json[r'attachments'] as List).cast<String>(),
        templateVariables: json[r'templateVariables'] == null
          ? null
          : Object.mapFromJson(json[r'templateVariables']),
        template: json[r'template'],
        sendStrategy: ReplyToAliasEmailOptionsSendStrategyEnum.fromJson(json[r'sendStrategy']),
        useInboxName: json[r'useInboxName'],
        html: json[r'html'],
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

/// How an email should be sent based on its recipients
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

