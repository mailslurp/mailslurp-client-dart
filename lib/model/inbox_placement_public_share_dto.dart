//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxPlacementPublicShareDto {
  /// Returns a new [InboxPlacementPublicShareDto] instance.
  InboxPlacementPublicShareDto({
    required this.run,
    this.results,
    this.spamScores = const [],
  });

  InboxPlacementPublicTestRunDto run;

  InboxPlacementRemoteResultsDto? results;

  List<InboxPlacementSpamScoreDto> spamScores;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxPlacementPublicShareDto &&
     other.run == run &&
     other.results == results &&
     other.spamScores == spamScores;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (run.hashCode) +
    (results == null ? 0 : results!.hashCode) +
    (spamScores.hashCode);

  @override
  String toString() => 'InboxPlacementPublicShareDto[run=$run, results=$results, spamScores=$spamScores]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'run'] = this.run;
    if (this.results != null) {
      json[r'results'] = this.results;
    } else {
      json[r'results'] = null;
    }
      json[r'spamScores'] = this.spamScores;
    return json;
  }

  /// Returns a new [InboxPlacementPublicShareDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxPlacementPublicShareDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxPlacementPublicShareDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxPlacementPublicShareDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxPlacementPublicShareDto(
        run: InboxPlacementPublicTestRunDto.fromJson(json[r'run'])!,
        results: InboxPlacementRemoteResultsDto.fromJson(json[r'results']),
        spamScores: InboxPlacementSpamScoreDto.listFromJson(json[r'spamScores']),
      );
    }
    return null;
  }

  static List<InboxPlacementPublicShareDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPlacementPublicShareDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPlacementPublicShareDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxPlacementPublicShareDto> mapFromJson(dynamic json) {
    final map = <String, InboxPlacementPublicShareDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxPlacementPublicShareDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxPlacementPublicShareDto-objects as value to a dart map
  static Map<String, List<InboxPlacementPublicShareDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxPlacementPublicShareDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxPlacementPublicShareDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'run',
    'spamScores',
  };
}

