//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CheckDnsPropagationResults {
  /// Returns a new [CheckDnsPropagationResults] instance.
  CheckDnsPropagationResults({
    required this.host,
    required this.recordType,
    this.expectedValue,
    required this.propagatedToAllResolvers,
    required this.respondingResolverCount,
    required this.matchingResolverCount,
    this.resolverResults = const [],
    this.warnings = const [],
    this.errors = const [],
  });

  String host;

  /// Domain Name Server Record Types
  CheckDnsPropagationResultsRecordTypeEnum recordType;

  String? expectedValue;

  bool propagatedToAllResolvers;

  int respondingResolverCount;

  int matchingResolverCount;

  List<DnsPropagationResolverResult> resolverResults;

  List<String> warnings;

  List<String> errors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CheckDnsPropagationResults &&
     other.host == host &&
     other.recordType == recordType &&
     other.expectedValue == expectedValue &&
     other.propagatedToAllResolvers == propagatedToAllResolvers &&
     other.respondingResolverCount == respondingResolverCount &&
     other.matchingResolverCount == matchingResolverCount &&
     other.resolverResults == resolverResults &&
     other.warnings == warnings &&
     other.errors == errors;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (host.hashCode) +
    (recordType.hashCode) +
    (expectedValue == null ? 0 : expectedValue!.hashCode) +
    (propagatedToAllResolvers.hashCode) +
    (respondingResolverCount.hashCode) +
    (matchingResolverCount.hashCode) +
    (resolverResults.hashCode) +
    (warnings.hashCode) +
    (errors.hashCode);

  @override
  String toString() => 'CheckDnsPropagationResults[host=$host, recordType=$recordType, expectedValue=$expectedValue, propagatedToAllResolvers=$propagatedToAllResolvers, respondingResolverCount=$respondingResolverCount, matchingResolverCount=$matchingResolverCount, resolverResults=$resolverResults, warnings=$warnings, errors=$errors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'host'] = this.host;
      json[r'recordType'] = this.recordType;
    if (this.expectedValue != null) {
      json[r'expectedValue'] = this.expectedValue;
    } else {
      json[r'expectedValue'] = null;
    }
      json[r'propagatedToAllResolvers'] = this.propagatedToAllResolvers;
      json[r'respondingResolverCount'] = this.respondingResolverCount;
      json[r'matchingResolverCount'] = this.matchingResolverCount;
      json[r'resolverResults'] = this.resolverResults;
      json[r'warnings'] = this.warnings;
      json[r'errors'] = this.errors;
    return json;
  }

  /// Returns a new [CheckDnsPropagationResults] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CheckDnsPropagationResults? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CheckDnsPropagationResults[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CheckDnsPropagationResults[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CheckDnsPropagationResults(
        host: mapValueOfType<String>(json, r'host')!,
        recordType: CheckDnsPropagationResultsRecordTypeEnum.fromJson(json[r'recordType'])!,
        expectedValue: mapValueOfType<String>(json, r'expectedValue'),
        propagatedToAllResolvers: mapValueOfType<bool>(json, r'propagatedToAllResolvers')!,
        respondingResolverCount: mapValueOfType<int>(json, r'respondingResolverCount')!,
        matchingResolverCount: mapValueOfType<int>(json, r'matchingResolverCount')!,
        resolverResults: DnsPropagationResolverResult.listFromJson(json[r'resolverResults']),
        warnings: json[r'warnings'] is List
            ? (json[r'warnings'] as List).cast<String>()
            : const [],
        errors: json[r'errors'] is List
            ? (json[r'errors'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<CheckDnsPropagationResults> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CheckDnsPropagationResults>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CheckDnsPropagationResults.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CheckDnsPropagationResults> mapFromJson(dynamic json) {
    final map = <String, CheckDnsPropagationResults>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CheckDnsPropagationResults.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CheckDnsPropagationResults-objects as value to a dart map
  static Map<String, List<CheckDnsPropagationResults>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CheckDnsPropagationResults>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CheckDnsPropagationResults.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'host',
    'recordType',
    'propagatedToAllResolvers',
    'respondingResolverCount',
    'matchingResolverCount',
    'resolverResults',
    'warnings',
    'errors',
  };
}

/// Domain Name Server Record Types
class CheckDnsPropagationResultsRecordTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CheckDnsPropagationResultsRecordTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const A = CheckDnsPropagationResultsRecordTypeEnum._(r'A');
  static const NS = CheckDnsPropagationResultsRecordTypeEnum._(r'NS');
  static const MD = CheckDnsPropagationResultsRecordTypeEnum._(r'MD');
  static const MF = CheckDnsPropagationResultsRecordTypeEnum._(r'MF');
  static const CNAME = CheckDnsPropagationResultsRecordTypeEnum._(r'CNAME');
  static const SOA = CheckDnsPropagationResultsRecordTypeEnum._(r'SOA');
  static const MB = CheckDnsPropagationResultsRecordTypeEnum._(r'MB');
  static const MG = CheckDnsPropagationResultsRecordTypeEnum._(r'MG');
  static const MR = CheckDnsPropagationResultsRecordTypeEnum._(r'MR');
  static const NULL = CheckDnsPropagationResultsRecordTypeEnum._(r'NULL');
  static const WKS = CheckDnsPropagationResultsRecordTypeEnum._(r'WKS');
  static const PTR = CheckDnsPropagationResultsRecordTypeEnum._(r'PTR');
  static const HINFO = CheckDnsPropagationResultsRecordTypeEnum._(r'HINFO');
  static const MINFO = CheckDnsPropagationResultsRecordTypeEnum._(r'MINFO');
  static const MX = CheckDnsPropagationResultsRecordTypeEnum._(r'MX');
  static const TXT = CheckDnsPropagationResultsRecordTypeEnum._(r'TXT');
  static const RP = CheckDnsPropagationResultsRecordTypeEnum._(r'RP');
  static const AFSDB = CheckDnsPropagationResultsRecordTypeEnum._(r'AFSDB');
  static const x25 = CheckDnsPropagationResultsRecordTypeEnum._(r'X25');
  static const ISDN = CheckDnsPropagationResultsRecordTypeEnum._(r'ISDN');
  static const RT = CheckDnsPropagationResultsRecordTypeEnum._(r'RT');
  static const NSAP = CheckDnsPropagationResultsRecordTypeEnum._(r'NSAP');
  static const NSAP_PTR = CheckDnsPropagationResultsRecordTypeEnum._(r'NSAP_PTR');
  static const SIG = CheckDnsPropagationResultsRecordTypeEnum._(r'SIG');
  static const KEY = CheckDnsPropagationResultsRecordTypeEnum._(r'KEY');
  static const PX = CheckDnsPropagationResultsRecordTypeEnum._(r'PX');
  static const GPOS = CheckDnsPropagationResultsRecordTypeEnum._(r'GPOS');
  static const AAAA = CheckDnsPropagationResultsRecordTypeEnum._(r'AAAA');
  static const LOC = CheckDnsPropagationResultsRecordTypeEnum._(r'LOC');
  static const NXT = CheckDnsPropagationResultsRecordTypeEnum._(r'NXT');
  static const EID = CheckDnsPropagationResultsRecordTypeEnum._(r'EID');
  static const NIMLOC = CheckDnsPropagationResultsRecordTypeEnum._(r'NIMLOC');
  static const SRV = CheckDnsPropagationResultsRecordTypeEnum._(r'SRV');
  static const ATMA = CheckDnsPropagationResultsRecordTypeEnum._(r'ATMA');
  static const NAPTR = CheckDnsPropagationResultsRecordTypeEnum._(r'NAPTR');
  static const KX = CheckDnsPropagationResultsRecordTypeEnum._(r'KX');
  static const CERT = CheckDnsPropagationResultsRecordTypeEnum._(r'CERT');
  static const a6 = CheckDnsPropagationResultsRecordTypeEnum._(r'A6');
  static const DNAME = CheckDnsPropagationResultsRecordTypeEnum._(r'DNAME');
  static const SINK = CheckDnsPropagationResultsRecordTypeEnum._(r'SINK');
  static const OPT = CheckDnsPropagationResultsRecordTypeEnum._(r'OPT');
  static const APL = CheckDnsPropagationResultsRecordTypeEnum._(r'APL');
  static const DS = CheckDnsPropagationResultsRecordTypeEnum._(r'DS');
  static const SSHFP = CheckDnsPropagationResultsRecordTypeEnum._(r'SSHFP');
  static const IPSECKEY = CheckDnsPropagationResultsRecordTypeEnum._(r'IPSECKEY');
  static const RRSIG = CheckDnsPropagationResultsRecordTypeEnum._(r'RRSIG');
  static const NSEC = CheckDnsPropagationResultsRecordTypeEnum._(r'NSEC');
  static const DNSKEY = CheckDnsPropagationResultsRecordTypeEnum._(r'DNSKEY');
  static const DHCID = CheckDnsPropagationResultsRecordTypeEnum._(r'DHCID');
  static const nSEC3 = CheckDnsPropagationResultsRecordTypeEnum._(r'NSEC3');
  static const nSEC3PARAM = CheckDnsPropagationResultsRecordTypeEnum._(r'NSEC3PARAM');
  static const TLSA = CheckDnsPropagationResultsRecordTypeEnum._(r'TLSA');
  static const SMIMEA = CheckDnsPropagationResultsRecordTypeEnum._(r'SMIMEA');
  static const HIP = CheckDnsPropagationResultsRecordTypeEnum._(r'HIP');
  static const NINFO = CheckDnsPropagationResultsRecordTypeEnum._(r'NINFO');
  static const RKEY = CheckDnsPropagationResultsRecordTypeEnum._(r'RKEY');
  static const TALINK = CheckDnsPropagationResultsRecordTypeEnum._(r'TALINK');
  static const CDS = CheckDnsPropagationResultsRecordTypeEnum._(r'CDS');
  static const CDNSKEY = CheckDnsPropagationResultsRecordTypeEnum._(r'CDNSKEY');
  static const OPENPGPKEY = CheckDnsPropagationResultsRecordTypeEnum._(r'OPENPGPKEY');
  static const CSYNC = CheckDnsPropagationResultsRecordTypeEnum._(r'CSYNC');
  static const ZONEMD = CheckDnsPropagationResultsRecordTypeEnum._(r'ZONEMD');
  static const SVCB = CheckDnsPropagationResultsRecordTypeEnum._(r'SVCB');
  static const HTTPS = CheckDnsPropagationResultsRecordTypeEnum._(r'HTTPS');
  static const SPF = CheckDnsPropagationResultsRecordTypeEnum._(r'SPF');
  static const UINFO = CheckDnsPropagationResultsRecordTypeEnum._(r'UINFO');
  static const UID = CheckDnsPropagationResultsRecordTypeEnum._(r'UID');
  static const GID = CheckDnsPropagationResultsRecordTypeEnum._(r'GID');
  static const UNSPEC = CheckDnsPropagationResultsRecordTypeEnum._(r'UNSPEC');
  static const NID = CheckDnsPropagationResultsRecordTypeEnum._(r'NID');
  static const l32 = CheckDnsPropagationResultsRecordTypeEnum._(r'L32');
  static const l64 = CheckDnsPropagationResultsRecordTypeEnum._(r'L64');
  static const LP = CheckDnsPropagationResultsRecordTypeEnum._(r'LP');
  static const eUI48 = CheckDnsPropagationResultsRecordTypeEnum._(r'EUI48');
  static const eUI64 = CheckDnsPropagationResultsRecordTypeEnum._(r'EUI64');
  static const TKEY = CheckDnsPropagationResultsRecordTypeEnum._(r'TKEY');
  static const TSIG = CheckDnsPropagationResultsRecordTypeEnum._(r'TSIG');
  static const IXFR = CheckDnsPropagationResultsRecordTypeEnum._(r'IXFR');
  static const AXFR = CheckDnsPropagationResultsRecordTypeEnum._(r'AXFR');
  static const MAILB = CheckDnsPropagationResultsRecordTypeEnum._(r'MAILB');
  static const MAILA = CheckDnsPropagationResultsRecordTypeEnum._(r'MAILA');
  static const ANY = CheckDnsPropagationResultsRecordTypeEnum._(r'ANY');
  static const URI = CheckDnsPropagationResultsRecordTypeEnum._(r'URI');
  static const CAA = CheckDnsPropagationResultsRecordTypeEnum._(r'CAA');
  static const AVC = CheckDnsPropagationResultsRecordTypeEnum._(r'AVC');
  static const DOA = CheckDnsPropagationResultsRecordTypeEnum._(r'DOA');
  static const AMTRELAY = CheckDnsPropagationResultsRecordTypeEnum._(r'AMTRELAY');
  static const TA = CheckDnsPropagationResultsRecordTypeEnum._(r'TA');
  static const DLV = CheckDnsPropagationResultsRecordTypeEnum._(r'DLV');

  /// List of all possible values in this [enum][CheckDnsPropagationResultsRecordTypeEnum].
  static const values = <CheckDnsPropagationResultsRecordTypeEnum>[
    A,
    NS,
    MD,
    MF,
    CNAME,
    SOA,
    MB,
    MG,
    MR,
    NULL,
    WKS,
    PTR,
    HINFO,
    MINFO,
    MX,
    TXT,
    RP,
    AFSDB,
    x25,
    ISDN,
    RT,
    NSAP,
    NSAP_PTR,
    SIG,
    KEY,
    PX,
    GPOS,
    AAAA,
    LOC,
    NXT,
    EID,
    NIMLOC,
    SRV,
    ATMA,
    NAPTR,
    KX,
    CERT,
    a6,
    DNAME,
    SINK,
    OPT,
    APL,
    DS,
    SSHFP,
    IPSECKEY,
    RRSIG,
    NSEC,
    DNSKEY,
    DHCID,
    nSEC3,
    nSEC3PARAM,
    TLSA,
    SMIMEA,
    HIP,
    NINFO,
    RKEY,
    TALINK,
    CDS,
    CDNSKEY,
    OPENPGPKEY,
    CSYNC,
    ZONEMD,
    SVCB,
    HTTPS,
    SPF,
    UINFO,
    UID,
    GID,
    UNSPEC,
    NID,
    l32,
    l64,
    LP,
    eUI48,
    eUI64,
    TKEY,
    TSIG,
    IXFR,
    AXFR,
    MAILB,
    MAILA,
    ANY,
    URI,
    CAA,
    AVC,
    DOA,
    AMTRELAY,
    TA,
    DLV,
  ];

  static CheckDnsPropagationResultsRecordTypeEnum? fromJson(dynamic value) => CheckDnsPropagationResultsRecordTypeEnumTypeTransformer().decode(value);

  static List<CheckDnsPropagationResultsRecordTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CheckDnsPropagationResultsRecordTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CheckDnsPropagationResultsRecordTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CheckDnsPropagationResultsRecordTypeEnum] to String,
