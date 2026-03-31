//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailAuditAnalysisResult {
  /// Returns a new [EmailAuditAnalysisResult] instance.
  EmailAuditAnalysisResult({
    required this.status,
    required this.healthScore,
    required this.totalChecks,
    required this.passingChecks,
    required this.failingChecks,
    required this.detectedLinks,
    required this.checkedLinks,
    required this.detectedImages,
    required this.checkedImages,
    required this.linkIssueCount,
    required this.imageIssueCount,
    required this.spellingIssueCount,
    this.brokenLinks = const [],
    this.brokenImages = const [],
    this.spellingIssues = const [],
    required this.compatibilityWarningCount,
    required this.compatibilityNotSupportedCount,
    required this.compatibilityUnknownCount,
    this.featureSupport,
    required this.htmlErrorCount,
    required this.htmlWarningCount,
    required this.htmlInfoCount,
    this.htmlValidation,
    required this.reputationFailureCount,
    required this.attachmentMentionIssueCount,
    required this.externalCheckSkippedCount,
    this.insights = const [],
    this.errorMessage,
  });

  /// Health status for a one-shot email audit
  EmailAuditAnalysisResultStatusEnum status;

  int healthScore;

  int totalChecks;

  int passingChecks;

  int failingChecks;

  int detectedLinks;

  int checkedLinks;

  int detectedImages;

  int checkedImages;

  int linkIssueCount;

  int imageIssueCount;

  int spellingIssueCount;

  List<EmailAuditUrlIssue> brokenLinks;

  List<EmailAuditUrlIssue> brokenImages;

  List<EmailAuditSpellingIssue> spellingIssues;

  int compatibilityWarningCount;

  int compatibilityNotSupportedCount;

  int compatibilityUnknownCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EmailFeatureSupportResult? featureSupport;

  int htmlErrorCount;

  int htmlWarningCount;

  int htmlInfoCount;

  HTMLValidationResult? htmlValidation;

  int reputationFailureCount;

  int attachmentMentionIssueCount;

  int externalCheckSkippedCount;

  List<String> insights;

  String? errorMessage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailAuditAnalysisResult &&
     other.status == status &&
     other.healthScore == healthScore &&
     other.totalChecks == totalChecks &&
     other.passingChecks == passingChecks &&
     other.failingChecks == failingChecks &&
     other.detectedLinks == detectedLinks &&
     other.checkedLinks == checkedLinks &&
     other.detectedImages == detectedImages &&
     other.checkedImages == checkedImages &&
     other.linkIssueCount == linkIssueCount &&
     other.imageIssueCount == imageIssueCount &&
     other.spellingIssueCount == spellingIssueCount &&
     other.brokenLinks == brokenLinks &&
     other.brokenImages == brokenImages &&
     other.spellingIssues == spellingIssues &&
     other.compatibilityWarningCount == compatibilityWarningCount &&
     other.compatibilityNotSupportedCount == compatibilityNotSupportedCount &&
     other.compatibilityUnknownCount == compatibilityUnknownCount &&
     other.featureSupport == featureSupport &&
     other.htmlErrorCount == htmlErrorCount &&
     other.htmlWarningCount == htmlWarningCount &&
     other.htmlInfoCount == htmlInfoCount &&
     other.htmlValidation == htmlValidation &&
     other.reputationFailureCount == reputationFailureCount &&
     other.attachmentMentionIssueCount == attachmentMentionIssueCount &&
     other.externalCheckSkippedCount == externalCheckSkippedCount &&
     other.insights == insights &&
     other.errorMessage == errorMessage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (status.hashCode) +
    (healthScore.hashCode) +
    (totalChecks.hashCode) +
    (passingChecks.hashCode) +
    (failingChecks.hashCode) +
    (detectedLinks.hashCode) +
    (checkedLinks.hashCode) +
    (detectedImages.hashCode) +
    (checkedImages.hashCode) +
    (linkIssueCount.hashCode) +
    (imageIssueCount.hashCode) +
    (spellingIssueCount.hashCode) +
    (brokenLinks.hashCode) +
    (brokenImages.hashCode) +
    (spellingIssues.hashCode) +
    (compatibilityWarningCount.hashCode) +
    (compatibilityNotSupportedCount.hashCode) +
    (compatibilityUnknownCount.hashCode) +
    (featureSupport == null ? 0 : featureSupport!.hashCode) +
    (htmlErrorCount.hashCode) +
    (htmlWarningCount.hashCode) +
    (htmlInfoCount.hashCode) +
    (htmlValidation == null ? 0 : htmlValidation!.hashCode) +
    (reputationFailureCount.hashCode) +
    (attachmentMentionIssueCount.hashCode) +
    (externalCheckSkippedCount.hashCode) +
    (insights.hashCode) +
    (errorMessage == null ? 0 : errorMessage!.hashCode);

  @override
  String toString() => 'EmailAuditAnalysisResult[status=$status, healthScore=$healthScore, totalChecks=$totalChecks, passingChecks=$passingChecks, failingChecks=$failingChecks, detectedLinks=$detectedLinks, checkedLinks=$checkedLinks, detectedImages=$detectedImages, checkedImages=$checkedImages, linkIssueCount=$linkIssueCount, imageIssueCount=$imageIssueCount, spellingIssueCount=$spellingIssueCount, brokenLinks=$brokenLinks, brokenImages=$brokenImages, spellingIssues=$spellingIssues, compatibilityWarningCount=$compatibilityWarningCount, compatibilityNotSupportedCount=$compatibilityNotSupportedCount, compatibilityUnknownCount=$compatibilityUnknownCount, featureSupport=$featureSupport, htmlErrorCount=$htmlErrorCount, htmlWarningCount=$htmlWarningCount, htmlInfoCount=$htmlInfoCount, htmlValidation=$htmlValidation, reputationFailureCount=$reputationFailureCount, attachmentMentionIssueCount=$attachmentMentionIssueCount, externalCheckSkippedCount=$externalCheckSkippedCount, insights=$insights, errorMessage=$errorMessage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = this.status;
      json[r'healthScore'] = this.healthScore;
      json[r'totalChecks'] = this.totalChecks;
      json[r'passingChecks'] = this.passingChecks;
      json[r'failingChecks'] = this.failingChecks;
      json[r'detectedLinks'] = this.detectedLinks;
      json[r'checkedLinks'] = this.checkedLinks;
      json[r'detectedImages'] = this.detectedImages;
      json[r'checkedImages'] = this.checkedImages;
      json[r'linkIssueCount'] = this.linkIssueCount;
      json[r'imageIssueCount'] = this.imageIssueCount;
      json[r'spellingIssueCount'] = this.spellingIssueCount;
      json[r'brokenLinks'] = this.brokenLinks;
      json[r'brokenImages'] = this.brokenImages;
      json[r'spellingIssues'] = this.spellingIssues;
      json[r'compatibilityWarningCount'] = this.compatibilityWarningCount;
      json[r'compatibilityNotSupportedCount'] = this.compatibilityNotSupportedCount;
      json[r'compatibilityUnknownCount'] = this.compatibilityUnknownCount;
    if (this.featureSupport != null) {
      json[r'featureSupport'] = this.featureSupport;
    } else {
      json[r'featureSupport'] = null;
    }
      json[r'htmlErrorCount'] = this.htmlErrorCount;
      json[r'htmlWarningCount'] = this.htmlWarningCount;
      json[r'htmlInfoCount'] = this.htmlInfoCount;
    if (this.htmlValidation != null) {
      json[r'htmlValidation'] = this.htmlValidation;
    } else {
      json[r'htmlValidation'] = null;
    }
      json[r'reputationFailureCount'] = this.reputationFailureCount;
      json[r'attachmentMentionIssueCount'] = this.attachmentMentionIssueCount;
      json[r'externalCheckSkippedCount'] = this.externalCheckSkippedCount;
      json[r'insights'] = this.insights;
    if (this.errorMessage != null) {
      json[r'errorMessage'] = this.errorMessage;
    } else {
      json[r'errorMessage'] = null;
    }
    return json;
  }

  /// Returns a new [EmailAuditAnalysisResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailAuditAnalysisResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailAuditAnalysisResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailAuditAnalysisResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailAuditAnalysisResult(
        status: EmailAuditAnalysisResultStatusEnum.fromJson(json[r'status'])!,
        healthScore: mapValueOfType<int>(json, r'healthScore')!,
        totalChecks: mapValueOfType<int>(json, r'totalChecks')!,
        passingChecks: mapValueOfType<int>(json, r'passingChecks')!,
        failingChecks: mapValueOfType<int>(json, r'failingChecks')!,
        detectedLinks: mapValueOfType<int>(json, r'detectedLinks')!,
        checkedLinks: mapValueOfType<int>(json, r'checkedLinks')!,
        detectedImages: mapValueOfType<int>(json, r'detectedImages')!,
        checkedImages: mapValueOfType<int>(json, r'checkedImages')!,
        linkIssueCount: mapValueOfType<int>(json, r'linkIssueCount')!,
        imageIssueCount: mapValueOfType<int>(json, r'imageIssueCount')!,
        spellingIssueCount: mapValueOfType<int>(json, r'spellingIssueCount')!,
        brokenLinks: EmailAuditUrlIssue.listFromJson(json[r'brokenLinks']),
        brokenImages: EmailAuditUrlIssue.listFromJson(json[r'brokenImages']),
        spellingIssues: EmailAuditSpellingIssue.listFromJson(json[r'spellingIssues']),
        compatibilityWarningCount: mapValueOfType<int>(json, r'compatibilityWarningCount')!,
        compatibilityNotSupportedCount: mapValueOfType<int>(json, r'compatibilityNotSupportedCount')!,
        compatibilityUnknownCount: mapValueOfType<int>(json, r'compatibilityUnknownCount')!,
        featureSupport: EmailFeatureSupportResult.fromJson(json[r'featureSupport']),
        htmlErrorCount: mapValueOfType<int>(json, r'htmlErrorCount')!,
        htmlWarningCount: mapValueOfType<int>(json, r'htmlWarningCount')!,
        htmlInfoCount: mapValueOfType<int>(json, r'htmlInfoCount')!,
        htmlValidation: HTMLValidationResult.fromJson(json[r'htmlValidation']),
        reputationFailureCount: mapValueOfType<int>(json, r'reputationFailureCount')!,
        attachmentMentionIssueCount: mapValueOfType<int>(json, r'attachmentMentionIssueCount')!,
        externalCheckSkippedCount: mapValueOfType<int>(json, r'externalCheckSkippedCount')!,
        insights: json[r'insights'] is List
            ? (json[r'insights'] as List).cast<String>()
            : const [],
        errorMessage: mapValueOfType<String>(json, r'errorMessage'),
      );
    }
    return null;
  }

  static List<EmailAuditAnalysisResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailAuditAnalysisResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailAuditAnalysisResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailAuditAnalysisResult> mapFromJson(dynamic json) {
    final map = <String, EmailAuditAnalysisResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailAuditAnalysisResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailAuditAnalysisResult-objects as value to a dart map
  static Map<String, List<EmailAuditAnalysisResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailAuditAnalysisResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailAuditAnalysisResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'status',
    'healthScore',
    'totalChecks',
    'passingChecks',
    'failingChecks',
    'detectedLinks',
    'checkedLinks',
    'detectedImages',
    'checkedImages',
    'linkIssueCount',
    'imageIssueCount',
    'spellingIssueCount',
    'brokenLinks',
    'brokenImages',
    'spellingIssues',
    'compatibilityWarningCount',
    'compatibilityNotSupportedCount',
    'compatibilityUnknownCount',
    'htmlErrorCount',
    'htmlWarningCount',
    'htmlInfoCount',
    'reputationFailureCount',
    'attachmentMentionIssueCount',
    'externalCheckSkippedCount',
    'insights',
  };
}

