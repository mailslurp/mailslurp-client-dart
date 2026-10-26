//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailDomainReputationResult {
  /// Returns a new [EmailDomainReputationResult] instance.
  EmailDomainReputationResult({
    required this.input,
    required this.normalizedTarget,
    this.emailAddress,
    this.domain,
    this.ipAddress,
    this.mxHost,
    required this.status,
    required this.listed,
    this.blacklist,
    this.insights = const [],
    this.warnings = const [],
    this.errors = const [],
  });

  String input;

  String normalizedTarget;

  String? emailAddress;

  String? domain;

  String? ipAddress;

  String? mxHost;

  EmailDomainReputationResultStatusEnum status;

  bool listed;

  CheckEmailBlacklistResults? blacklist;

  List<String> insights;

  List<String> warnings;

  List<String> errors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailDomainReputationResult &&
     other.input == input &&
     other.normalizedTarget == normalizedTarget &&
     other.emailAddress == emailAddress &&
     other.domain == domain &&
     other.ipAddress == ipAddress &&
     other.mxHost == mxHost &&
     other.status == status &&
     other.listed == listed &&
     other.blacklist == blacklist &&
     other.insights == insights &&
     other.warnings == warnings &&
     other.errors == errors;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (input.hashCode) +
    (normalizedTarget.hashCode) +
    (emailAddress == null ? 0 : emailAddress!.hashCode) +
    (domain == null ? 0 : domain!.hashCode) +
    (ipAddress == null ? 0 : ipAddress!.hashCode) +
    (mxHost == null ? 0 : mxHost!.hashCode) +
    (status.hashCode) +
    (listed.hashCode) +
    (blacklist == null ? 0 : blacklist!.hashCode) +
    (insights.hashCode) +
    (warnings.hashCode) +
    (errors.hashCode);

  @override
  String toString() => 'EmailDomainReputationResult[input=$input, normalizedTarget=$normalizedTarget, emailAddress=$emailAddress, domain=$domain, ipAddress=$ipAddress, mxHost=$mxHost, status=$status, listed=$listed, blacklist=$blacklist, insights=$insights, warnings=$warnings, errors=$errors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'input'] = this.input;
      json[r'normalizedTarget'] = this.normalizedTarget;
    if (this.emailAddress != null) {
      json[r'emailAddress'] = this.emailAddress;
    } else {
      json[r'emailAddress'] = null;
    }
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
    }
    if (this.ipAddress != null) {
      json[r'ipAddress'] = this.ipAddress;
    } else {
      json[r'ipAddress'] = null;
    }
    if (this.mxHost != null) {
      json[r'mxHost'] = this.mxHost;
    } else {
      json[r'mxHost'] = null;
    }
      json[r'status'] = this.status;
      json[r'listed'] = this.listed;
    if (this.blacklist != null) {
      json[r'blacklist'] = this.blacklist;
    } else {
      json[r'blacklist'] = null;
    }
      json[r'insights'] = this.insights;
      json[r'warnings'] = this.warnings;
      json[r'errors'] = this.errors;
    return json;
  }

  /// Returns a new [EmailDomainReputationResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailDomainReputationResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailDomainReputationResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailDomainReputationResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailDomainReputationResult(
        input: mapValueOfType<String>(json, r'input')!,
        normalizedTarget: mapValueOfType<String>(json, r'normalizedTarget')!,
        emailAddress: mapValueOfType<String>(json, r'emailAddress'),
        domain: mapValueOfType<String>(json, r'domain'),
        ipAddress: mapValueOfType<String>(json, r'ipAddress'),
        mxHost: mapValueOfType<String>(json, r'mxHost'),
        status: EmailDomainReputationResultStatusEnum.fromJson(json[r'status'])!,
        listed: mapValueOfType<bool>(json, r'listed')!,
        blacklist: CheckEmailBlacklistResults.fromJson(json[r'blacklist']),
        insights: json[r'insights'] is List
            ? (json[r'insights'] as List).cast<String>()
            : const [],
        warnings: json[r'warnings'] is List
            ? (json[r'warnings'] as List).cast<String>()
            : const [],
        errors: json[r'errors'] is List
            ? (json[r'errors'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<EmailDomainReputationResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailDomainReputationResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailDomainReputationResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailDomainReputationResult> mapFromJson(dynamic json) {
    final map = <String, EmailDomainReputationResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailDomainReputationResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailDomainReputationResult-objects as value to a dart map
  static Map<String, List<EmailDomainReputationResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailDomainReputationResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailDomainReputationResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'input',
    'normalizedTarget',
    'status',
    'listed',
    'insights',
    'warnings',
    'errors',
  };
}


class EmailDomainReputationResultStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailDomainReputationResultStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HEALTHY = EmailDomainReputationResultStatusEnum._(r'HEALTHY');
  static const DEGRADED = EmailDomainReputationResultStatusEnum._(r'DEGRADED');
  static const CRITICAL = EmailDomainReputationResultStatusEnum._(r'CRITICAL');
  static const FAILED = EmailDomainReputationResultStatusEnum._(r'FAILED');

  /// List of all possible values in this [enum][EmailDomainReputationResultStatusEnum].
  static const values = <EmailDomainReputationResultStatusEnum>[
    HEALTHY,
    DEGRADED,
    CRITICAL,
    FAILED,
  ];

  static EmailDomainReputationResultStatusEnum? fromJson(dynamic value) => EmailDomainReputationResultStatusEnumTypeTransformer().decode(value);

  static List<EmailDomainReputationResultStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailDomainReputationResultStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailDomainReputationResultStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailDomainReputationResultStatusEnum] to String,
/// and [decode] dynamic data back to [EmailDomainReputationResultStatusEnum].
class EmailDomainReputationResultStatusEnumTypeTransformer {
  factory EmailDomainReputationResultStatusEnumTypeTransformer() => _instance ??= const EmailDomainReputationResultStatusEnumTypeTransformer._();

  const EmailDomainReputationResultStatusEnumTypeTransformer._();

  String encode(EmailDomainReputationResultStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailDomainReputationResultStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailDomainReputationResultStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HEALTHY': return EmailDomainReputationResultStatusEnum.HEALTHY;
        case r'DEGRADED': return EmailDomainReputationResultStatusEnum.DEGRADED;
        case r'CRITICAL': return EmailDomainReputationResultStatusEnum.CRITICAL;
        case r'FAILED': return EmailDomainReputationResultStatusEnum.FAILED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailDomainReputationResultStatusEnumTypeTransformer] instance.
  static EmailDomainReputationResultStatusEnumTypeTransformer? _instance;
}


