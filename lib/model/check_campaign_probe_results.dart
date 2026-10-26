//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CheckCampaignProbeResults {
  /// Returns a new [CheckCampaignProbeResults] instance.
  CheckCampaignProbeResults({
    required this.status,
    required this.healthScore,
    required this.totalChecks,
    required this.passingChecks,
    required this.failingChecks,
    required this.checkedLinks,
    required this.checkedImages,
    required this.linkIssueCount,
    required this.imageIssueCount,
    required this.compatibilityWarningCount,
    required this.compatibilityNotSupportedCount,
    required this.compatibilityUnknownCount,
    required this.htmlErrorCount,
    required this.htmlWarningCount,
    required this.htmlInfoCount,
    required this.attachmentMentionIssueCount,
    this.insights = const [],
    this.errorMessage,
  });

  CheckCampaignProbeResultsStatusEnum status;

  int healthScore;

  int totalChecks;

  int passingChecks;

  int failingChecks;

  int checkedLinks;

  int checkedImages;

  int linkIssueCount;

  int imageIssueCount;

  int compatibilityWarningCount;

  int compatibilityNotSupportedCount;

  int compatibilityUnknownCount;

  int htmlErrorCount;

  int htmlWarningCount;

  int htmlInfoCount;

  int attachmentMentionIssueCount;

  List<String> insights;

  String? errorMessage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CheckCampaignProbeResults &&
     other.status == status &&
     other.healthScore == healthScore &&
     other.totalChecks == totalChecks &&
     other.passingChecks == passingChecks &&
     other.failingChecks == failingChecks &&
     other.checkedLinks == checkedLinks &&
     other.checkedImages == checkedImages &&
     other.linkIssueCount == linkIssueCount &&
     other.imageIssueCount == imageIssueCount &&
     other.compatibilityWarningCount == compatibilityWarningCount &&
     other.compatibilityNotSupportedCount == compatibilityNotSupportedCount &&
     other.compatibilityUnknownCount == compatibilityUnknownCount &&
     other.htmlErrorCount == htmlErrorCount &&
     other.htmlWarningCount == htmlWarningCount &&
     other.htmlInfoCount == htmlInfoCount &&
     other.attachmentMentionIssueCount == attachmentMentionIssueCount &&
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
    (checkedLinks.hashCode) +
    (checkedImages.hashCode) +
    (linkIssueCount.hashCode) +
    (imageIssueCount.hashCode) +
    (compatibilityWarningCount.hashCode) +
    (compatibilityNotSupportedCount.hashCode) +
    (compatibilityUnknownCount.hashCode) +
    (htmlErrorCount.hashCode) +
    (htmlWarningCount.hashCode) +
    (htmlInfoCount.hashCode) +
    (attachmentMentionIssueCount.hashCode) +
    (insights.hashCode) +
    (errorMessage == null ? 0 : errorMessage!.hashCode);

  @override
  String toString() => 'CheckCampaignProbeResults[status=$status, healthScore=$healthScore, totalChecks=$totalChecks, passingChecks=$passingChecks, failingChecks=$failingChecks, checkedLinks=$checkedLinks, checkedImages=$checkedImages, linkIssueCount=$linkIssueCount, imageIssueCount=$imageIssueCount, compatibilityWarningCount=$compatibilityWarningCount, compatibilityNotSupportedCount=$compatibilityNotSupportedCount, compatibilityUnknownCount=$compatibilityUnknownCount, htmlErrorCount=$htmlErrorCount, htmlWarningCount=$htmlWarningCount, htmlInfoCount=$htmlInfoCount, attachmentMentionIssueCount=$attachmentMentionIssueCount, insights=$insights, errorMessage=$errorMessage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = this.status;
      json[r'healthScore'] = this.healthScore;
      json[r'totalChecks'] = this.totalChecks;
      json[r'passingChecks'] = this.passingChecks;
      json[r'failingChecks'] = this.failingChecks;
      json[r'checkedLinks'] = this.checkedLinks;
      json[r'checkedImages'] = this.checkedImages;
      json[r'linkIssueCount'] = this.linkIssueCount;
      json[r'imageIssueCount'] = this.imageIssueCount;
      json[r'compatibilityWarningCount'] = this.compatibilityWarningCount;
      json[r'compatibilityNotSupportedCount'] = this.compatibilityNotSupportedCount;
      json[r'compatibilityUnknownCount'] = this.compatibilityUnknownCount;
      json[r'htmlErrorCount'] = this.htmlErrorCount;
      json[r'htmlWarningCount'] = this.htmlWarningCount;
      json[r'htmlInfoCount'] = this.htmlInfoCount;
      json[r'attachmentMentionIssueCount'] = this.attachmentMentionIssueCount;
      json[r'insights'] = this.insights;
    if (this.errorMessage != null) {
      json[r'errorMessage'] = this.errorMessage;
    } else {
      json[r'errorMessage'] = null;
    }
    return json;
  }

  /// Returns a new [CheckCampaignProbeResults] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CheckCampaignProbeResults? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CheckCampaignProbeResults[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CheckCampaignProbeResults[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CheckCampaignProbeResults(
        status: CheckCampaignProbeResultsStatusEnum.fromJson(json[r'status'])!,
        healthScore: mapValueOfType<int>(json, r'healthScore')!,
        totalChecks: mapValueOfType<int>(json, r'totalChecks')!,
        passingChecks: mapValueOfType<int>(json, r'passingChecks')!,
        failingChecks: mapValueOfType<int>(json, r'failingChecks')!,
        checkedLinks: mapValueOfType<int>(json, r'checkedLinks')!,
        checkedImages: mapValueOfType<int>(json, r'checkedImages')!,
        linkIssueCount: mapValueOfType<int>(json, r'linkIssueCount')!,
        imageIssueCount: mapValueOfType<int>(json, r'imageIssueCount')!,
        compatibilityWarningCount: mapValueOfType<int>(json, r'compatibilityWarningCount')!,
        compatibilityNotSupportedCount: mapValueOfType<int>(json, r'compatibilityNotSupportedCount')!,
        compatibilityUnknownCount: mapValueOfType<int>(json, r'compatibilityUnknownCount')!,
        htmlErrorCount: mapValueOfType<int>(json, r'htmlErrorCount')!,
        htmlWarningCount: mapValueOfType<int>(json, r'htmlWarningCount')!,
        htmlInfoCount: mapValueOfType<int>(json, r'htmlInfoCount')!,
        attachmentMentionIssueCount: mapValueOfType<int>(json, r'attachmentMentionIssueCount')!,
        insights: json[r'insights'] is List
            ? (json[r'insights'] as List).cast<String>()
            : const [],
        errorMessage: mapValueOfType<String>(json, r'errorMessage'),
      );
    }
    return null;
  }

  static List<CheckCampaignProbeResults> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CheckCampaignProbeResults>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CheckCampaignProbeResults.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CheckCampaignProbeResults> mapFromJson(dynamic json) {
    final map = <String, CheckCampaignProbeResults>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CheckCampaignProbeResults.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CheckCampaignProbeResults-objects as value to a dart map
  static Map<String, List<CheckCampaignProbeResults>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CheckCampaignProbeResults>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CheckCampaignProbeResults.listFromJson(entry.value, growable: growable,);
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
    'checkedLinks',
    'checkedImages',
    'linkIssueCount',
    'imageIssueCount',
    'compatibilityWarningCount',
    'compatibilityNotSupportedCount',
    'compatibilityUnknownCount',
    'htmlErrorCount',
    'htmlWarningCount',
    'htmlInfoCount',
    'attachmentMentionIssueCount',
    'insights',
  };
}


class CheckCampaignProbeResultsStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const CheckCampaignProbeResultsStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HEALTHY = CheckCampaignProbeResultsStatusEnum._(r'HEALTHY');
  static const WARNING = CheckCampaignProbeResultsStatusEnum._(r'WARNING');
  static const FAILED = CheckCampaignProbeResultsStatusEnum._(r'FAILED');

  /// List of all possible values in this [enum][CheckCampaignProbeResultsStatusEnum].
  static const values = <CheckCampaignProbeResultsStatusEnum>[
    HEALTHY,
    WARNING,
    FAILED,
  ];

  static CheckCampaignProbeResultsStatusEnum? fromJson(dynamic value) => CheckCampaignProbeResultsStatusEnumTypeTransformer().decode(value);

  static List<CheckCampaignProbeResultsStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CheckCampaignProbeResultsStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CheckCampaignProbeResultsStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CheckCampaignProbeResultsStatusEnum] to String,
/// and [decode] dynamic data back to [CheckCampaignProbeResultsStatusEnum].
class CheckCampaignProbeResultsStatusEnumTypeTransformer {
  factory CheckCampaignProbeResultsStatusEnumTypeTransformer() => _instance ??= const CheckCampaignProbeResultsStatusEnumTypeTransformer._();

  const CheckCampaignProbeResultsStatusEnumTypeTransformer._();

  String encode(CheckCampaignProbeResultsStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CheckCampaignProbeResultsStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CheckCampaignProbeResultsStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HEALTHY': return CheckCampaignProbeResultsStatusEnum.HEALTHY;
        case r'WARNING': return CheckCampaignProbeResultsStatusEnum.WARNING;
        case r'FAILED': return CheckCampaignProbeResultsStatusEnum.FAILED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CheckCampaignProbeResultsStatusEnumTypeTransformer] instance.
  static CheckCampaignProbeResultsStatusEnumTypeTransformer? _instance;
}


