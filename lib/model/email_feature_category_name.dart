//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailFeatureCategoryName {
  /// Returns a new [EmailFeatureCategoryName] instance.
  EmailFeatureCategoryName({
    required this.slug,
    required this.name,
  });

  EmailFeatureCategoryNameSlugEnum slug;

  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailFeatureCategoryName &&
     other.slug == slug &&
     other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (slug.hashCode) +
    (name.hashCode);

  @override
  String toString() => 'EmailFeatureCategoryName[slug=$slug, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'slug'] = this.slug;
      json[r'name'] = this.name;
    return json;
  }

  /// Returns a new [EmailFeatureCategoryName] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailFeatureCategoryName? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailFeatureCategoryName[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailFeatureCategoryName[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailFeatureCategoryName(
        slug: EmailFeatureCategoryNameSlugEnum.fromJson(json[r'slug'])!,
        name: mapValueOfType<String>(json, r'name')!,
      );
    }
    return null;
  }

  static List<EmailFeatureCategoryName> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailFeatureCategoryName>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailFeatureCategoryName.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailFeatureCategoryName> mapFromJson(dynamic json) {
    final map = <String, EmailFeatureCategoryName>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailFeatureCategoryName.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailFeatureCategoryName-objects as value to a dart map
  static Map<String, List<EmailFeatureCategoryName>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailFeatureCategoryName>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailFeatureCategoryName.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'slug',
    'name',
  };
}


class EmailFeatureCategoryNameSlugEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailFeatureCategoryNameSlugEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const css = EmailFeatureCategoryNameSlugEnum._(r'css');
  static const html = EmailFeatureCategoryNameSlugEnum._(r'html');
  static const image = EmailFeatureCategoryNameSlugEnum._(r'image');
  static const others = EmailFeatureCategoryNameSlugEnum._(r'others');

  /// List of all possible values in this [enum][EmailFeatureCategoryNameSlugEnum].
  static const values = <EmailFeatureCategoryNameSlugEnum>[
    css,
    html,
    image,
    others,
  ];

  static EmailFeatureCategoryNameSlugEnum? fromJson(dynamic value) => EmailFeatureCategoryNameSlugEnumTypeTransformer().decode(value);

  static List<EmailFeatureCategoryNameSlugEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailFeatureCategoryNameSlugEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailFeatureCategoryNameSlugEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailFeatureCategoryNameSlugEnum] to String,
/// and [decode] dynamic data back to [EmailFeatureCategoryNameSlugEnum].
class EmailFeatureCategoryNameSlugEnumTypeTransformer {
  factory EmailFeatureCategoryNameSlugEnumTypeTransformer() => _instance ??= const EmailFeatureCategoryNameSlugEnumTypeTransformer._();

  const EmailFeatureCategoryNameSlugEnumTypeTransformer._();

  String encode(EmailFeatureCategoryNameSlugEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailFeatureCategoryNameSlugEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailFeatureCategoryNameSlugEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'css': return EmailFeatureCategoryNameSlugEnum.css;
        case r'html': return EmailFeatureCategoryNameSlugEnum.html;
        case r'image': return EmailFeatureCategoryNameSlugEnum.image;
        case r'others': return EmailFeatureCategoryNameSlugEnum.others;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailFeatureCategoryNameSlugEnumTypeTransformer] instance.
  static EmailFeatureCategoryNameSlugEnumTypeTransformer? _instance;
}


