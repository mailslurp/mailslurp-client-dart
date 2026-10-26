//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailBlacklistListingResult {
  /// Returns a new [EmailBlacklistListingResult] instance.
  EmailBlacklistListingResult({
    required this.zone,
    required this.listed,
    this.responseCodes = const [],
    this.responseMessages = const [],
    required this.status,
    this.errorMessage,
    required this.provider,
  });

  String zone;

  bool listed;

  List<String> responseCodes;

  List<String> responseMessages;

  EmailBlacklistListingResultStatusEnum status;

  String? errorMessage;

  String provider;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailBlacklistListingResult &&
     other.zone == zone &&
     other.listed == listed &&
     other.responseCodes == responseCodes &&
     other.responseMessages == responseMessages &&
     other.status == status &&
     other.errorMessage == errorMessage &&
     other.provider == provider;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (zone.hashCode) +
    (listed.hashCode) +
    (responseCodes.hashCode) +
    (responseMessages.hashCode) +
    (status.hashCode) +
    (errorMessage == null ? 0 : errorMessage!.hashCode) +
    (provider.hashCode);

  @override
  String toString() => 'EmailBlacklistListingResult[zone=$zone, listed=$listed, responseCodes=$responseCodes, responseMessages=$responseMessages, status=$status, errorMessage=$errorMessage, provider=$provider]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'zone'] = this.zone;
      json[r'listed'] = this.listed;
      json[r'responseCodes'] = this.responseCodes;
      json[r'responseMessages'] = this.responseMessages;
      json[r'status'] = this.status;
    if (this.errorMessage != null) {
      json[r'errorMessage'] = this.errorMessage;
    } else {
      json[r'errorMessage'] = null;
    }
      json[r'provider'] = this.provider;
    return json;
  }

  /// Returns a new [EmailBlacklistListingResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailBlacklistListingResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailBlacklistListingResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailBlacklistListingResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailBlacklistListingResult(
        zone: mapValueOfType<String>(json, r'zone')!,
        listed: mapValueOfType<bool>(json, r'listed')!,
        responseCodes: json[r'responseCodes'] is List
            ? (json[r'responseCodes'] as List).cast<String>()
            : const [],
        responseMessages: json[r'responseMessages'] is List
            ? (json[r'responseMessages'] as List).cast<String>()
            : const [],
        status: EmailBlacklistListingResultStatusEnum.fromJson(json[r'status'])!,
        errorMessage: mapValueOfType<String>(json, r'errorMessage'),
        provider: mapValueOfType<String>(json, r'provider')!,
      );
    }
    return null;
  }

  static List<EmailBlacklistListingResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailBlacklistListingResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailBlacklistListingResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailBlacklistListingResult> mapFromJson(dynamic json) {
    final map = <String, EmailBlacklistListingResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailBlacklistListingResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailBlacklistListingResult-objects as value to a dart map
  static Map<String, List<EmailBlacklistListingResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailBlacklistListingResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailBlacklistListingResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'zone',
    'listed',
    'responseCodes',
    'responseMessages',
    'status',
    'provider',
  };
}


class EmailBlacklistListingResultStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailBlacklistListingResultStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const LISTED = EmailBlacklistListingResultStatusEnum._(r'LISTED');
  static const NOT_LISTED = EmailBlacklistListingResultStatusEnum._(r'NOT_LISTED');
  static const ERROR = EmailBlacklistListingResultStatusEnum._(r'ERROR');
  static const NOT_CHECKED = EmailBlacklistListingResultStatusEnum._(r'NOT_CHECKED');

  /// List of all possible values in this [enum][EmailBlacklistListingResultStatusEnum].
  static const values = <EmailBlacklistListingResultStatusEnum>[
    LISTED,
    NOT_LISTED,
    ERROR,
    NOT_CHECKED,
  ];

  static EmailBlacklistListingResultStatusEnum? fromJson(dynamic value) => EmailBlacklistListingResultStatusEnumTypeTransformer().decode(value);

  static List<EmailBlacklistListingResultStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailBlacklistListingResultStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailBlacklistListingResultStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailBlacklistListingResultStatusEnum] to String,
/// and [decode] dynamic data back to [EmailBlacklistListingResultStatusEnum].
class EmailBlacklistListingResultStatusEnumTypeTransformer {
  factory EmailBlacklistListingResultStatusEnumTypeTransformer() => _instance ??= const EmailBlacklistListingResultStatusEnumTypeTransformer._();

  const EmailBlacklistListingResultStatusEnumTypeTransformer._();

  String encode(EmailBlacklistListingResultStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailBlacklistListingResultStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailBlacklistListingResultStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'LISTED': return EmailBlacklistListingResultStatusEnum.LISTED;
        case r'NOT_LISTED': return EmailBlacklistListingResultStatusEnum.NOT_LISTED;
        case r'ERROR': return EmailBlacklistListingResultStatusEnum.ERROR;
        case r'NOT_CHECKED': return EmailBlacklistListingResultStatusEnum.NOT_CHECKED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailBlacklistListingResultStatusEnumTypeTransformer] instance.
  static EmailBlacklistListingResultStatusEnumTypeTransformer? _instance;
}


