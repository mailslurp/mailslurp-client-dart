//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxPlacementSpamScoreDto {
  /// Returns a new [InboxPlacementSpamScoreDto] instance.
  InboxPlacementSpamScoreDto({
    this.segment,
    required this.spamScoreOutOfTen,
    required this.spamScoreVariant,
  });

  InboxPlacementSpamScoreDtoSegmentEnum? segment;

  double spamScoreOutOfTen;

  InboxPlacementSpamScoreDtoSpamScoreVariantEnum spamScoreVariant;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxPlacementSpamScoreDto &&
     other.segment == segment &&
     other.spamScoreOutOfTen == spamScoreOutOfTen &&
     other.spamScoreVariant == spamScoreVariant;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (segment == null ? 0 : segment!.hashCode) +
    (spamScoreOutOfTen.hashCode) +
    (spamScoreVariant.hashCode);

  @override
  String toString() => 'InboxPlacementSpamScoreDto[segment=$segment, spamScoreOutOfTen=$spamScoreOutOfTen, spamScoreVariant=$spamScoreVariant]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.segment != null) {
      json[r'segment'] = this.segment;
    } else {
      json[r'segment'] = null;
    }
      json[r'spamScoreOutOfTen'] = this.spamScoreOutOfTen;
      json[r'spamScoreVariant'] = this.spamScoreVariant;
    return json;
  }

  /// Returns a new [InboxPlacementSpamScoreDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxPlacementSpamScoreDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxPlacementSpamScoreDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxPlacementSpamScoreDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxPlacementSpamScoreDto(
        segment: InboxPlacementSpamScoreDtoSegmentEnum.fromJson(json[r'segment']),
        spamScoreOutOfTen: mapValueOfType<double>(json, r'spamScoreOutOfTen')!,
        spamScoreVariant: InboxPlacementSpamScoreDtoSpamScoreVariantEnum.fromJson(json[r'spamScoreVariant'])!,
      );
    }
    return null;
  }

  static List<InboxPlacementSpamScoreDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPlacementSpamScoreDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPlacementSpamScoreDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxPlacementSpamScoreDto> mapFromJson(dynamic json) {
    final map = <String, InboxPlacementSpamScoreDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxPlacementSpamScoreDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxPlacementSpamScoreDto-objects as value to a dart map
  static Map<String, List<InboxPlacementSpamScoreDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxPlacementSpamScoreDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxPlacementSpamScoreDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'spamScoreOutOfTen',
    'spamScoreVariant',
  };
}


class InboxPlacementSpamScoreDtoSegmentEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxPlacementSpamScoreDtoSegmentEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ALL_INBOXES = InboxPlacementSpamScoreDtoSegmentEnum._(r'ALL_INBOXES');
  static const PERSONAL_INBOXES = InboxPlacementSpamScoreDtoSegmentEnum._(r'PERSONAL_INBOXES');
  static const PROFESSIONAL_INBOXES = InboxPlacementSpamScoreDtoSegmentEnum._(r'PROFESSIONAL_INBOXES');

  /// List of all possible values in this [enum][InboxPlacementSpamScoreDtoSegmentEnum].
  static const values = <InboxPlacementSpamScoreDtoSegmentEnum>[
    ALL_INBOXES,
    PERSONAL_INBOXES,
    PROFESSIONAL_INBOXES,
  ];

  static InboxPlacementSpamScoreDtoSegmentEnum? fromJson(dynamic value) => InboxPlacementSpamScoreDtoSegmentEnumTypeTransformer().decode(value);

  static List<InboxPlacementSpamScoreDtoSegmentEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPlacementSpamScoreDtoSegmentEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPlacementSpamScoreDtoSegmentEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InboxPlacementSpamScoreDtoSegmentEnum] to String,
/// and [decode] dynamic data back to [InboxPlacementSpamScoreDtoSegmentEnum].
class InboxPlacementSpamScoreDtoSegmentEnumTypeTransformer {
  factory InboxPlacementSpamScoreDtoSegmentEnumTypeTransformer() => _instance ??= const InboxPlacementSpamScoreDtoSegmentEnumTypeTransformer._();

  const InboxPlacementSpamScoreDtoSegmentEnumTypeTransformer._();

  String encode(InboxPlacementSpamScoreDtoSegmentEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxPlacementSpamScoreDtoSegmentEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxPlacementSpamScoreDtoSegmentEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ALL_INBOXES': return InboxPlacementSpamScoreDtoSegmentEnum.ALL_INBOXES;
        case r'PERSONAL_INBOXES': return InboxPlacementSpamScoreDtoSegmentEnum.PERSONAL_INBOXES;
        case r'PROFESSIONAL_INBOXES': return InboxPlacementSpamScoreDtoSegmentEnum.PROFESSIONAL_INBOXES;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InboxPlacementSpamScoreDtoSegmentEnumTypeTransformer] instance.
  static InboxPlacementSpamScoreDtoSegmentEnumTypeTransformer? _instance;
}



class InboxPlacementSpamScoreDtoSpamScoreVariantEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxPlacementSpamScoreDtoSpamScoreVariantEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const good = InboxPlacementSpamScoreDtoSpamScoreVariantEnum._(r'Good');
  static const warning = InboxPlacementSpamScoreDtoSpamScoreVariantEnum._(r'Warning');
  static const danger = InboxPlacementSpamScoreDtoSpamScoreVariantEnum._(r'Danger');

  /// List of all possible values in this [enum][InboxPlacementSpamScoreDtoSpamScoreVariantEnum].
  static const values = <InboxPlacementSpamScoreDtoSpamScoreVariantEnum>[
    good,
    warning,
    danger,
  ];

  static InboxPlacementSpamScoreDtoSpamScoreVariantEnum? fromJson(dynamic value) => InboxPlacementSpamScoreDtoSpamScoreVariantEnumTypeTransformer().decode(value);

  static List<InboxPlacementSpamScoreDtoSpamScoreVariantEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPlacementSpamScoreDtoSpamScoreVariantEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPlacementSpamScoreDtoSpamScoreVariantEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InboxPlacementSpamScoreDtoSpamScoreVariantEnum] to String,
/// and [decode] dynamic data back to [InboxPlacementSpamScoreDtoSpamScoreVariantEnum].
class InboxPlacementSpamScoreDtoSpamScoreVariantEnumTypeTransformer {
  factory InboxPlacementSpamScoreDtoSpamScoreVariantEnumTypeTransformer() => _instance ??= const InboxPlacementSpamScoreDtoSpamScoreVariantEnumTypeTransformer._();

  const InboxPlacementSpamScoreDtoSpamScoreVariantEnumTypeTransformer._();

  String encode(InboxPlacementSpamScoreDtoSpamScoreVariantEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxPlacementSpamScoreDtoSpamScoreVariantEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxPlacementSpamScoreDtoSpamScoreVariantEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Good': return InboxPlacementSpamScoreDtoSpamScoreVariantEnum.good;
        case r'Warning': return InboxPlacementSpamScoreDtoSpamScoreVariantEnum.warning;
        case r'Danger': return InboxPlacementSpamScoreDtoSpamScoreVariantEnum.danger;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InboxPlacementSpamScoreDtoSpamScoreVariantEnumTypeTransformer] instance.
  static InboxPlacementSpamScoreDtoSpamScoreVariantEnumTypeTransformer? _instance;
}


