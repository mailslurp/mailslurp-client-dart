//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeliverabilityFailureHotspotsDto {
  /// Returns a new [DeliverabilityFailureHotspotsDto] instance.
  DeliverabilityFailureHotspotsDto({
    required this.since,
    required this.before,
    this.scope,
    this.entityHotspots = const [],
    this.phoneDimensionHotspots = const [],
  });

  DateTime since;

  DateTime before;

  DeliverabilityFailureHotspotsDtoScopeEnum? scope;

  List<DeliverabilityFailureEntityHotspotDto> entityHotspots;

  List<DeliverabilityFailurePhoneDimensionHotspotDto> phoneDimensionHotspots;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeliverabilityFailureHotspotsDto &&
     other.since == since &&
     other.before == before &&
     other.scope == scope &&
     other.entityHotspots == entityHotspots &&
     other.phoneDimensionHotspots == phoneDimensionHotspots;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (since.hashCode) +
    (before.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (entityHotspots.hashCode) +
    (phoneDimensionHotspots.hashCode);

  @override
  String toString() => 'DeliverabilityFailureHotspotsDto[since=$since, before=$before, scope=$scope, entityHotspots=$entityHotspots, phoneDimensionHotspots=$phoneDimensionHotspots]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'since'] = this.since.toUtc().toIso8601String();
      json[r'before'] = this.before.toUtc().toIso8601String();
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
      json[r'entityHotspots'] = this.entityHotspots;
      json[r'phoneDimensionHotspots'] = this.phoneDimensionHotspots;
    return json;
  }

  /// Returns a new [DeliverabilityFailureHotspotsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeliverabilityFailureHotspotsDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeliverabilityFailureHotspotsDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeliverabilityFailureHotspotsDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeliverabilityFailureHotspotsDto(
        since: mapDateTime(json, r'since', '')!,
        before: mapDateTime(json, r'before', '')!,
        scope: DeliverabilityFailureHotspotsDtoScopeEnum.fromJson(json[r'scope']),
        entityHotspots: DeliverabilityFailureEntityHotspotDto.listFromJson(json[r'entityHotspots']),
        phoneDimensionHotspots: DeliverabilityFailurePhoneDimensionHotspotDto.listFromJson(json[r'phoneDimensionHotspots']),
      );
    }
    return null;
  }

  static List<DeliverabilityFailureHotspotsDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilityFailureHotspotsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilityFailureHotspotsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeliverabilityFailureHotspotsDto> mapFromJson(dynamic json) {
    final map = <String, DeliverabilityFailureHotspotsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeliverabilityFailureHotspotsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeliverabilityFailureHotspotsDto-objects as value to a dart map
  static Map<String, List<DeliverabilityFailureHotspotsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeliverabilityFailureHotspotsDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeliverabilityFailureHotspotsDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'since',
    'before',
    'entityHotspots',
    'phoneDimensionHotspots',
  };
}


class DeliverabilityFailureHotspotsDtoScopeEnum {
  /// Instantiate a new enum with the provided [value].
  const DeliverabilityFailureHotspotsDtoScopeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INBOX = DeliverabilityFailureHotspotsDtoScopeEnum._(r'INBOX');
  static const PHONE = DeliverabilityFailureHotspotsDtoScopeEnum._(r'PHONE');

  /// List of all possible values in this [enum][DeliverabilityFailureHotspotsDtoScopeEnum].
  static const values = <DeliverabilityFailureHotspotsDtoScopeEnum>[
    INBOX,
    PHONE,
  ];

  static DeliverabilityFailureHotspotsDtoScopeEnum? fromJson(dynamic value) => DeliverabilityFailureHotspotsDtoScopeEnumTypeTransformer().decode(value);

  static List<DeliverabilityFailureHotspotsDtoScopeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilityFailureHotspotsDtoScopeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilityFailureHotspotsDtoScopeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeliverabilityFailureHotspotsDtoScopeEnum] to String,
/// and [decode] dynamic data back to [DeliverabilityFailureHotspotsDtoScopeEnum].
class DeliverabilityFailureHotspotsDtoScopeEnumTypeTransformer {
  factory DeliverabilityFailureHotspotsDtoScopeEnumTypeTransformer() => _instance ??= const DeliverabilityFailureHotspotsDtoScopeEnumTypeTransformer._();

  const DeliverabilityFailureHotspotsDtoScopeEnumTypeTransformer._();

  String encode(DeliverabilityFailureHotspotsDtoScopeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeliverabilityFailureHotspotsDtoScopeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeliverabilityFailureHotspotsDtoScopeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INBOX': return DeliverabilityFailureHotspotsDtoScopeEnum.INBOX;
        case r'PHONE': return DeliverabilityFailureHotspotsDtoScopeEnum.PHONE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeliverabilityFailureHotspotsDtoScopeEnumTypeTransformer] instance.
  static DeliverabilityFailureHotspotsDtoScopeEnumTypeTransformer? _instance;
}


