//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GenerateSpfRecordResults {
  /// Returns a new [GenerateSpfRecordResults] instance.
  GenerateSpfRecordResults({
    required this.name,
    required this.type,
    required this.ttl,
    required this.value,
    required this.estimatedLookupCount,
    this.warnings = const [],
  });

  String name;

  /// Domain Name Server Record Types
  GenerateSpfRecordResultsTypeEnum type;

  int ttl;

  String value;

  int estimatedLookupCount;

  List<String> warnings;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GenerateSpfRecordResults &&
     other.name == name &&
     other.type == type &&
     other.ttl == ttl &&
     other.value == value &&
     other.estimatedLookupCount == estimatedLookupCount &&
     other.warnings == warnings;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (type.hashCode) +
    (ttl.hashCode) +
    (value.hashCode) +
    (estimatedLookupCount.hashCode) +
    (warnings.hashCode);

  @override
  String toString() => 'GenerateSpfRecordResults[name=$name, type=$type, ttl=$ttl, value=$value, estimatedLookupCount=$estimatedLookupCount, warnings=$warnings]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'type'] = this.type;
      json[r'ttl'] = this.ttl;
      json[r'value'] = this.value;
      json[r'estimatedLookupCount'] = this.estimatedLookupCount;
      json[r'warnings'] = this.warnings;
    return json;
  }

  /// Returns a new [GenerateSpfRecordResults] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GenerateSpfRecordResults? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GenerateSpfRecordResults[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GenerateSpfRecordResults[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GenerateSpfRecordResults(
        name: mapValueOfType<String>(json, r'name')!,
        type: GenerateSpfRecordResultsTypeEnum.fromJson(json[r'type'])!,
        ttl: mapValueOfType<int>(json, r'ttl')!,
        value: mapValueOfType<String>(json, r'value')!,
        estimatedLookupCount: mapValueOfType<int>(json, r'estimatedLookupCount')!,
        warnings: json[r'warnings'] is List
            ? (json[r'warnings'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<GenerateSpfRecordResults> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateSpfRecordResults>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateSpfRecordResults.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GenerateSpfRecordResults> mapFromJson(dynamic json) {
    final map = <String, GenerateSpfRecordResults>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenerateSpfRecordResults.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GenerateSpfRecordResults-objects as value to a dart map
  static Map<String, List<GenerateSpfRecordResults>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GenerateSpfRecordResults>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GenerateSpfRecordResults.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'type',
    'ttl',
    'value',
    'estimatedLookupCount',
    'warnings',
  };
}

/// Domain Name Server Record Types
class GenerateSpfRecordResultsTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const GenerateSpfRecordResultsTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const A = GenerateSpfRecordResultsTypeEnum._(r'A');
  static const NS = GenerateSpfRecordResultsTypeEnum._(r'NS');
  static const MD = GenerateSpfRecordResultsTypeEnum._(r'MD');
  static const MF = GenerateSpfRecordResultsTypeEnum._(r'MF');
  static const CNAME = GenerateSpfRecordResultsTypeEnum._(r'CNAME');
  static const SOA = GenerateSpfRecordResultsTypeEnum._(r'SOA');
  static const MB = GenerateSpfRecordResultsTypeEnum._(r'MB');
  static const MG = GenerateSpfRecordResultsTypeEnum._(r'MG');
  static const MR = GenerateSpfRecordResultsTypeEnum._(r'MR');
  static const NULL = GenerateSpfRecordResultsTypeEnum._(r'NULL');
  static const WKS = GenerateSpfRecordResultsTypeEnum._(r'WKS');
  static const PTR = GenerateSpfRecordResultsTypeEnum._(r'PTR');
  static const HINFO = GenerateSpfRecordResultsTypeEnum._(r'HINFO');
  static const MINFO = GenerateSpfRecordResultsTypeEnum._(r'MINFO');
  static const MX = GenerateSpfRecordResultsTypeEnum._(r'MX');
  static const TXT = GenerateSpfRecordResultsTypeEnum._(r'TXT');
  static const RP = GenerateSpfRecordResultsTypeEnum._(r'RP');
  static const AFSDB = GenerateSpfRecordResultsTypeEnum._(r'AFSDB');
  static const x25 = GenerateSpfRecordResultsTypeEnum._(r'X25');
  static const ISDN = GenerateSpfRecordResultsTypeEnum._(r'ISDN');
  static const RT = GenerateSpfRecordResultsTypeEnum._(r'RT');
  static const NSAP = GenerateSpfRecordResultsTypeEnum._(r'NSAP');
  static const NSAP_PTR = GenerateSpfRecordResultsTypeEnum._(r'NSAP_PTR');
  static const SIG = GenerateSpfRecordResultsTypeEnum._(r'SIG');
  static const KEY = GenerateSpfRecordResultsTypeEnum._(r'KEY');
  static const PX = GenerateSpfRecordResultsTypeEnum._(r'PX');
  static const GPOS = GenerateSpfRecordResultsTypeEnum._(r'GPOS');
  static const AAAA = GenerateSpfRecordResultsTypeEnum._(r'AAAA');
  static const LOC = GenerateSpfRecordResultsTypeEnum._(r'LOC');
  static const NXT = GenerateSpfRecordResultsTypeEnum._(r'NXT');
  static const EID = GenerateSpfRecordResultsTypeEnum._(r'EID');
  static const NIMLOC = GenerateSpfRecordResultsTypeEnum._(r'NIMLOC');
  static const SRV = GenerateSpfRecordResultsTypeEnum._(r'SRV');
  static const ATMA = GenerateSpfRecordResultsTypeEnum._(r'ATMA');
  static const NAPTR = GenerateSpfRecordResultsTypeEnum._(r'NAPTR');
  static const KX = GenerateSpfRecordResultsTypeEnum._(r'KX');
  static const CERT = GenerateSpfRecordResultsTypeEnum._(r'CERT');
  static const a6 = GenerateSpfRecordResultsTypeEnum._(r'A6');
  static const DNAME = GenerateSpfRecordResultsTypeEnum._(r'DNAME');
  static const SINK = GenerateSpfRecordResultsTypeEnum._(r'SINK');
  static const OPT = GenerateSpfRecordResultsTypeEnum._(r'OPT');
  static const APL = GenerateSpfRecordResultsTypeEnum._(r'APL');
  static const DS = GenerateSpfRecordResultsTypeEnum._(r'DS');
  static const SSHFP = GenerateSpfRecordResultsTypeEnum._(r'SSHFP');
  static const IPSECKEY = GenerateSpfRecordResultsTypeEnum._(r'IPSECKEY');
  static const RRSIG = GenerateSpfRecordResultsTypeEnum._(r'RRSIG');
  static const NSEC = GenerateSpfRecordResultsTypeEnum._(r'NSEC');
  static const DNSKEY = GenerateSpfRecordResultsTypeEnum._(r'DNSKEY');
  static const DHCID = GenerateSpfRecordResultsTypeEnum._(r'DHCID');
  static const nSEC3 = GenerateSpfRecordResultsTypeEnum._(r'NSEC3');
  static const nSEC3PARAM = GenerateSpfRecordResultsTypeEnum._(r'NSEC3PARAM');
  static const TLSA = GenerateSpfRecordResultsTypeEnum._(r'TLSA');
  static const SMIMEA = GenerateSpfRecordResultsTypeEnum._(r'SMIMEA');
  static const HIP = GenerateSpfRecordResultsTypeEnum._(r'HIP');
  static const NINFO = GenerateSpfRecordResultsTypeEnum._(r'NINFO');
  static const RKEY = GenerateSpfRecordResultsTypeEnum._(r'RKEY');
  static const TALINK = GenerateSpfRecordResultsTypeEnum._(r'TALINK');
  static const CDS = GenerateSpfRecordResultsTypeEnum._(r'CDS');
  static const CDNSKEY = GenerateSpfRecordResultsTypeEnum._(r'CDNSKEY');
  static const OPENPGPKEY = GenerateSpfRecordResultsTypeEnum._(r'OPENPGPKEY');
  static const CSYNC = GenerateSpfRecordResultsTypeEnum._(r'CSYNC');
  static const ZONEMD = GenerateSpfRecordResultsTypeEnum._(r'ZONEMD');
  static const SVCB = GenerateSpfRecordResultsTypeEnum._(r'SVCB');
  static const HTTPS = GenerateSpfRecordResultsTypeEnum._(r'HTTPS');
  static const SPF = GenerateSpfRecordResultsTypeEnum._(r'SPF');
  static const UINFO = GenerateSpfRecordResultsTypeEnum._(r'UINFO');
  static const UID = GenerateSpfRecordResultsTypeEnum._(r'UID');
  static const GID = GenerateSpfRecordResultsTypeEnum._(r'GID');
  static const UNSPEC = GenerateSpfRecordResultsTypeEnum._(r'UNSPEC');
  static const NID = GenerateSpfRecordResultsTypeEnum._(r'NID');
  static const l32 = GenerateSpfRecordResultsTypeEnum._(r'L32');
  static const l64 = GenerateSpfRecordResultsTypeEnum._(r'L64');
  static const LP = GenerateSpfRecordResultsTypeEnum._(r'LP');
  static const eUI48 = GenerateSpfRecordResultsTypeEnum._(r'EUI48');
  static const eUI64 = GenerateSpfRecordResultsTypeEnum._(r'EUI64');
  static const TKEY = GenerateSpfRecordResultsTypeEnum._(r'TKEY');
  static const TSIG = GenerateSpfRecordResultsTypeEnum._(r'TSIG');
  static const IXFR = GenerateSpfRecordResultsTypeEnum._(r'IXFR');
  static const AXFR = GenerateSpfRecordResultsTypeEnum._(r'AXFR');
  static const MAILB = GenerateSpfRecordResultsTypeEnum._(r'MAILB');
  static const MAILA = GenerateSpfRecordResultsTypeEnum._(r'MAILA');
  static const ANY = GenerateSpfRecordResultsTypeEnum._(r'ANY');
  static const URI = GenerateSpfRecordResultsTypeEnum._(r'URI');
  static const CAA = GenerateSpfRecordResultsTypeEnum._(r'CAA');
  static const AVC = GenerateSpfRecordResultsTypeEnum._(r'AVC');
  static const DOA = GenerateSpfRecordResultsTypeEnum._(r'DOA');
  static const AMTRELAY = GenerateSpfRecordResultsTypeEnum._(r'AMTRELAY');
  static const TA = GenerateSpfRecordResultsTypeEnum._(r'TA');
  static const DLV = GenerateSpfRecordResultsTypeEnum._(r'DLV');

  /// List of all possible values in this [enum][GenerateSpfRecordResultsTypeEnum].
  static const values = <GenerateSpfRecordResultsTypeEnum>[
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

  static GenerateSpfRecordResultsTypeEnum? fromJson(dynamic value) => GenerateSpfRecordResultsTypeEnumTypeTransformer().decode(value);

  static List<GenerateSpfRecordResultsTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateSpfRecordResultsTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateSpfRecordResultsTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GenerateSpfRecordResultsTypeEnum] to String,
/// and [decode] dynamic data back to [GenerateSpfRecordResultsTypeEnum].
class GenerateSpfRecordResultsTypeEnumTypeTransformer {
  factory GenerateSpfRecordResultsTypeEnumTypeTransformer() => _instance ??= const GenerateSpfRecordResultsTypeEnumTypeTransformer._();

  const GenerateSpfRecordResultsTypeEnumTypeTransformer._();

  String encode(GenerateSpfRecordResultsTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GenerateSpfRecordResultsTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GenerateSpfRecordResultsTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'A': return GenerateSpfRecordResultsTypeEnum.A;
        case r'NS': return GenerateSpfRecordResultsTypeEnum.NS;
        case r'MD': return GenerateSpfRecordResultsTypeEnum.MD;
        case r'MF': return GenerateSpfRecordResultsTypeEnum.MF;
        case r'CNAME': return GenerateSpfRecordResultsTypeEnum.CNAME;
        case r'SOA': return GenerateSpfRecordResultsTypeEnum.SOA;
        case r'MB': return GenerateSpfRecordResultsTypeEnum.MB;
        case r'MG': return GenerateSpfRecordResultsTypeEnum.MG;
        case r'MR': return GenerateSpfRecordResultsTypeEnum.MR;
        case r'NULL': return GenerateSpfRecordResultsTypeEnum.NULL;
        case r'WKS': return GenerateSpfRecordResultsTypeEnum.WKS;
        case r'PTR': return GenerateSpfRecordResultsTypeEnum.PTR;
        case r'HINFO': return GenerateSpfRecordResultsTypeEnum.HINFO;
        case r'MINFO': return GenerateSpfRecordResultsTypeEnum.MINFO;
        case r'MX': return GenerateSpfRecordResultsTypeEnum.MX;
        case r'TXT': return GenerateSpfRecordResultsTypeEnum.TXT;
        case r'RP': return GenerateSpfRecordResultsTypeEnum.RP;
        case r'AFSDB': return GenerateSpfRecordResultsTypeEnum.AFSDB;
        case r'X25': return GenerateSpfRecordResultsTypeEnum.x25;
        case r'ISDN': return GenerateSpfRecordResultsTypeEnum.ISDN;
        case r'RT': return GenerateSpfRecordResultsTypeEnum.RT;
        case r'NSAP': return GenerateSpfRecordResultsTypeEnum.NSAP;
        case r'NSAP_PTR': return GenerateSpfRecordResultsTypeEnum.NSAP_PTR;
        case r'SIG': return GenerateSpfRecordResultsTypeEnum.SIG;
        case r'KEY': return GenerateSpfRecordResultsTypeEnum.KEY;
        case r'PX': return GenerateSpfRecordResultsTypeEnum.PX;
        case r'GPOS': return GenerateSpfRecordResultsTypeEnum.GPOS;
        case r'AAAA': return GenerateSpfRecordResultsTypeEnum.AAAA;
        case r'LOC': return GenerateSpfRecordResultsTypeEnum.LOC;
        case r'NXT': return GenerateSpfRecordResultsTypeEnum.NXT;
        case r'EID': return GenerateSpfRecordResultsTypeEnum.EID;
        case r'NIMLOC': return GenerateSpfRecordResultsTypeEnum.NIMLOC;
        case r'SRV': return GenerateSpfRecordResultsTypeEnum.SRV;
        case r'ATMA': return GenerateSpfRecordResultsTypeEnum.ATMA;
        case r'NAPTR': return GenerateSpfRecordResultsTypeEnum.NAPTR;
        case r'KX': return GenerateSpfRecordResultsTypeEnum.KX;
        case r'CERT': return GenerateSpfRecordResultsTypeEnum.CERT;
        case r'A6': return GenerateSpfRecordResultsTypeEnum.a6;
        case r'DNAME': return GenerateSpfRecordResultsTypeEnum.DNAME;
        case r'SINK': return GenerateSpfRecordResultsTypeEnum.SINK;
        case r'OPT': return GenerateSpfRecordResultsTypeEnum.OPT;
        case r'APL': return GenerateSpfRecordResultsTypeEnum.APL;
        case r'DS': return GenerateSpfRecordResultsTypeEnum.DS;
        case r'SSHFP': return GenerateSpfRecordResultsTypeEnum.SSHFP;
        case r'IPSECKEY': return GenerateSpfRecordResultsTypeEnum.IPSECKEY;
        case r'RRSIG': return GenerateSpfRecordResultsTypeEnum.RRSIG;
        case r'NSEC': return GenerateSpfRecordResultsTypeEnum.NSEC;
        case r'DNSKEY': return GenerateSpfRecordResultsTypeEnum.DNSKEY;
        case r'DHCID': return GenerateSpfRecordResultsTypeEnum.DHCID;
        case r'NSEC3': return GenerateSpfRecordResultsTypeEnum.nSEC3;
        case r'NSEC3PARAM': return GenerateSpfRecordResultsTypeEnum.nSEC3PARAM;
        case r'TLSA': return GenerateSpfRecordResultsTypeEnum.TLSA;
        case r'SMIMEA': return GenerateSpfRecordResultsTypeEnum.SMIMEA;
        case r'HIP': return GenerateSpfRecordResultsTypeEnum.HIP;
        case r'NINFO': return GenerateSpfRecordResultsTypeEnum.NINFO;
        case r'RKEY': return GenerateSpfRecordResultsTypeEnum.RKEY;
        case r'TALINK': return GenerateSpfRecordResultsTypeEnum.TALINK;
        case r'CDS': return GenerateSpfRecordResultsTypeEnum.CDS;
        case r'CDNSKEY': return GenerateSpfRecordResultsTypeEnum.CDNSKEY;
        case r'OPENPGPKEY': return GenerateSpfRecordResultsTypeEnum.OPENPGPKEY;
        case r'CSYNC': return GenerateSpfRecordResultsTypeEnum.CSYNC;
        case r'ZONEMD': return GenerateSpfRecordResultsTypeEnum.ZONEMD;
        case r'SVCB': return GenerateSpfRecordResultsTypeEnum.SVCB;
        case r'HTTPS': return GenerateSpfRecordResultsTypeEnum.HTTPS;
        case r'SPF': return GenerateSpfRecordResultsTypeEnum.SPF;
        case r'UINFO': return GenerateSpfRecordResultsTypeEnum.UINFO;
        case r'UID': return GenerateSpfRecordResultsTypeEnum.UID;
        case r'GID': return GenerateSpfRecordResultsTypeEnum.GID;
        case r'UNSPEC': return GenerateSpfRecordResultsTypeEnum.UNSPEC;
        case r'NID': return GenerateSpfRecordResultsTypeEnum.NID;
        case r'L32': return GenerateSpfRecordResultsTypeEnum.l32;
        case r'L64': return GenerateSpfRecordResultsTypeEnum.l64;
        case r'LP': return GenerateSpfRecordResultsTypeEnum.LP;
        case r'EUI48': return GenerateSpfRecordResultsTypeEnum.eUI48;
        case r'EUI64': return GenerateSpfRecordResultsTypeEnum.eUI64;
        case r'TKEY': return GenerateSpfRecordResultsTypeEnum.TKEY;
        case r'TSIG': return GenerateSpfRecordResultsTypeEnum.TSIG;
        case r'IXFR': return GenerateSpfRecordResultsTypeEnum.IXFR;
        case r'AXFR': return GenerateSpfRecordResultsTypeEnum.AXFR;
        case r'MAILB': return GenerateSpfRecordResultsTypeEnum.MAILB;
        case r'MAILA': return GenerateSpfRecordResultsTypeEnum.MAILA;
        case r'ANY': return GenerateSpfRecordResultsTypeEnum.ANY;
        case r'URI': return GenerateSpfRecordResultsTypeEnum.URI;
        case r'CAA': return GenerateSpfRecordResultsTypeEnum.CAA;
        case r'AVC': return GenerateSpfRecordResultsTypeEnum.AVC;
        case r'DOA': return GenerateSpfRecordResultsTypeEnum.DOA;
        case r'AMTRELAY': return GenerateSpfRecordResultsTypeEnum.AMTRELAY;
        case r'TA': return GenerateSpfRecordResultsTypeEnum.TA;
        case r'DLV': return GenerateSpfRecordResultsTypeEnum.DLV;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GenerateSpfRecordResultsTypeEnumTypeTransformer] instance.
  static GenerateSpfRecordResultsTypeEnumTypeTransformer? _instance;
}


