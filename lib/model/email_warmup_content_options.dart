//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailWarmupContentOptions {
  /// Returns a new [EmailWarmupContentOptions] instance.
  EmailWarmupContentOptions({
    required this.source_,
    this.subject,
    this.textBody,
    this.htmlBody,
  });

  EmailWarmupContentOptionsSource_Enum source_;

  String? subject;

  String? textBody;

  String? htmlBody;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailWarmupContentOptions &&
     other.source_ == source_ &&
     other.subject == subject &&
     other.textBody == textBody &&
     other.htmlBody == htmlBody;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (source_.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (textBody == null ? 0 : textBody!.hashCode) +
    (htmlBody == null ? 0 : htmlBody!.hashCode);

  @override
  String toString() => 'EmailWarmupContentOptions[source_=$source_, subject=$subject, textBody=$textBody, htmlBody=$htmlBody]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'source'] = this.source_;
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.textBody != null) {
      json[r'textBody'] = this.textBody;
    } else {
      json[r'textBody'] = null;
    }
    if (this.htmlBody != null) {
      json[r'htmlBody'] = this.htmlBody;
    } else {
      json[r'htmlBody'] = null;
    }
    return json;
  }

  /// Returns a new [EmailWarmupContentOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailWarmupContentOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailWarmupContentOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailWarmupContentOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailWarmupContentOptions(
        source_: EmailWarmupContentOptionsSource_Enum.fromJson(json[r'source'])!,
        subject: mapValueOfType<String>(json, r'subject'),
        textBody: mapValueOfType<String>(json, r'textBody'),
        htmlBody: mapValueOfType<String>(json, r'htmlBody'),
      );
    }
    return null;
  }

  static List<EmailWarmupContentOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupContentOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupContentOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailWarmupContentOptions> mapFromJson(dynamic json) {
    final map = <String, EmailWarmupContentOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailWarmupContentOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailWarmupContentOptions-objects as value to a dart map
  static Map<String, List<EmailWarmupContentOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailWarmupContentOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailWarmupContentOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'source',
  };
}


class EmailWarmupContentOptionsSource_Enum {
  /// Instantiate a new enum with the provided [value].
  const EmailWarmupContentOptionsSource_Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MANAGED_CONTROL = EmailWarmupContentOptionsSource_Enum._(r'MANAGED_CONTROL');
  static const CUSTOM_TEMPLATE = EmailWarmupContentOptionsSource_Enum._(r'CUSTOM_TEMPLATE');
  static const AI_ASSISTED_TEMPLATE = EmailWarmupContentOptionsSource_Enum._(r'AI_ASSISTED_TEMPLATE');

  /// List of all possible values in this [enum][EmailWarmupContentOptionsSource_Enum].
  static const values = <EmailWarmupContentOptionsSource_Enum>[
    MANAGED_CONTROL,
    CUSTOM_TEMPLATE,
    AI_ASSISTED_TEMPLATE,
  ];

  static EmailWarmupContentOptionsSource_Enum? fromJson(dynamic value) => EmailWarmupContentOptionsSource_EnumTypeTransformer().decode(value);

  static List<EmailWarmupContentOptionsSource_Enum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupContentOptionsSource_Enum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupContentOptionsSource_Enum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailWarmupContentOptionsSource_Enum] to String,
/// and [decode] dynamic data back to [EmailWarmupContentOptionsSource_Enum].
class EmailWarmupContentOptionsSource_EnumTypeTransformer {
  factory EmailWarmupContentOptionsSource_EnumTypeTransformer() => _instance ??= const EmailWarmupContentOptionsSource_EnumTypeTransformer._();

  const EmailWarmupContentOptionsSource_EnumTypeTransformer._();

  String encode(EmailWarmupContentOptionsSource_Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailWarmupContentOptionsSource_Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailWarmupContentOptionsSource_Enum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MANAGED_CONTROL': return EmailWarmupContentOptionsSource_Enum.MANAGED_CONTROL;
        case r'CUSTOM_TEMPLATE': return EmailWarmupContentOptionsSource_Enum.CUSTOM_TEMPLATE;
        case r'AI_ASSISTED_TEMPLATE': return EmailWarmupContentOptionsSource_Enum.AI_ASSISTED_TEMPLATE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailWarmupContentOptionsSource_EnumTypeTransformer] instance.
  static EmailWarmupContentOptionsSource_EnumTypeTransformer? _instance;
}


