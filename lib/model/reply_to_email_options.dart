//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ReplyToEmailOptions {
  /// Returns a new [ReplyToEmailOptions] instance.
  ReplyToEmailOptions({
    required this.body,
    required this.isHTML,
    this.from,
    this.replyTo,
    this.customHeaders = const {},
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

  /// The from header that should be used. Optional
  String? from;

  /// The replyTo header that should be used. Optional
  String? replyTo;

  /// Optional custom headers
  Map<String, String>? customHeaders;

  /// The charset that your message should be sent with. Optional. Default is UTF-8
  String? charset;

  /// List of uploaded attachments to send with the reply. Optional.
  List<String>? attachments;

  /// Template variables if using a template
  Map<String, Object>? templateVariables;

  /// Template ID to use instead of body. Will use template variable map to fill defined variable slots.
  String? template;

  /// How an email should be sent based on its recipients
  ReplyToEmailOptionsSendStrategyEnum? sendStrategy;

  /// Optionally use inbox name as display name for sender email address
  bool? useInboxName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? html;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReplyToEmailOptions &&
     other.body == body &&
     other.isHTML == isHTML &&
     other.from == from &&
     other.replyTo == replyTo &&
     other.customHeaders == customHeaders &&
     other.charset == charset &&
     other.attachments == attachments &&
     other.templateVariables == templateVariables &&
     other.template == template &&
     other.sendStrategy == sendStrategy &&
     other.useInboxName == useInboxName &&
     other.html == html;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (body.hashCode) +
    (isHTML.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (replyTo == null ? 0 : replyTo!.hashCode) +
    (customHeaders == null ? 0 : customHeaders!.hashCode) +
    (charset == null ? 0 : charset!.hashCode) +
    (attachments == null ? 0 : attachments!.hashCode) +
    (templateVariables == null ? 0 : templateVariables!.hashCode) +
    (template == null ? 0 : template!.hashCode) +
    (sendStrategy == null ? 0 : sendStrategy!.hashCode) +
    (useInboxName == null ? 0 : useInboxName!.hashCode) +
    (html == null ? 0 : html!.hashCode);

  @override
  String toString() => 'ReplyToEmailOptions[body=$body, isHTML=$isHTML, from=$from, replyTo=$replyTo, customHeaders=$customHeaders, charset=$charset, attachments=$attachments, templateVariables=$templateVariables, template=$template, sendStrategy=$sendStrategy, useInboxName=$useInboxName, html=$html]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'body'] = this.body;
      json[r'isHTML'] = this.isHTML;
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
    if (this.replyTo != null) {
      json[r'replyTo'] = this.replyTo;
    } else {
      json[r'replyTo'] = null;
    }
    if (this.customHeaders != null) {
      json[r'customHeaders'] = this.customHeaders;
    } else {
      json[r'customHeaders'] = null;
    }
    if (this.charset != null) {
      json[r'charset'] = this.charset;
    } else {
      json[r'charset'] = null;
    }
    if (this.attachments != null) {
      json[r'attachments'] = this.attachments;
    } else {
      json[r'attachments'] = null;
    }
    if (this.templateVariables != null) {
      json[r'templateVariables'] = this.templateVariables;
    } else {
      json[r'templateVariables'] = null;
    }
    if (this.template != null) {
      json[r'template'] = this.template;
    } else {
      json[r'template'] = null;
    }
    if (this.sendStrategy != null) {
      json[r'sendStrategy'] = this.sendStrategy;
    } else {
      json[r'sendStrategy'] = null;
    }
    if (this.useInboxName != null) {
      json[r'useInboxName'] = this.useInboxName;
    } else {
      json[r'useInboxName'] = null;
    }
    if (this.html != null) {
      json[r'html'] = this.html;
    } else {
      json[r'html'] = null;
    }
    return json;
  }

  /// Returns a new [ReplyToEmailOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReplyToEmailOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReplyToEmailOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReplyToEmailOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReplyToEmailOptions(
        body: mapValueOfType<String>(json, r'body')!,
        isHTML: mapValueOfType<bool>(json, r'isHTML')!,
        from: mapValueOfType<String>(json, r'from'),
        replyTo: mapValueOfType<String>(json, r'replyTo'),
        customHeaders: mapCastOfType<String, String>(json, r'customHeaders') ?? const {},
        charset: mapValueOfType<String>(json, r'charset'),
        attachments: json[r'attachments'] is List
            ? (json[r'attachments'] as List).cast<String>()
            : const [],
        templateVariables: mapCastOfType<String, Object>(json, r'templateVariables') ?? const {},
        template: mapValueOfType<String>(json, r'template'),
        sendStrategy: ReplyToEmailOptionsSendStrategyEnum.fromJson(json[r'sendStrategy']),
        useInboxName: mapValueOfType<bool>(json, r'useInboxName'),
        html: mapValueOfType<bool>(json, r'html'),
      );
    }
    return null;
  }

  static List<ReplyToEmailOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReplyToEmailOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReplyToEmailOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReplyToEmailOptions> mapFromJson(dynamic json) {
    final map = <String, ReplyToEmailOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReplyToEmailOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReplyToEmailOptions-objects as value to a dart map
  static Map<String, List<ReplyToEmailOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReplyToEmailOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReplyToEmailOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'body',
    'isHTML',
  };
}

/// How an email should be sent based on its recipients
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

  static ReplyToEmailOptionsSendStrategyEnum? fromJson(dynamic value) => ReplyToEmailOptionsSendStrategyEnumTypeTransformer().decode(value);

  static List<ReplyToEmailOptionsSendStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReplyToEmailOptionsSendStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReplyToEmailOptionsSendStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ReplyToEmailOptionsSendStrategyEnum] to String,
/// and [decode] dynamic data back to [ReplyToEmailOptionsSendStrategyEnum].
class ReplyToEmailOptionsSendStrategyEnumTypeTransformer {
  factory ReplyToEmailOptionsSendStrategyEnumTypeTransformer() => _instance ??= const ReplyToEmailOptionsSendStrategyEnumTypeTransformer._();

  const ReplyToEmailOptionsSendStrategyEnumTypeTransformer._();

  String encode(ReplyToEmailOptionsSendStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ReplyToEmailOptionsSendStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ReplyToEmailOptionsSendStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SINGLE_MESSAGE': return ReplyToEmailOptionsSendStrategyEnum.SINGLE_MESSAGE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ReplyToEmailOptionsSendStrategyEnumTypeTransformer] instance.
  static ReplyToEmailOptionsSendStrategyEnumTypeTransformer? _instance;
}


