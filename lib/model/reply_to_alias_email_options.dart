//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ReplyToAliasEmailOptions {
  /// Returns a new [ReplyToAliasEmailOptions] instance.
  ReplyToAliasEmailOptions({
    required this.body,
    required this.isHTML,
    this.charset,
    this.attachments = const [],
    this.templateVariables = const {},
    this.template,
    this.sendStrategy,
    this.customHeaders = const {},
    this.useInboxName,
    this.html,
  });

  /// Body of the reply email you want to send
  String body;

  /// Is the reply HTML
  bool isHTML;

  /// The charset that your message should be sent with. Optional. Default is UTF-8
  String? charset;

  /// List of uploaded attachments to send with the reply. Optional.
  List<String>? attachments;

  /// Template variables if using a template
  Map<String, Object>? templateVariables;

  /// Template ID to use instead of body. Will use template variable map to fill defined variable slots.
  String? template;

  /// How an email should be sent based on its recipients
  ReplyToAliasEmailOptionsSendStrategyEnum? sendStrategy;

  /// Optional custom headers
  Map<String, String>? customHeaders;

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
  bool operator ==(Object other) => identical(this, other) || other is ReplyToAliasEmailOptions &&
     other.body == body &&
     other.isHTML == isHTML &&
     other.charset == charset &&
     other.attachments == attachments &&
     other.templateVariables == templateVariables &&
     other.template == template &&
     other.sendStrategy == sendStrategy &&
     other.customHeaders == customHeaders &&
     other.useInboxName == useInboxName &&
     other.html == html;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (body.hashCode) +
    (isHTML.hashCode) +
    (charset == null ? 0 : charset!.hashCode) +
    (attachments == null ? 0 : attachments!.hashCode) +
    (templateVariables == null ? 0 : templateVariables!.hashCode) +
    (template == null ? 0 : template!.hashCode) +
    (sendStrategy == null ? 0 : sendStrategy!.hashCode) +
    (customHeaders == null ? 0 : customHeaders!.hashCode) +
    (useInboxName == null ? 0 : useInboxName!.hashCode) +
    (html == null ? 0 : html!.hashCode);

  @override
  String toString() => 'ReplyToAliasEmailOptions[body=$body, isHTML=$isHTML, charset=$charset, attachments=$attachments, templateVariables=$templateVariables, template=$template, sendStrategy=$sendStrategy, customHeaders=$customHeaders, useInboxName=$useInboxName, html=$html]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'body'] = this.body;
      json[r'isHTML'] = this.isHTML;
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
    if (this.customHeaders != null) {
      json[r'customHeaders'] = this.customHeaders;
    } else {
      json[r'customHeaders'] = null;
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

  /// Returns a new [ReplyToAliasEmailOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReplyToAliasEmailOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReplyToAliasEmailOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReplyToAliasEmailOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReplyToAliasEmailOptions(
        body: mapValueOfType<String>(json, r'body')!,
        isHTML: mapValueOfType<bool>(json, r'isHTML')!,
        charset: mapValueOfType<String>(json, r'charset'),
        attachments: json[r'attachments'] is List
            ? (json[r'attachments'] as List).cast<String>()
            : const [],
        templateVariables: mapCastOfType<String, Object>(json, r'templateVariables') ?? const {},
        template: mapValueOfType<String>(json, r'template'),
        sendStrategy: ReplyToAliasEmailOptionsSendStrategyEnum.fromJson(json[r'sendStrategy']),
        customHeaders: mapCastOfType<String, String>(json, r'customHeaders') ?? const {},
        useInboxName: mapValueOfType<bool>(json, r'useInboxName'),
        html: mapValueOfType<bool>(json, r'html'),
      );
    }
    return null;
  }

  static List<ReplyToAliasEmailOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReplyToAliasEmailOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReplyToAliasEmailOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReplyToAliasEmailOptions> mapFromJson(dynamic json) {
    final map = <String, ReplyToAliasEmailOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReplyToAliasEmailOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReplyToAliasEmailOptions-objects as value to a dart map
  static Map<String, List<ReplyToAliasEmailOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReplyToAliasEmailOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReplyToAliasEmailOptions.listFromJson(entry.value, growable: growable,);
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

  static ReplyToAliasEmailOptionsSendStrategyEnum? fromJson(dynamic value) => ReplyToAliasEmailOptionsSendStrategyEnumTypeTransformer().decode(value);

  static List<ReplyToAliasEmailOptionsSendStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReplyToAliasEmailOptionsSendStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReplyToAliasEmailOptionsSendStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ReplyToAliasEmailOptionsSendStrategyEnum] to String,
/// and [decode] dynamic data back to [ReplyToAliasEmailOptionsSendStrategyEnum].
class ReplyToAliasEmailOptionsSendStrategyEnumTypeTransformer {
  factory ReplyToAliasEmailOptionsSendStrategyEnumTypeTransformer() => _instance ??= const ReplyToAliasEmailOptionsSendStrategyEnumTypeTransformer._();

  const ReplyToAliasEmailOptionsSendStrategyEnumTypeTransformer._();

  String encode(ReplyToAliasEmailOptionsSendStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ReplyToAliasEmailOptionsSendStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ReplyToAliasEmailOptionsSendStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SINGLE_MESSAGE': return ReplyToAliasEmailOptionsSendStrategyEnum.SINGLE_MESSAGE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ReplyToAliasEmailOptionsSendStrategyEnumTypeTransformer] instance.
  static ReplyToAliasEmailOptionsSendStrategyEnumTypeTransformer? _instance;
}


