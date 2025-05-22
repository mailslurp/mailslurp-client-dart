//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AccountBounceBlockDto {
  /// Returns a new [AccountBounceBlockDto] instance.
  AccountBounceBlockDto({
    required this.isFrozen,
    required this.isSendingBlocked,
    required this.bounceCount,
    required this.bounceCountToday,
    required this.maximumDailyBounces,
    required this.maximumAccountBounces,
  });

  bool isFrozen;

  bool isSendingBlocked;

  int bounceCount;

  int bounceCountToday;

  int maximumDailyBounces;

  int maximumAccountBounces;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountBounceBlockDto &&
     other.isFrozen == isFrozen &&
     other.isSendingBlocked == isSendingBlocked &&
     other.bounceCount == bounceCount &&
     other.bounceCountToday == bounceCountToday &&
     other.maximumDailyBounces == maximumDailyBounces &&
     other.maximumAccountBounces == maximumAccountBounces;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (isFrozen.hashCode) +
    (isSendingBlocked.hashCode) +
    (bounceCount.hashCode) +
    (bounceCountToday.hashCode) +
    (maximumDailyBounces.hashCode) +
    (maximumAccountBounces.hashCode);

  @override
  String toString() => 'AccountBounceBlockDto[isFrozen=$isFrozen, isSendingBlocked=$isSendingBlocked, bounceCount=$bounceCount, bounceCountToday=$bounceCountToday, maximumDailyBounces=$maximumDailyBounces, maximumAccountBounces=$maximumAccountBounces]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'isFrozen'] = this.isFrozen;
      json[r'isSendingBlocked'] = this.isSendingBlocked;
      json[r'bounceCount'] = this.bounceCount;
      json[r'bounceCountToday'] = this.bounceCountToday;
      json[r'maximumDailyBounces'] = this.maximumDailyBounces;
      json[r'maximumAccountBounces'] = this.maximumAccountBounces;
    return json;
  }

  /// Returns a new [AccountBounceBlockDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountBounceBlockDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AccountBounceBlockDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AccountBounceBlockDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AccountBounceBlockDto(
        isFrozen: mapValueOfType<bool>(json, r'isFrozen')!,
        isSendingBlocked: mapValueOfType<bool>(json, r'isSendingBlocked')!,
        bounceCount: mapValueOfType<int>(json, r'bounceCount')!,
        bounceCountToday: mapValueOfType<int>(json, r'bounceCountToday')!,
        maximumDailyBounces: mapValueOfType<int>(json, r'maximumDailyBounces')!,
        maximumAccountBounces: mapValueOfType<int>(json, r'maximumAccountBounces')!,
      );
    }
    return null;
  }

  static List<AccountBounceBlockDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountBounceBlockDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountBounceBlockDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AccountBounceBlockDto> mapFromJson(dynamic json) {
    final map = <String, AccountBounceBlockDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AccountBounceBlockDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AccountBounceBlockDto-objects as value to a dart map
  static Map<String, List<AccountBounceBlockDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AccountBounceBlockDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AccountBounceBlockDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'isFrozen',
    'isSendingBlocked',
    'bounceCount',
    'bounceCountToday',
    'maximumDailyBounces',
    'maximumAccountBounces',
  };
}