/// and [decode] dynamic data back to [CheckDnsPropagationResultsRecordTypeEnum].
class CheckDnsPropagationResultsRecordTypeEnumTypeTransformer {
  factory CheckDnsPropagationResultsRecordTypeEnumTypeTransformer() => _instance ??= const CheckDnsPropagationResultsRecordTypeEnumTypeTransformer._();

  const CheckDnsPropagationResultsRecordTypeEnumTypeTransformer._();

  String encode(CheckDnsPropagationResultsRecordTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CheckDnsPropagationResultsRecordTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CheckDnsPropagationResultsRecordTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'A': return CheckDnsPropagationResultsRecordTypeEnum.A;
        case r'NS': return CheckDnsPropagationResultsRecordTypeEnum.NS;
        case r'MD': return CheckDnsPropagationResultsRecordTypeEnum.MD;
        case r'MF': return CheckDnsPropagationResultsRecordTypeEnum.MF;
        case r'CNAME': return CheckDnsPropagationResultsRecordTypeEnum.CNAME;
        case r'SOA': return CheckDnsPropagationResultsRecordTypeEnum.SOA;
        case r'MB': return CheckDnsPropagationResultsRecordTypeEnum.MB;
        case r'MG': return CheckDnsPropagationResultsRecordTypeEnum.MG;
        case r'MR': return CheckDnsPropagationResultsRecordTypeEnum.MR;
        case r'NULL': return CheckDnsPropagationResultsRecordTypeEnum.NULL;
        case r'WKS': return CheckDnsPropagationResultsRecordTypeEnum.WKS;
        case r'PTR': return CheckDnsPropagationResultsRecordTypeEnum.PTR;
        case r'HINFO': return CheckDnsPropagationResultsRecordTypeEnum.HINFO;
        case r'MINFO': return CheckDnsPropagationResultsRecordTypeEnum.MINFO;
        case r'MX': return CheckDnsPropagationResultsRecordTypeEnum.MX;
        case r'TXT': return CheckDnsPropagationResultsRecordTypeEnum.TXT;
        case r'RP': return CheckDnsPropagationResultsRecordTypeEnum.RP;
        case r'AFSDB': return CheckDnsPropagationResultsRecordTypeEnum.AFSDB;
        case r'X25': return CheckDnsPropagationResultsRecordTypeEnum.x25;
        case r'ISDN': return CheckDnsPropagationResultsRecordTypeEnum.ISDN;
        case r'RT': return CheckDnsPropagationResultsRecordTypeEnum.RT;
        case r'NSAP': return CheckDnsPropagationResultsRecordTypeEnum.NSAP;
        case r'NSAP_PTR': return CheckDnsPropagationResultsRecordTypeEnum.NSAP_PTR;
        case r'SIG': return CheckDnsPropagationResultsRecordTypeEnum.SIG;
        case r'KEY': return CheckDnsPropagationResultsRecordTypeEnum.KEY;
        case r'PX': return CheckDnsPropagationResultsRecordTypeEnum.PX;
        case r'GPOS': return CheckDnsPropagationResultsRecordTypeEnum.GPOS;
        case r'AAAA': return CheckDnsPropagationResultsRecordTypeEnum.AAAA;
        case r'LOC': return CheckDnsPropagationResultsRecordTypeEnum.LOC;
        case r'NXT': return CheckDnsPropagationResultsRecordTypeEnum.NXT;
        case r'EID': return CheckDnsPropagationResultsRecordTypeEnum.EID;
        case r'NIMLOC': return CheckDnsPropagationResultsRecordTypeEnum.NIMLOC;
        case r'SRV': return CheckDnsPropagationResultsRecordTypeEnum.SRV;
        case r'ATMA': return CheckDnsPropagationResultsRecordTypeEnum.ATMA;
        case r'NAPTR': return CheckDnsPropagationResultsRecordTypeEnum.NAPTR;
        case r'KX': return CheckDnsPropagationResultsRecordTypeEnum.KX;
        case r'CERT': return CheckDnsPropagationResultsRecordTypeEnum.CERT;
        case r'A6': return CheckDnsPropagationResultsRecordTypeEnum.a6;
        case r'DNAME': return CheckDnsPropagationResultsRecordTypeEnum.DNAME;
        case r'SINK': return CheckDnsPropagationResultsRecordTypeEnum.SINK;
        case r'OPT': return CheckDnsPropagationResultsRecordTypeEnum.OPT;
        case r'APL': return CheckDnsPropagationResultsRecordTypeEnum.APL;
        case r'DS': return CheckDnsPropagationResultsRecordTypeEnum.DS;
        case r'SSHFP': return CheckDnsPropagationResultsRecordTypeEnum.SSHFP;
        case r'IPSECKEY': return CheckDnsPropagationResultsRecordTypeEnum.IPSECKEY;
        case r'RRSIG': return CheckDnsPropagationResultsRecordTypeEnum.RRSIG;
        case r'NSEC': return CheckDnsPropagationResultsRecordTypeEnum.NSEC;
        case r'DNSKEY': return CheckDnsPropagationResultsRecordTypeEnum.DNSKEY;
        case r'DHCID': return CheckDnsPropagationResultsRecordTypeEnum.DHCID;
        case r'NSEC3': return CheckDnsPropagationResultsRecordTypeEnum.nSEC3;
        case r'NSEC3PARAM': return CheckDnsPropagationResultsRecordTypeEnum.nSEC3PARAM;
        case r'TLSA': return CheckDnsPropagationResultsRecordTypeEnum.TLSA;
        case r'SMIMEA': return CheckDnsPropagationResultsRecordTypeEnum.SMIMEA;
        case r'HIP': return CheckDnsPropagationResultsRecordTypeEnum.HIP;
        case r'NINFO': return CheckDnsPropagationResultsRecordTypeEnum.NINFO;
        case r'RKEY': return CheckDnsPropagationResultsRecordTypeEnum.RKEY;
        case r'TALINK': return CheckDnsPropagationResultsRecordTypeEnum.TALINK;
        case r'CDS': return CheckDnsPropagationResultsRecordTypeEnum.CDS;
        case r'CDNSKEY': return CheckDnsPropagationResultsRecordTypeEnum.CDNSKEY;
        case r'OPENPGPKEY': return CheckDnsPropagationResultsRecordTypeEnum.OPENPGPKEY;
        case r'CSYNC': return CheckDnsPropagationResultsRecordTypeEnum.CSYNC;
        case r'ZONEMD': return CheckDnsPropagationResultsRecordTypeEnum.ZONEMD;
        case r'SVCB': return CheckDnsPropagationResultsRecordTypeEnum.SVCB;
        case r'HTTPS': return CheckDnsPropagationResultsRecordTypeEnum.HTTPS;
        case r'SPF': return CheckDnsPropagationResultsRecordTypeEnum.SPF;
        case r'UINFO': return CheckDnsPropagationResultsRecordTypeEnum.UINFO;
        case r'UID': return CheckDnsPropagationResultsRecordTypeEnum.UID;
        case r'GID': return CheckDnsPropagationResultsRecordTypeEnum.GID;
        case r'UNSPEC': return CheckDnsPropagationResultsRecordTypeEnum.UNSPEC;
        case r'NID': return CheckDnsPropagationResultsRecordTypeEnum.NID;
        case r'L32': return CheckDnsPropagationResultsRecordTypeEnum.l32;
        case r'L64': return CheckDnsPropagationResultsRecordTypeEnum.l64;
        case r'LP': return CheckDnsPropagationResultsRecordTypeEnum.LP;
        case r'EUI48': return CheckDnsPropagationResultsRecordTypeEnum.eUI48;
        case r'EUI64': return CheckDnsPropagationResultsRecordTypeEnum.eUI64;
        case r'TKEY': return CheckDnsPropagationResultsRecordTypeEnum.TKEY;
        case r'TSIG': return CheckDnsPropagationResultsRecordTypeEnum.TSIG;
        case r'IXFR': return CheckDnsPropagationResultsRecordTypeEnum.IXFR;
        case r'AXFR': return CheckDnsPropagationResultsRecordTypeEnum.AXFR;
        case r'MAILB': return CheckDnsPropagationResultsRecordTypeEnum.MAILB;
        case r'MAILA': return CheckDnsPropagationResultsRecordTypeEnum.MAILA;
        case r'ANY': return CheckDnsPropagationResultsRecordTypeEnum.ANY;
        case r'URI': return CheckDnsPropagationResultsRecordTypeEnum.URI;
        case r'CAA': return CheckDnsPropagationResultsRecordTypeEnum.CAA;
        case r'AVC': return CheckDnsPropagationResultsRecordTypeEnum.AVC;
        case r'DOA': return CheckDnsPropagationResultsRecordTypeEnum.DOA;
        case r'AMTRELAY': return CheckDnsPropagationResultsRecordTypeEnum.AMTRELAY;
        case r'TA': return CheckDnsPropagationResultsRecordTypeEnum.TA;
        case r'DLV': return CheckDnsPropagationResultsRecordTypeEnum.DLV;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CheckDnsPropagationResultsRecordTypeEnumTypeTransformer] instance.
  static CheckDnsPropagationResultsRecordTypeEnumTypeTransformer? _instance;
}


