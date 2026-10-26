//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PostmasterTrafficStatsDto {
  /// Returns a new [PostmasterTrafficStatsDto] instance.
  PostmasterTrafficStatsDto({
    this.name,
    required this.domain,
    this.reportDate,
    this.userReportedSpamRatio,
    this.domainReputation,
    this.ipReputations = const [],
    this.spfSuccessRatio,
    this.dkimSuccessRatio,
    this.dmarcSuccessRatio,
    this.outboundEncryptionRatio,
    this.inboundEncryptionRatio,
    required this.payload,
  });

  String? name;

  String domain;

  DateTime? reportDate;

  double? userReportedSpamRatio;

  String? domainReputation;

  List<PostmasterIpReputationDto> ipReputations;

  double? spfSuccessRatio;

  double? dkimSuccessRatio;

  double? dmarcSuccessRatio;

  double? outboundEncryptionRatio;

  double? inboundEncryptionRatio;

  Object payload;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PostmasterTrafficStatsDto &&
     other.name == name &&
     other.domain == domain &&
     other.reportDate == reportDate &&
     other.userReportedSpamRatio == userReportedSpamRatio &&
     other.domainReputation == domainReputation &&
     other.ipReputations == ipReputations &&
     other.spfSuccessRatio == spfSuccessRatio &&
     other.dkimSuccessRatio == dkimSuccessRatio &&
     other.dmarcSuccessRatio == dmarcSuccessRatio &&
     other.outboundEncryptionRatio == outboundEncryptionRatio &&
     other.inboundEncryptionRatio == inboundEncryptionRatio &&
     other.payload == payload;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (domain.hashCode) +
    (reportDate == null ? 0 : reportDate!.hashCode) +
    (userReportedSpamRatio == null ? 0 : userReportedSpamRatio!.hashCode) +
    (domainReputation == null ? 0 : domainReputation!.hashCode) +
    (ipReputations.hashCode) +
    (spfSuccessRatio == null ? 0 : spfSuccessRatio!.hashCode) +
    (dkimSuccessRatio == null ? 0 : dkimSuccessRatio!.hashCode) +
    (dmarcSuccessRatio == null ? 0 : dmarcSuccessRatio!.hashCode) +
    (outboundEncryptionRatio == null ? 0 : outboundEncryptionRatio!.hashCode) +
    (inboundEncryptionRatio == null ? 0 : inboundEncryptionRatio!.hashCode) +
    (payload.hashCode);

  @override
  String toString() => 'PostmasterTrafficStatsDto[name=$name, domain=$domain, reportDate=$reportDate, userReportedSpamRatio=$userReportedSpamRatio, domainReputation=$domainReputation, ipReputations=$ipReputations, spfSuccessRatio=$spfSuccessRatio, dkimSuccessRatio=$dkimSuccessRatio, dmarcSuccessRatio=$dmarcSuccessRatio, outboundEncryptionRatio=$outboundEncryptionRatio, inboundEncryptionRatio=$inboundEncryptionRatio, payload=$payload]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'domain'] = this.domain;
    if (this.reportDate != null) {
      json[r'reportDate'] = _dateFormatter.format(this.reportDate!.toUtc());
    } else {
      json[r'reportDate'] = null;
    }
    if (this.userReportedSpamRatio != null) {
      json[r'userReportedSpamRatio'] = this.userReportedSpamRatio;
    } else {
      json[r'userReportedSpamRatio'] = null;
    }
    if (this.domainReputation != null) {
      json[r'domainReputation'] = this.domainReputation;
    } else {
      json[r'domainReputation'] = null;
    }
      json[r'ipReputations'] = this.ipReputations;
    if (this.spfSuccessRatio != null) {
      json[r'spfSuccessRatio'] = this.spfSuccessRatio;
    } else {
      json[r'spfSuccessRatio'] = null;
    }
    if (this.dkimSuccessRatio != null) {
      json[r'dkimSuccessRatio'] = this.dkimSuccessRatio;
    } else {
      json[r'dkimSuccessRatio'] = null;
    }
    if (this.dmarcSuccessRatio != null) {
      json[r'dmarcSuccessRatio'] = this.dmarcSuccessRatio;
    } else {
      json[r'dmarcSuccessRatio'] = null;
    }
    if (this.outboundEncryptionRatio != null) {
      json[r'outboundEncryptionRatio'] = this.outboundEncryptionRatio;
    } else {
      json[r'outboundEncryptionRatio'] = null;
    }
    if (this.inboundEncryptionRatio != null) {
      json[r'inboundEncryptionRatio'] = this.inboundEncryptionRatio;
    } else {
      json[r'inboundEncryptionRatio'] = null;
    }
      json[r'payload'] = this.payload;
    return json;
  }

  /// Returns a new [PostmasterTrafficStatsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PostmasterTrafficStatsDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PostmasterTrafficStatsDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PostmasterTrafficStatsDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PostmasterTrafficStatsDto(
        name: mapValueOfType<String>(json, r'name'),
        domain: mapValueOfType<String>(json, r'domain')!,
        reportDate: mapDateTime(json, r'reportDate', ''),
        userReportedSpamRatio: mapValueOfType<double>(json, r'userReportedSpamRatio'),
        domainReputation: mapValueOfType<String>(json, r'domainReputation'),
        ipReputations: PostmasterIpReputationDto.listFromJson(json[r'ipReputations']),
        spfSuccessRatio: mapValueOfType<double>(json, r'spfSuccessRatio'),
        dkimSuccessRatio: mapValueOfType<double>(json, r'dkimSuccessRatio'),
        dmarcSuccessRatio: mapValueOfType<double>(json, r'dmarcSuccessRatio'),
        outboundEncryptionRatio: mapValueOfType<double>(json, r'outboundEncryptionRatio'),
        inboundEncryptionRatio: mapValueOfType<double>(json, r'inboundEncryptionRatio'),
        payload: mapValueOfType<Object>(json, r'payload')!,
      );
    }
    return null;
  }

  static List<PostmasterTrafficStatsDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PostmasterTrafficStatsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PostmasterTrafficStatsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PostmasterTrafficStatsDto> mapFromJson(dynamic json) {
    final map = <String, PostmasterTrafficStatsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PostmasterTrafficStatsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PostmasterTrafficStatsDto-objects as value to a dart map
  static Map<String, List<PostmasterTrafficStatsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PostmasterTrafficStatsDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PostmasterTrafficStatsDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'domain',
    'ipReputations',
    'payload',
  };
}

