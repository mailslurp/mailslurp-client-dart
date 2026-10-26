//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SendingConnectionDeliveryProbeDto {
  /// Returns a new [SendingConnectionDeliveryProbeDto] instance.
  SendingConnectionDeliveryProbeDto({
    required this.connectionId,
    required this.status,
    this.acceptedAt,
    this.deliveredAt,
    this.latencyMillis,
  });

  String connectionId;

  SendingConnectionDeliveryProbeDtoStatusEnum status;

  DateTime? acceptedAt;

  DateTime? deliveredAt;

  int? latencyMillis;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendingConnectionDeliveryProbeDto &&
     other.connectionId == connectionId &&
     other.status == status &&
     other.acceptedAt == acceptedAt &&
     other.deliveredAt == deliveredAt &&
     other.latencyMillis == latencyMillis;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (connectionId.hashCode) +
    (status.hashCode) +
    (acceptedAt == null ? 0 : acceptedAt!.hashCode) +
    (deliveredAt == null ? 0 : deliveredAt!.hashCode) +
    (latencyMillis == null ? 0 : latencyMillis!.hashCode);

  @override
  String toString() => 'SendingConnectionDeliveryProbeDto[connectionId=$connectionId, status=$status, acceptedAt=$acceptedAt, deliveredAt=$deliveredAt, latencyMillis=$latencyMillis]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'connectionId'] = this.connectionId;
      json[r'status'] = this.status;
    if (this.acceptedAt != null) {
      json[r'acceptedAt'] = this.acceptedAt!.toUtc().toIso8601String();
    } else {
      json[r'acceptedAt'] = null;
    }
    if (this.deliveredAt != null) {
      json[r'deliveredAt'] = this.deliveredAt!.toUtc().toIso8601String();
    } else {
      json[r'deliveredAt'] = null;
    }
    if (this.latencyMillis != null) {
      json[r'latencyMillis'] = this.latencyMillis;
    } else {
      json[r'latencyMillis'] = null;
    }
    return json;
  }

  /// Returns a new [SendingConnectionDeliveryProbeDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendingConnectionDeliveryProbeDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SendingConnectionDeliveryProbeDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SendingConnectionDeliveryProbeDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SendingConnectionDeliveryProbeDto(
        connectionId: mapValueOfType<String>(json, r'connectionId')!,
        status: SendingConnectionDeliveryProbeDtoStatusEnum.fromJson(json[r'status'])!,
        acceptedAt: mapDateTime(json, r'acceptedAt', ''),
        deliveredAt: mapDateTime(json, r'deliveredAt', ''),
        latencyMillis: mapValueOfType<int>(json, r'latencyMillis'),
      );
    }
    return null;
  }

  static List<SendingConnectionDeliveryProbeDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingConnectionDeliveryProbeDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingConnectionDeliveryProbeDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendingConnectionDeliveryProbeDto> mapFromJson(dynamic json) {
    final map = <String, SendingConnectionDeliveryProbeDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendingConnectionDeliveryProbeDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendingConnectionDeliveryProbeDto-objects as value to a dart map
  static Map<String, List<SendingConnectionDeliveryProbeDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SendingConnectionDeliveryProbeDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SendingConnectionDeliveryProbeDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'connectionId',
    'status',
  };
}


class SendingConnectionDeliveryProbeDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const SendingConnectionDeliveryProbeDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DELIVERED = SendingConnectionDeliveryProbeDtoStatusEnum._(r'DELIVERED');
  static const INCONCLUSIVE = SendingConnectionDeliveryProbeDtoStatusEnum._(r'INCONCLUSIVE');

  /// List of all possible values in this [enum][SendingConnectionDeliveryProbeDtoStatusEnum].
  static const values = <SendingConnectionDeliveryProbeDtoStatusEnum>[
    DELIVERED,
    INCONCLUSIVE,
  ];

  static SendingConnectionDeliveryProbeDtoStatusEnum? fromJson(dynamic value) => SendingConnectionDeliveryProbeDtoStatusEnumTypeTransformer().decode(value);

  static List<SendingConnectionDeliveryProbeDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingConnectionDeliveryProbeDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingConnectionDeliveryProbeDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SendingConnectionDeliveryProbeDtoStatusEnum] to String,
/// and [decode] dynamic data back to [SendingConnectionDeliveryProbeDtoStatusEnum].
class SendingConnectionDeliveryProbeDtoStatusEnumTypeTransformer {
  factory SendingConnectionDeliveryProbeDtoStatusEnumTypeTransformer() => _instance ??= const SendingConnectionDeliveryProbeDtoStatusEnumTypeTransformer._();

  const SendingConnectionDeliveryProbeDtoStatusEnumTypeTransformer._();

  String encode(SendingConnectionDeliveryProbeDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SendingConnectionDeliveryProbeDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SendingConnectionDeliveryProbeDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DELIVERED': return SendingConnectionDeliveryProbeDtoStatusEnum.DELIVERED;
        case r'INCONCLUSIVE': return SendingConnectionDeliveryProbeDtoStatusEnum.INCONCLUSIVE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SendingConnectionDeliveryProbeDtoStatusEnumTypeTransformer] instance.
  static SendingConnectionDeliveryProbeDtoStatusEnumTypeTransformer? _instance;
}