/// Health status for a one-shot email audit
class EmailAuditAnalysisResultStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailAuditAnalysisResultStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HEALTHY = EmailAuditAnalysisResultStatusEnum._(r'HEALTHY');
  static const WARNING = EmailAuditAnalysisResultStatusEnum._(r'WARNING');
  static const FAILED = EmailAuditAnalysisResultStatusEnum._(r'FAILED');

  /// List of all possible values in this [enum][EmailAuditAnalysisResultStatusEnum].
  static const values = <EmailAuditAnalysisResultStatusEnum>[
    HEALTHY,
    WARNING,
    FAILED,
  ];

  static EmailAuditAnalysisResultStatusEnum? fromJson(dynamic value) => EmailAuditAnalysisResultStatusEnumTypeTransformer().decode(value);

  static List<EmailAuditAnalysisResultStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailAuditAnalysisResultStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailAuditAnalysisResultStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailAuditAnalysisResultStatusEnum] to String,
/// and [decode] dynamic data back to [EmailAuditAnalysisResultStatusEnum].
class EmailAuditAnalysisResultStatusEnumTypeTransformer {
  factory EmailAuditAnalysisResultStatusEnumTypeTransformer() => _instance ??= const EmailAuditAnalysisResultStatusEnumTypeTransformer._();

  const EmailAuditAnalysisResultStatusEnumTypeTransformer._();

  String encode(EmailAuditAnalysisResultStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailAuditAnalysisResultStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailAuditAnalysisResultStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HEALTHY': return EmailAuditAnalysisResultStatusEnum.HEALTHY;
        case r'WARNING': return EmailAuditAnalysisResultStatusEnum.WARNING;
        case r'FAILED': return EmailAuditAnalysisResultStatusEnum.FAILED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailAuditAnalysisResultStatusEnumTypeTransformer] instance.
  static EmailAuditAnalysisResultStatusEnumTypeTransformer? _instance;
}


