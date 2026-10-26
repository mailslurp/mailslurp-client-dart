//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailWarmupPacingDto {
  /// Returns a new [EmailWarmupPacingDto] instance.
  EmailWarmupPacingDto({
    required this.configuredDailyTarget,
    required this.effectiveDailyTarget,
    required this.action,
    required this.reasonCode,
    required this.explanation,
  });

  int configuredDailyTarget;

  int effectiveDailyTarget;

  EmailWarmupPacingDtoActionEnum action;

  String reasonCode;

  String explanation;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailWarmupPacingDto &&
     other.configuredDailyTarget == configuredDailyTarget &&
     other.effectiveDailyTarget == effectiveDailyTarget &&
     other.action == action &&
     other.reasonCode == reasonCode &&
     other.explanation == explanation;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (configuredDailyTarget.hashCode) +
    (effectiveDailyTarget.hashCode) +
    (action.hashCode) +
    (reasonCode.hashCode) +
    (explanation.hashCode);

  @override
  String toString() => 'EmailWarmupPacingDto[configuredDailyTarget=$configuredDailyTarget, effectiveDailyTarget=$effectiveDailyTarget, action=$action, reasonCode=$reasonCode, explanation=$explanation]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'configuredDailyTarget'] = this.configuredDailyTarget;
      json[r'effectiveDailyTarget'] = this.effectiveDailyTarget;
      json[r'action'] = this.action;
      json[r'reasonCode'] = this.reasonCode;
      json[r'explanation'] = this.explanation;
    return json;
  }

  /// Returns a new [EmailWarmupPacingDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailWarmupPacingDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailWarmupPacingDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailWarmupPacingDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailWarmupPacingDto(
        configuredDailyTarget: mapValueOfType<int>(json, r'configuredDailyTarget')!,
        effectiveDailyTarget: mapValueOfType<int>(json, r'effectiveDailyTarget')!,
        action: EmailWarmupPacingDtoActionEnum.fromJson(json[r'action'])!,
        reasonCode: mapValueOfType<String>(json, r'reasonCode')!,
        explanation: mapValueOfType<String>(json, r'explanation')!,
      );
    }
    return null;
  }

  static List<EmailWarmupPacingDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupPacingDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupPacingDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailWarmupPacingDto> mapFromJson(dynamic json) {
    final map = <String, EmailWarmupPacingDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailWarmupPacingDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailWarmupPacingDto-objects as value to a dart map
  static Map<String, List<EmailWarmupPacingDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailWarmupPacingDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailWarmupPacingDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'configuredDailyTarget',
    'effectiveDailyTarget',
    'action',
    'reasonCode',
    'explanation',
  };
}


class EmailWarmupPacingDtoActionEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailWarmupPacingDtoActionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INCREASE = EmailWarmupPacingDtoActionEnum._(r'INCREASE');
  static const HOLD = EmailWarmupPacingDtoActionEnum._(r'HOLD');
  static const REDUCE = EmailWarmupPacingDtoActionEnum._(r'REDUCE');

  /// List of all possible values in this [enum][EmailWarmupPacingDtoActionEnum].
  static const values = <EmailWarmupPacingDtoActionEnum>[
    INCREASE,
    HOLD,
    REDUCE,
  ];

  static EmailWarmupPacingDtoActionEnum? fromJson(dynamic value) => EmailWarmupPacingDtoActionEnumTypeTransformer().decode(value);

  static List<EmailWarmupPacingDtoActionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupPacingDtoActionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupPacingDtoActionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailWarmupPacingDtoActionEnum] to String,
/// and [decode] dynamic data back to [EmailWarmupPacingDtoActionEnum].
class EmailWarmupPacingDtoActionEnumTypeTransformer {
  factory EmailWarmupPacingDtoActionEnumTypeTransformer() => _instance ??= const EmailWarmupPacingDtoActionEnumTypeTransformer._();

  const EmailWarmupPacingDtoActionEnumTypeTransformer._();

  String encode(EmailWarmupPacingDtoActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailWarmupPacingDtoActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailWarmupPacingDtoActionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INCREASE': return EmailWarmupPacingDtoActionEnum.INCREASE;
        case r'HOLD': return EmailWarmupPacingDtoActionEnum.HOLD;
        case r'REDUCE': return EmailWarmupPacingDtoActionEnum.REDUCE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailWarmupPacingDtoActionEnumTypeTransformer] instance.
  static EmailWarmupPacingDtoActionEnumTypeTransformer? _instance;
}


