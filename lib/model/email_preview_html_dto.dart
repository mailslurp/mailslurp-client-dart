//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailPreviewHtmlDto {
  /// Returns a new [EmailPreviewHtmlDto] instance.
  EmailPreviewHtmlDto({
    this.subject,
    required this.html,
    required this.linkBehavior,
  });

  /// Email subject when available
  String? subject;

  /// Server-normalized preview HTML with active content removed
  String html;

  /// Controls navigation for links in hardened email HTML previews. Original email HTML endpoints are unaffected.
  EmailPreviewHtmlDtoLinkBehaviorEnum linkBehavior;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailPreviewHtmlDto &&
     other.subject == subject &&
     other.html == html &&
     other.linkBehavior == linkBehavior;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (subject == null ? 0 : subject!.hashCode) +
    (html.hashCode) +
    (linkBehavior.hashCode);

  @override
  String toString() => 'EmailPreviewHtmlDto[subject=$subject, html=$html, linkBehavior=$linkBehavior]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
      json[r'html'] = this.html;
      json[r'linkBehavior'] = this.linkBehavior;
    return json;
  }

  /// Returns a new [EmailPreviewHtmlDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailPreviewHtmlDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailPreviewHtmlDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailPreviewHtmlDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailPreviewHtmlDto(
        subject: mapValueOfType<String>(json, r'subject'),
        html: mapValueOfType<String>(json, r'html')!,
        linkBehavior: EmailPreviewHtmlDtoLinkBehaviorEnum.fromJson(json[r'linkBehavior'])!,
      );
    }
    return null;
  }

  static List<EmailPreviewHtmlDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailPreviewHtmlDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailPreviewHtmlDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailPreviewHtmlDto> mapFromJson(dynamic json) {
    final map = <String, EmailPreviewHtmlDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailPreviewHtmlDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailPreviewHtmlDto-objects as value to a dart map
  static Map<String, List<EmailPreviewHtmlDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailPreviewHtmlDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailPreviewHtmlDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'html',
    'linkBehavior',
  };
}

/// Controls navigation for links in hardened email HTML previews. Original email HTML endpoints are unaffected.
class EmailPreviewHtmlDtoLinkBehaviorEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailPreviewHtmlDtoLinkBehaviorEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PRESERVE = EmailPreviewHtmlDtoLinkBehaviorEnum._(r'PRESERVE');
  static const NEW_TAB = EmailPreviewHtmlDtoLinkBehaviorEnum._(r'NEW_TAB');
  static const DISABLED = EmailPreviewHtmlDtoLinkBehaviorEnum._(r'DISABLED');

  /// List of all possible values in this [enum][EmailPreviewHtmlDtoLinkBehaviorEnum].
  static const values = <EmailPreviewHtmlDtoLinkBehaviorEnum>[
    PRESERVE,
    NEW_TAB,
    DISABLED,
  ];

  static EmailPreviewHtmlDtoLinkBehaviorEnum? fromJson(dynamic value) => EmailPreviewHtmlDtoLinkBehaviorEnumTypeTransformer().decode(value);

  static List<EmailPreviewHtmlDtoLinkBehaviorEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailPreviewHtmlDtoLinkBehaviorEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailPreviewHtmlDtoLinkBehaviorEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailPreviewHtmlDtoLinkBehaviorEnum] to String,
/// and [decode] dynamic data back to [EmailPreviewHtmlDtoLinkBehaviorEnum].
class EmailPreviewHtmlDtoLinkBehaviorEnumTypeTransformer {
  factory EmailPreviewHtmlDtoLinkBehaviorEnumTypeTransformer() => _instance ??= const EmailPreviewHtmlDtoLinkBehaviorEnumTypeTransformer._();

  const EmailPreviewHtmlDtoLinkBehaviorEnumTypeTransformer._();

  String encode(EmailPreviewHtmlDtoLinkBehaviorEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailPreviewHtmlDtoLinkBehaviorEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailPreviewHtmlDtoLinkBehaviorEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PRESERVE': return EmailPreviewHtmlDtoLinkBehaviorEnum.PRESERVE;
        case r'NEW_TAB': return EmailPreviewHtmlDtoLinkBehaviorEnum.NEW_TAB;
        case r'DISABLED': return EmailPreviewHtmlDtoLinkBehaviorEnum.DISABLED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailPreviewHtmlDtoLinkBehaviorEnumTypeTransformer] instance.
  static EmailPreviewHtmlDtoLinkBehaviorEnumTypeTransformer? _instance;
}


