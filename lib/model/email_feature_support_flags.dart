//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailFeatureSupportFlags {
  /// Returns a new [EmailFeatureSupportFlags] instance.
  EmailFeatureSupportFlags({
    required this.status,
    this.notes = const {},
  });

  EmailFeatureSupportFlagsStatusEnum status;

  Set<String> notes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailFeatureSupportFlags &&
     other.status == status &&
     other.notes == notes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (status.hashCode) +
    (notes.hashCode);

  @override
  String toString() => 'EmailFeatureSupportFlags[status=$status, notes=$notes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = this.status;
      json[r'notes'] = this.notes;
    return json;
  }

  /// Returns a new [EmailFeatureSupportFlags] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailFeatureSupportFlags? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailFeatureSupportFlags[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailFeatureSupportFlags[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailFeatureSupportFlags(
        status: EmailFeatureSupportFlagsStatusEnum.fromJson(json[r'status'])!,
        notes: json[r'notes'] is Set
            ? (json[r'notes'] as Set).cast<String>()
            : const {},
      );
    }
    return null;
  }

  static List<EmailFeatureSupportFlags> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailFeatureSupportFlags>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailFeatureSupportFlags.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailFeatureSupportFlags> mapFromJson(dynamic json) {
    final map = <String, EmailFeatureSupportFlags>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailFeatureSupportFlags.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailFeatureSupportFlags-objects as value to a dart map
  static Map<String, List<EmailFeatureSupportFlags>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailFeatureSupportFlags>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailFeatureSupportFlags.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'status',
  };
}


class EmailFeatureSupportFlagsStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailFeatureSupportFlagsStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SUPPORTED = EmailFeatureSupportFlagsStatusEnum._(r'SUPPORTED');
  static const PARTIAL = EmailFeatureSupportFlagsStatusEnum._(r'PARTIAL');
  static const NOT_SUPPORTED = EmailFeatureSupportFlagsStatusEnum._(r'NOT_SUPPORTED');
  static const UNKNOWN = EmailFeatureSupportFlagsStatusEnum._(r'UNKNOWN');

  /// List of all possible values in this [enum][EmailFeatureSupportFlagsStatusEnum].
  static const values = <EmailFeatureSupportFlagsStatusEnum>[
    SUPPORTED,
    PARTIAL,
    NOT_SUPPORTED,
    UNKNOWN,
  ];

  static EmailFeatureSupportFlagsStatusEnum? fromJson(dynamic value) => EmailFeatureSupportFlagsStatusEnumTypeTransformer().decode(value);

  static List<EmailFeatureSupportFlagsStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailFeatureSupportFlagsStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailFeatureSupportFlagsStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailFeatureSupportFlagsStatusEnum] to String,
/// and [decode] dynamic data back to [EmailFeatureSupportFlagsStatusEnum].
class EmailFeatureSupportFlagsStatusEnumTypeTransformer {
  factory EmailFeatureSupportFlagsStatusEnumTypeTransformer() => _instance ??= const EmailFeatureSupportFlagsStatusEnumTypeTransformer._();

  const EmailFeatureSupportFlagsStatusEnumTypeTransformer._();

  String encode(EmailFeatureSupportFlagsStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailFeatureSupportFlagsStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailFeatureSupportFlagsStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SUPPORTED': return EmailFeatureSupportFlagsStatusEnum.SUPPORTED;
        case r'PARTIAL': return EmailFeatureSupportFlagsStatusEnum.PARTIAL;
        case r'NOT_SUPPORTED': return EmailFeatureSupportFlagsStatusEnum.NOT_SUPPORTED;
        case r'UNKNOWN': return EmailFeatureSupportFlagsStatusEnum.UNKNOWN;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailFeatureSupportFlagsStatusEnumTypeTransformer] instance.
  static EmailFeatureSupportFlagsStatusEnumTypeTransformer? _instance;
}


