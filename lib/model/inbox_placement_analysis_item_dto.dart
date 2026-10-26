//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxPlacementAnalysisItemDto {
  /// Returns a new [InboxPlacementAnalysisItemDto] instance.
  InboxPlacementAnalysisItemDto({
    required this.key,
    required this.status,
    required this.title,
    required this.message,
    this.meta = const {},
    this.actionLabel,
    this.actionUrl,
    this.detailTable,
  });

  String key;

  /// Status for a setup or content analysis item
  InboxPlacementAnalysisItemDtoStatusEnum status;

  String title;

  String message;

  Map<String, String> meta;

  String? actionLabel;

  String? actionUrl;

  InboxPlacementAnalysisDetailTableDto? detailTable;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxPlacementAnalysisItemDto &&
     other.key == key &&
     other.status == status &&
     other.title == title &&
     other.message == message &&
     other.meta == meta &&
     other.actionLabel == actionLabel &&
     other.actionUrl == actionUrl &&
     other.detailTable == detailTable;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (key.hashCode) +
    (status.hashCode) +
    (title.hashCode) +
    (message.hashCode) +
    (meta.hashCode) +
    (actionLabel == null ? 0 : actionLabel!.hashCode) +
    (actionUrl == null ? 0 : actionUrl!.hashCode) +
    (detailTable == null ? 0 : detailTable!.hashCode);

  @override
  String toString() => 'InboxPlacementAnalysisItemDto[key=$key, status=$status, title=$title, message=$message, meta=$meta, actionLabel=$actionLabel, actionUrl=$actionUrl, detailTable=$detailTable]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'key'] = this.key;
      json[r'status'] = this.status;
      json[r'title'] = this.title;
      json[r'message'] = this.message;
      json[r'meta'] = this.meta;
    if (this.actionLabel != null) {
      json[r'actionLabel'] = this.actionLabel;
    } else {
      json[r'actionLabel'] = null;
    }
    if (this.actionUrl != null) {
      json[r'actionUrl'] = this.actionUrl;
    } else {
      json[r'actionUrl'] = null;
    }
    if (this.detailTable != null) {
      json[r'detailTable'] = this.detailTable;
    } else {
      json[r'detailTable'] = null;
    }
    return json;
  }

  /// Returns a new [InboxPlacementAnalysisItemDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxPlacementAnalysisItemDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxPlacementAnalysisItemDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxPlacementAnalysisItemDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxPlacementAnalysisItemDto(
        key: mapValueOfType<String>(json, r'key')!,
        status: InboxPlacementAnalysisItemDtoStatusEnum.fromJson(json[r'status'])!,
        title: mapValueOfType<String>(json, r'title')!,
        message: mapValueOfType<String>(json, r'message')!,
        meta: mapCastOfType<String, String>(json, r'meta')!,
        actionLabel: mapValueOfType<String>(json, r'actionLabel'),
        actionUrl: mapValueOfType<String>(json, r'actionUrl'),
        detailTable: InboxPlacementAnalysisDetailTableDto.fromJson(json[r'detailTable']),
      );
    }
    return null;
  }

  static List<InboxPlacementAnalysisItemDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPlacementAnalysisItemDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPlacementAnalysisItemDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxPlacementAnalysisItemDto> mapFromJson(dynamic json) {
    final map = <String, InboxPlacementAnalysisItemDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxPlacementAnalysisItemDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxPlacementAnalysisItemDto-objects as value to a dart map
  static Map<String, List<InboxPlacementAnalysisItemDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxPlacementAnalysisItemDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxPlacementAnalysisItemDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'key',
    'status',
    'title',
    'message',
    'meta',
  };
}

/// Status for a setup or content analysis item
class InboxPlacementAnalysisItemDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxPlacementAnalysisItemDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PASS = InboxPlacementAnalysisItemDtoStatusEnum._(r'PASS');
  static const WARN = InboxPlacementAnalysisItemDtoStatusEnum._(r'WARN');
  static const FAIL = InboxPlacementAnalysisItemDtoStatusEnum._(r'FAIL');
  static const INFO = InboxPlacementAnalysisItemDtoStatusEnum._(r'INFO');

  /// List of all possible values in this [enum][InboxPlacementAnalysisItemDtoStatusEnum].
  static const values = <InboxPlacementAnalysisItemDtoStatusEnum>[
    PASS,
    WARN,
    FAIL,
    INFO,
  ];

  static InboxPlacementAnalysisItemDtoStatusEnum? fromJson(dynamic value) => InboxPlacementAnalysisItemDtoStatusEnumTypeTransformer().decode(value);

  static List<InboxPlacementAnalysisItemDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPlacementAnalysisItemDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPlacementAnalysisItemDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InboxPlacementAnalysisItemDtoStatusEnum] to String,
/// and [decode] dynamic data back to [InboxPlacementAnalysisItemDtoStatusEnum].
class InboxPlacementAnalysisItemDtoStatusEnumTypeTransformer {
  factory InboxPlacementAnalysisItemDtoStatusEnumTypeTransformer() => _instance ??= const InboxPlacementAnalysisItemDtoStatusEnumTypeTransformer._();

  const InboxPlacementAnalysisItemDtoStatusEnumTypeTransformer._();

  String encode(InboxPlacementAnalysisItemDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxPlacementAnalysisItemDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxPlacementAnalysisItemDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PASS': return InboxPlacementAnalysisItemDtoStatusEnum.PASS;
        case r'WARN': return InboxPlacementAnalysisItemDtoStatusEnum.WARN;
        case r'FAIL': return InboxPlacementAnalysisItemDtoStatusEnum.FAIL;
        case r'INFO': return InboxPlacementAnalysisItemDtoStatusEnum.INFO;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InboxPlacementAnalysisItemDtoStatusEnumTypeTransformer] instance.
  static InboxPlacementAnalysisItemDtoStatusEnumTypeTransformer? _instance;
}


