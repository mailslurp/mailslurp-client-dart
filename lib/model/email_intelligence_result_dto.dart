//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailIntelligenceResultDto {
  /// Returns a new [EmailIntelligenceResultDto] instance.
  EmailIntelligenceResultDto({
    required this.input,
    required this.totalScore,
    required this.scoreBreakdown,
    required this.signals,
  });

  /// Original input value before normalization.
  String input;

  /// Score from 0 to 100 where higher is better.
  int totalScore;

  EmailIntelligenceScoreBreakdownDto scoreBreakdown;

  EmailIntelligenceSignalsDto signals;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailIntelligenceResultDto &&
     other.input == input &&
     other.totalScore == totalScore &&
     other.scoreBreakdown == scoreBreakdown &&
     other.signals == signals;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (input.hashCode) +
    (totalScore.hashCode) +
    (scoreBreakdown.hashCode) +
    (signals.hashCode);

  @override
  String toString() => 'EmailIntelligenceResultDto[input=$input, totalScore=$totalScore, scoreBreakdown=$scoreBreakdown, signals=$signals]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'input'] = this.input;
      json[r'totalScore'] = this.totalScore;
      json[r'scoreBreakdown'] = this.scoreBreakdown;
      json[r'signals'] = this.signals;
    return json;
  }

  /// Returns a new [EmailIntelligenceResultDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailIntelligenceResultDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailIntelligenceResultDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailIntelligenceResultDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailIntelligenceResultDto(
        input: mapValueOfType<String>(json, r'input')!,
        totalScore: mapValueOfType<int>(json, r'totalScore')!,
        scoreBreakdown: EmailIntelligenceScoreBreakdownDto.fromJson(json[r'scoreBreakdown'])!,
        signals: EmailIntelligenceSignalsDto.fromJson(json[r'signals'])!,
      );
    }
    return null;
  }

  static List<EmailIntelligenceResultDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailIntelligenceResultDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailIntelligenceResultDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailIntelligenceResultDto> mapFromJson(dynamic json) {
    final map = <String, EmailIntelligenceResultDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailIntelligenceResultDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailIntelligenceResultDto-objects as value to a dart map
  static Map<String, List<EmailIntelligenceResultDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailIntelligenceResultDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailIntelligenceResultDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'input',
    'totalScore',
    'scoreBreakdown',
    'signals',
  };
}

