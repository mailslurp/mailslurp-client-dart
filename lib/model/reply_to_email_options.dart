//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ReplyToEmailOptions {
  /// Returns a new [ReplyToEmailOptions] instance.
  ReplyToEmailOptions({
    this.attachments = const [],
    this.body,
    this.charset,
    this.from,
    this.isHTML,
    this.replyTo,
    this.sendStrategy,
    this.template,
    this.templateVariables,
  });

  /// List of uploaded attachments to send with the reply. Optional.
  List<String> attachments;

  /// Body of the reply email you want to send
  String body;

  /// The charset that your message should be sent with. Optional. Default is UTF-8
  String charset;

  /// The from header that should be used. Optional
  String from;

  /// Is the reply HTML
  bool isHTML;

  /// The replyTo header that should be used. Optional
  String replyTo;

  /// When to send the email. Typically immediately
  ReplyToEmailOptionsSendStrategyEnum sendStrategy;

  /// Template ID to use instead of body. Will use template variable map to fill defined variable slots.
  String template;

  /// Template variables if using a template
  Object templateVariables;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReplyToEmailOptions &&
     other.attachments == attachments &&
     other.body == body &&
     other.charset == charset &&
     other.from == from &&
     other.isHTML == isHTML &&
     other.replyTo == replyTo &&
     other.sendStrategy == sendStrategy &&
     other.template == template &&
     other.templateVariables == templateVariables;

  @override
  int get hashCode =>
    (attachments == null ? 0 : attachments.hashCode) +
    (body == null ? 0 : body.hashCode) +
    (charset == null ? 0 : charset.hashCode) +
    (from == null ? 0 : from.hashCode) +
    (isHTML == null ? 0 : isHTML.hashCode) +
    (replyTo == null ? 0 : replyTo.hashCode) +
    (sendStrategy == null ? 0 : sendStrategy.hashCode) +
    (template == null ? 0 : template.hashCode) +
    (templateVariables == null ? 0 : templateVariables.hashCode);

  @override
  String toString() => 'ReplyToEmailOptions[attachments=$attachments, body=$body, charset=$charset, from=$from, isHTML=$isHTML, replyTo=$replyTo, sendStrategy=$sendStrategy, template=$template, templateVariables=$templateVariables]';

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
    if (from != null) {
      json[r'from'] = from;
    }
    if (isHTML != null) {
      json[r'isHTML'] = isHTML;
    }
    if (replyTo != null) {
      json[r'replyTo'] = replyTo;
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
    return json;
  }

  /// Returns a new [ReplyToEmailOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReplyToEmailOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ReplyToEmailOptions(
        attachments: json[r'attachments'] == null
          ? null
          : (json[r'attachments'] as List).cast<String>(),
        body: json[r'body'],
        charset: json[r'charset'],
        from: json[r'from'],
        isHTML: json[r'isHTML'],
        replyTo: json[r'replyTo'],
        sendStrategy: ReplyToEmailOptionsSendStrategyEnum.fromJson(json[r'sendStrategy']),
        template: json[r'template'],
        templateVariables: json[r'templateVariables'],
    );

  static List<ReplyToEmailOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ReplyToEmailOptions>[]
      : json.map((v) => ReplyToEmailOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, ReplyToEmailOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ReplyToEmailOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ReplyToEmailOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ReplyToEmailOptions-objects as value to a dart map
  static Map<String, List<ReplyToEmailOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ReplyToEmailOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ReplyToEmailOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// When to send the email. Typically immediately
class ReplyToEmailOptionsSendStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const ReplyToEmailOptionsSendStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SINGLE_MESSAGE = ReplyToEmailOptionsSendStrategyEnum._(r'SINGLE_MESSAGE');

  /// List of all possible values in this [enum][ReplyToEmailOptionsSendStrategyEnum].
  static const values = <ReplyToEmailOptionsSendStrategyEnum>[
    SINGLE_MESSAGE,
  ];

  static ReplyToEmailOptionsSendStrategyEnum fromJson(dynamic value) =>
    ReplyToEmailOptionsSendStrategyEnumTypeTransformer().decode(value);

  static List<ReplyToEmailOptionsSendStrategyEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ReplyToEmailOptionsSendStrategyEnum>[]
      : json
          .map((value) => ReplyToEmailOptionsSendStrategyEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [ReplyToEmailOptionsSendStrategyEnum] to String,
/// and [decode] dynamic data back to [ReplyToEmailOptionsSendStrategyEnum].
class ReplyToEmailOptionsSendStrategyEnumTypeTransformer {
  const ReplyToEmailOptionsSendStrategyEnumTypeTransformer._();

  factory ReplyToEmailOptionsSendStrategyEnumTypeTransformer() => _instance ??= ReplyToEmailOptionsSendStrategyEnumTypeTransformer._();

  String encode(ReplyToEmailOptionsSendStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ReplyToEmailOptionsSendStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ReplyToEmailOptionsSendStrategyEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'SINGLE_MESSAGE': return ReplyToEmailOptionsSendStrategyEnum.SINGLE_MESSAGE;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ReplyToEmailOptionsSendStrategyEnumTypeTransformer] instance.
  static ReplyToEmailOptionsSendStrategyEnumTypeTransformer _instance;
}

