//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailFeatureSupportStatusPercentage {
  /// Returns a new [EmailFeatureSupportStatusPercentage] instance.
  EmailFeatureSupportStatusPercentage({
    required this.status,
    required this.percentage,
  });

  EmailFeatureSupportStatusPercentageStatusEnum status;

  double percentage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailFeatureSupportStatusPercentage &&
     other.status == status &&
     other.percentage == percentage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (status.hashCode) +
    (percentage.hashCode);

  @override
  String toString() => 'EmailFeatureSupportStatusPercentage[status=$status, percentage=$percentage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = this.status;
      json[r'percentage'] = this.percentage;
    return json;
  }

  /// Returns a new [EmailFeatureSupportStatusPercentage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailFeatureSupportStatusPercentage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailFeatureSupportStatusPercentage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailFeatureSupportStatusPercentage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailFeatureSupportStatusPercentage(
        status: EmailFeatureSupportStatusPercentageStatusEnum.fromJson(json[r'status'])!,
        percentage: mapValueOfType<double>(json, r'percentage')!,
      );
    }
    return null;
  }

  static List<EmailFeatureSupportStatusPercentage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailFeatureSupportStatusPercentage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailFeatureSupportStatusPercentage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailFeatureSupportStatusPercentage> mapFromJson(dynamic json) {
    final map = <String, EmailFeatureSupportStatusPercentage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailFeatureSupportStatusPercentage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailFeatureSupportStatusPercentage-objects as value to a dart map
  static Map<String, List<EmailFeatureSupportStatusPercentage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailFeatureSupportStatusPercentage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailFeatureSupportStatusPercentage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'status',
    'percentage',
  };
}


class EmailFeatureSupportStatusPercentageStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailFeatureSupportStatusPercentageStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SUPPORTED = EmailFeatureSupportStatusPercentageStatusEnum._(r'SUPPORTED');
  static const PARTIAL = EmailFeatureSupportStatusPercentageStatusEnum._(r'PARTIAL');
  static const NOT_SUPPORTED = EmailFeatureSupportStatusPercentageStatusEnum._(r'NOT_SUPPORTED');
  static const UNKNOWN = EmailFeatureSupportStatusPercentageStatusEnum._(r'UNKNOWN');

  /// List of all possible values in this [enum][EmailFeatureSupportStatusPercentageStatusEnum].
  static const values = <EmailFeatureSupportStatusPercentageStatusEnum>[
    SUPPORTED,
    PARTIAL,
    NOT_SUPPORTED,
    UNKNOWN,
  ];

  static EmailFeatureSupportStatusPercentageStatusEnum? fromJson(dynamic value) => EmailFeatureSupportStatusPercentageStatusEnumTypeTransformer().decode(value);

  static List<EmailFeatureSupportStatusPercentageStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailFeatureSupportStatusPercentageStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailFeatureSupportStatusPercentageStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailFeatureSupportStatusPercentageStatusEnum] to String,
/// and [decode] dynamic data back to [EmailFeatureSupportStatusPercentageStatusEnum].
class EmailFeatureSupportStatusPercentageStatusEnumTypeTransformer {
  factory EmailFeatureSupportStatusPercentageStatusEnumTypeTransformer() => _instance ??= const EmailFeatureSupportStatusPercentageStatusEnumTypeTransformer._();

  const EmailFeatureSupportStatusPercentageStatusEnumTypeTransformer._();

  String encode(EmailFeatureSupportStatusPercentageStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailFeatureSupportStatusPercentageStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailFeatureSupportStatusPercentageStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SUPPORTED': return EmailFeatureSupportStatusPercentageStatusEnum.SUPPORTED;
        case r'PARTIAL': return EmailFeatureSupportStatusPercentageStatusEnum.PARTIAL;
        case r'NOT_SUPPORTED': return EmailFeatureSupportStatusPercentageStatusEnum.NOT_SUPPORTED;
        case r'UNKNOWN': return EmailFeatureSupportStatusPercentageStatusEnum.UNKNOWN;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailFeatureSupportStatusPercentageStatusEnumTypeTransformer] instance.
  static EmailFeatureSupportStatusPercentageStatusEnumTypeTransformer? _instance;
}


