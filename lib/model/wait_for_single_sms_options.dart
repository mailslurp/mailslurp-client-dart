//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WaitForSingleSmsOptions {
  /// Returns a new [WaitForSingleSmsOptions] instance.
  WaitForSingleSmsOptions({
    required this.phoneNumberId,
    required this.timeout,
    this.unreadOnly,
    this.before,
    this.since,
    this.sortDirection,
    this.delay,
  });

  String phoneNumberId;

  int timeout;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? unreadOnly;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? before;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? since;

  WaitForSingleSmsOptionsSortDirectionEnum? sortDirection;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? delay;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WaitForSingleSmsOptions &&
     other.phoneNumberId == phoneNumberId &&
     other.timeout == timeout &&
     other.unreadOnly == unreadOnly &&
     other.before == before &&
     other.since == since &&
     other.sortDirection == sortDirection &&
     other.delay == delay;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (phoneNumberId.hashCode) +
    (timeout.hashCode) +
    (unreadOnly == null ? 0 : unreadOnly!.hashCode) +
    (before == null ? 0 : before!.hashCode) +
    (since == null ? 0 : since!.hashCode) +
    (sortDirection == null ? 0 : sortDirection!.hashCode) +
    (delay == null ? 0 : delay!.hashCode);

  @override
  String toString() => 'WaitForSingleSmsOptions[phoneNumberId=$phoneNumberId, timeout=$timeout, unreadOnly=$unreadOnly, before=$before, since=$since, sortDirection=$sortDirection, delay=$delay]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'phoneNumberId'] = this.phoneNumberId;
      json[r'timeout'] = this.timeout;
    if (this.unreadOnly != null) {
      json[r'unreadOnly'] = this.unreadOnly;
    } else {
      json[r'unreadOnly'] = null;
    }
    if (this.before != null) {
      json[r'before'] = this.before!.toUtc().toIso8601String();
    } else {
      json[r'before'] = null;
    }
    if (this.since != null) {
      json[r'since'] = this.since!.toUtc().toIso8601String();
    } else {
      json[r'since'] = null;
    }
    if (this.sortDirection != null) {
      json[r'sortDirection'] = this.sortDirection;
    } else {
      json[r'sortDirection'] = null;
    }
    if (this.delay != null) {
      json[r'delay'] = this.delay;
    } else {
      json[r'delay'] = null;
    }
    return json;
  }

  /// Returns a new [WaitForSingleSmsOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WaitForSingleSmsOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WaitForSingleSmsOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WaitForSingleSmsOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WaitForSingleSmsOptions(
        phoneNumberId: mapValueOfType<String>(json, r'phoneNumberId')!,
        timeout: mapValueOfType<int>(json, r'timeout')!,
        unreadOnly: mapValueOfType<bool>(json, r'unreadOnly'),
        before: mapDateTime(json, r'before', ''),
        since: mapDateTime(json, r'since', ''),
        sortDirection: WaitForSingleSmsOptionsSortDirectionEnum.fromJson(json[r'sortDirection']),
        delay: mapValueOfType<int>(json, r'delay'),
      );
    }
    return null;
  }

  static List<WaitForSingleSmsOptions>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WaitForSingleSmsOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WaitForSingleSmsOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WaitForSingleSmsOptions> mapFromJson(dynamic json) {
    final map = <String, WaitForSingleSmsOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WaitForSingleSmsOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WaitForSingleSmsOptions-objects as value to a dart map
  static Map<String, List<WaitForSingleSmsOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WaitForSingleSmsOptions>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WaitForSingleSmsOptions.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'phoneNumberId',
    'timeout',
  };
}


class WaitForSingleSmsOptionsSortDirectionEnum {
  /// Instantiate a new enum with the provided [value].
  const WaitForSingleSmsOptionsSortDirectionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ASC = WaitForSingleSmsOptionsSortDirectionEnum._(r'ASC');
  static const DESC = WaitForSingleSmsOptionsSortDirectionEnum._(r'DESC');

  /// List of all possible values in this [enum][WaitForSingleSmsOptionsSortDirectionEnum].
  static const values = <WaitForSingleSmsOptionsSortDirectionEnum>[
    ASC,
    DESC,
  ];

  static WaitForSingleSmsOptionsSortDirectionEnum? fromJson(dynamic value) => WaitForSingleSmsOptionsSortDirectionEnumTypeTransformer().decode(value);

  static List<WaitForSingleSmsOptionsSortDirectionEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WaitForSingleSmsOptionsSortDirectionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WaitForSingleSmsOptionsSortDirectionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WaitForSingleSmsOptionsSortDirectionEnum] to String,
/// and [decode] dynamic data back to [WaitForSingleSmsOptionsSortDirectionEnum].
class WaitForSingleSmsOptionsSortDirectionEnumTypeTransformer {
  factory WaitForSingleSmsOptionsSortDirectionEnumTypeTransformer() => _instance ??= const WaitForSingleSmsOptionsSortDirectionEnumTypeTransformer._();

  const WaitForSingleSmsOptionsSortDirectionEnumTypeTransformer._();

  String encode(WaitForSingleSmsOptionsSortDirectionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WaitForSingleSmsOptionsSortDirectionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WaitForSingleSmsOptionsSortDirectionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ASC': return WaitForSingleSmsOptionsSortDirectionEnum.ASC;
        case r'DESC': return WaitForSingleSmsOptionsSortDirectionEnum.DESC;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WaitForSingleSmsOptionsSortDirectionEnumTypeTransformer] instance.
  static WaitForSingleSmsOptionsSortDirectionEnumTypeTransformer? _instance;
}


