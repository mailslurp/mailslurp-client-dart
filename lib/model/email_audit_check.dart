//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailAuditCheck {
  /// Returns a new [EmailAuditCheck] instance.
  EmailAuditCheck({
    required this.id,
    required this.category,
    required this.status,
    required this.title,
    required this.message,
    required this.recommendation,
    this.evidence = const [],
    this.referenceUrl,
  });

  String id;

  /// Email audit check category
  EmailAuditCheckCategoryEnum category;

  /// Outcome of an automated email check; REVIEW requires human verification and is not a compliance verdict
  EmailAuditCheckStatusEnum status;

  String title;

  String message;

  String recommendation;

  List<String> evidence;

  String? referenceUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailAuditCheck &&
     other.id == id &&
     other.category == category &&
     other.status == status &&
     other.title == title &&
     other.message == message &&
     other.recommendation == recommendation &&
     other.evidence == evidence &&
     other.referenceUrl == referenceUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (category.hashCode) +
    (status.hashCode) +
    (title.hashCode) +
    (message.hashCode) +
    (recommendation.hashCode) +
    (evidence.hashCode) +
    (referenceUrl == null ? 0 : referenceUrl!.hashCode);

  @override
  String toString() => 'EmailAuditCheck[id=$id, category=$category, status=$status, title=$title, message=$message, recommendation=$recommendation, evidence=$evidence, referenceUrl=$referenceUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'category'] = this.category;
      json[r'status'] = this.status;
      json[r'title'] = this.title;
      json[r'message'] = this.message;
      json[r'recommendation'] = this.recommendation;
      json[r'evidence'] = this.evidence;
    if (this.referenceUrl != null) {
      json[r'referenceUrl'] = this.referenceUrl;
    } else {
      json[r'referenceUrl'] = null;
    }
    return json;
  }

  /// Returns a new [EmailAuditCheck] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailAuditCheck? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailAuditCheck[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailAuditCheck[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailAuditCheck(
        id: mapValueOfType<String>(json, r'id')!,
        category: EmailAuditCheckCategoryEnum.fromJson(json[r'category'])!,
        status: EmailAuditCheckStatusEnum.fromJson(json[r'status'])!,
        title: mapValueOfType<String>(json, r'title')!,
        message: mapValueOfType<String>(json, r'message')!,
        recommendation: mapValueOfType<String>(json, r'recommendation')!,
        evidence: json[r'evidence'] is List
            ? (json[r'evidence'] as List).cast<String>()
            : const [],
        referenceUrl: mapValueOfType<String>(json, r'referenceUrl'),
      );
    }
    return null;
  }

  static List<EmailAuditCheck> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailAuditCheck>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailAuditCheck.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailAuditCheck> mapFromJson(dynamic json) {
    final map = <String, EmailAuditCheck>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailAuditCheck.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailAuditCheck-objects as value to a dart map
  static Map<String, List<EmailAuditCheck>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailAuditCheck>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailAuditCheck.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'category',
    'status',
    'title',
    'message',
    'recommendation',
    'evidence',
  };
}

/// Email audit check category
class EmailAuditCheckCategoryEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailAuditCheckCategoryEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ACCESSIBILITY = EmailAuditCheckCategoryEnum._(r'ACCESSIBILITY');
  static const TEMPLATE = EmailAuditCheckCategoryEnum._(r'TEMPLATE');
  static const COMPLIANCE = EmailAuditCheckCategoryEnum._(r'COMPLIANCE');

  /// List of all possible values in this [enum][EmailAuditCheckCategoryEnum].
  static const values = <EmailAuditCheckCategoryEnum>[
    ACCESSIBILITY,
    TEMPLATE,
    COMPLIANCE,
  ];

  static EmailAuditCheckCategoryEnum? fromJson(dynamic value) => EmailAuditCheckCategoryEnumTypeTransformer().decode(value);

  static List<EmailAuditCheckCategoryEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailAuditCheckCategoryEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailAuditCheckCategoryEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailAuditCheckCategoryEnum] to String,
/// and [decode] dynamic data back to [EmailAuditCheckCategoryEnum].
class EmailAuditCheckCategoryEnumTypeTransformer {
  factory EmailAuditCheckCategoryEnumTypeTransformer() => _instance ??= const EmailAuditCheckCategoryEnumTypeTransformer._();

  const EmailAuditCheckCategoryEnumTypeTransformer._();

  String encode(EmailAuditCheckCategoryEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailAuditCheckCategoryEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailAuditCheckCategoryEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ACCESSIBILITY': return EmailAuditCheckCategoryEnum.ACCESSIBILITY;
        case r'TEMPLATE': return EmailAuditCheckCategoryEnum.TEMPLATE;
        case r'COMPLIANCE': return EmailAuditCheckCategoryEnum.COMPLIANCE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailAuditCheckCategoryEnumTypeTransformer] instance.
  static EmailAuditCheckCategoryEnumTypeTransformer? _instance;
}


/// Outcome of an automated email check; REVIEW requires human verification and is not a compliance verdict
class EmailAuditCheckStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailAuditCheckStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PASS = EmailAuditCheckStatusEnum._(r'PASS');
  static const WARN = EmailAuditCheckStatusEnum._(r'WARN');
  static const FAIL = EmailAuditCheckStatusEnum._(r'FAIL');
  static const REVIEW = EmailAuditCheckStatusEnum._(r'REVIEW');
  static const NOT_APPLICABLE = EmailAuditCheckStatusEnum._(r'NOT_APPLICABLE');

  /// List of all possible values in this [enum][EmailAuditCheckStatusEnum].
  static const values = <EmailAuditCheckStatusEnum>[
    PASS,
    WARN,
    FAIL,
    REVIEW,
    NOT_APPLICABLE,
  ];

  static EmailAuditCheckStatusEnum? fromJson(dynamic value) => EmailAuditCheckStatusEnumTypeTransformer().decode(value);

  static List<EmailAuditCheckStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailAuditCheckStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailAuditCheckStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailAuditCheckStatusEnum] to String,
/// and [decode] dynamic data back to [EmailAuditCheckStatusEnum].
class EmailAuditCheckStatusEnumTypeTransformer {
  factory EmailAuditCheckStatusEnumTypeTransformer() => _instance ??= const EmailAuditCheckStatusEnumTypeTransformer._();

  const EmailAuditCheckStatusEnumTypeTransformer._();

  String encode(EmailAuditCheckStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailAuditCheckStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailAuditCheckStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PASS': return EmailAuditCheckStatusEnum.PASS;
        case r'WARN': return EmailAuditCheckStatusEnum.WARN;
        case r'FAIL': return EmailAuditCheckStatusEnum.FAIL;
        case r'REVIEW': return EmailAuditCheckStatusEnum.REVIEW;
        case r'NOT_APPLICABLE': return EmailAuditCheckStatusEnum.NOT_APPLICABLE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailAuditCheckStatusEnumTypeTransformer] instance.
  static EmailAuditCheckStatusEnumTypeTransformer? _instance;
}


