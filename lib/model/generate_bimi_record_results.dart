//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GenerateBimiRecordResults {
  /// Returns a new [GenerateBimiRecordResults] instance.
  GenerateBimiRecordResults({
    required this.name,
    required this.type,
    required this.ttl,
    required this.value,
  });

  String name;

  /// Domain Name Server Record Types
  GenerateBimiRecordResultsTypeEnum type;

  int ttl;

  String value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GenerateBimiRecordResults &&
     other.name == name &&
     other.type == type &&
     other.ttl == ttl &&
     other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (type.hashCode) +
    (ttl.hashCode) +
    (value.hashCode);

  @override
  String toString() => 'GenerateBimiRecordResults[name=$name, type=$type, ttl=$ttl, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'type'] = this.type;
      json[r'ttl'] = this.ttl;
      json[r'value'] = this.value;
    return json;
  }

  /// Returns a new [GenerateBimiRecordResults] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GenerateBimiRecordResults? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GenerateBimiRecordResults[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GenerateBimiRecordResults[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GenerateBimiRecordResults(
        name: mapValueOfType<String>(json, r'name')!,
        type: GenerateBimiRecordResultsTypeEnum.fromJson(json[r'type'])!,
        ttl: mapValueOfType<int>(json, r'ttl')!,
        value: mapValueOfType<String>(json, r'value')!,
      );
    }
    return null;
  }

  static List<GenerateBimiRecordResults>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateBimiRecordResults>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateBimiRecordResults.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GenerateBimiRecordResults> mapFromJson(dynamic json) {
    final map = <String, GenerateBimiRecordResults>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenerateBimiRecordResults.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GenerateBimiRecordResults-objects as value to a dart map
  static Map<String, List<GenerateBimiRecordResults>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GenerateBimiRecordResults>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenerateBimiRecordResults.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
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
  };
}

/// Domain Name Server Record Types
class GenerateBimiRecordResultsTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const GenerateBimiRecordResultsTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const A = GenerateBimiRecordResultsTypeEnum._(r'A');
  static const NS = GenerateBimiRecordResultsTypeEnum._(r'NS');
  static const MD = GenerateBimiRecordResultsTypeEnum._(r'MD');
  static const MF = GenerateBimiRecordResultsTypeEnum._(r'MF');
  static const CNAME = GenerateBimiRecordResultsTypeEnum._(r'CNAME');
  static const SOA = GenerateBimiRecordResultsTypeEnum._(r'SOA');
  static const MB = GenerateBimiRecordResultsTypeEnum._(r'MB');
  static const MG = GenerateBimiRecordResultsTypeEnum._(r'MG');
  static const MR = GenerateBimiRecordResultsTypeEnum._(r'MR');
  static const NULL = GenerateBimiRecordResultsTypeEnum._(r'NULL');
  static const WKS = GenerateBimiRecordResultsTypeEnum._(r'WKS');
  static const PTR = GenerateBimiRecordResultsTypeEnum._(r'PTR');
  static const HINFO = GenerateBimiRecordResultsTypeEnum._(r'HINFO');
  static const MINFO = GenerateBimiRecordResultsTypeEnum._(r'MINFO');
  static const MX = GenerateBimiRecordResultsTypeEnum._(r'MX');
  static const TXT = GenerateBimiRecordResultsTypeEnum._(r'TXT');
  static const RP = GenerateBimiRecordResultsTypeEnum._(r'RP');
  static const AFSDB = GenerateBimiRecordResultsTypeEnum._(r'AFSDB');
  static const x25 = GenerateBimiRecordResultsTypeEnum._(r'X25');
  static const ISDN = GenerateBimiRecordResultsTypeEnum._(r'ISDN');
  static const RT = GenerateBimiRecordResultsTypeEnum._(r'RT');
  static const NSAP = GenerateBimiRecordResultsTypeEnum._(r'NSAP');
  static const NSAP_PTR = GenerateBimiRecordResultsTypeEnum._(r'NSAP_PTR');
  static const SIG = GenerateBimiRecordResultsTypeEnum._(r'SIG');
  static const KEY = GenerateBimiRecordResultsTypeEnum._(r'KEY');
  static const PX = GenerateBimiRecordResultsTypeEnum._(r'PX');
  static const GPOS = GenerateBimiRecordResultsTypeEnum._(r'GPOS');
  static const AAAA = GenerateBimiRecordResultsTypeEnum._(r'AAAA');
  static const LOC = GenerateBimiRecordResultsTypeEnum._(r'LOC');
  static const NXT = GenerateBimiRecordResultsTypeEnum._(r'NXT');
  static const EID = GenerateBimiRecordResultsTypeEnum._(r'EID');
  static const NIMLOC = GenerateBimiRecordResultsTypeEnum._(r'NIMLOC');
  static const SRV = GenerateBimiRecordResultsTypeEnum._(r'SRV');
  static const ATMA = GenerateBimiRecordResultsTypeEnum._(r'ATMA');
  static const NAPTR = GenerateBimiRecordResultsTypeEnum._(r'NAPTR');
  static const KX = GenerateBimiRecordResultsTypeEnum._(r'KX');
  static const CERT = GenerateBimiRecordResultsTypeEnum._(r'CERT');
  static const a6 = GenerateBimiRecordResultsTypeEnum._(r'A6');
  static const DNAME = GenerateBimiRecordResultsTypeEnum._(r'DNAME');
  static const SINK = GenerateBimiRecordResultsTypeEnum._(r'SINK');
  static const OPT = GenerateBimiRecordResultsTypeEnum._(r'OPT');
  static const APL = GenerateBimiRecordResultsTypeEnum._(r'APL');
  static const DS = GenerateBimiRecordResultsTypeEnum._(r'DS');
  static const SSHFP = GenerateBimiRecordResultsTypeEnum._(r'SSHFP');
  static const IPSECKEY = GenerateBimiRecordResultsTypeEnum._(r'IPSECKEY');
  static const RRSIG = GenerateBimiRecordResultsTypeEnum._(r'RRSIG');
  static const NSEC = GenerateBimiRecordResultsTypeEnum._(r'NSEC');
  static const DNSKEY = GenerateBimiRecordResultsTypeEnum._(r'DNSKEY');
  static const DHCID = GenerateBimiRecordResultsTypeEnum._(r'DHCID');
  static const nSEC3 = GenerateBimiRecordResultsTypeEnum._(r'NSEC3');
  static const nSEC3PARAM = GenerateBimiRecordResultsTypeEnum._(r'NSEC3PARAM');
  static const TLSA = GenerateBimiRecordResultsTypeEnum._(r'TLSA');
  static const SMIMEA = GenerateBimiRecordResultsTypeEnum._(r'SMIMEA');
  static const HIP = GenerateBimiRecordResultsTypeEnum._(r'HIP');
  static const NINFO = GenerateBimiRecordResultsTypeEnum._(r'NINFO');
  static const RKEY = GenerateBimiRecordResultsTypeEnum._(r'RKEY');
  static const TALINK = GenerateBimiRecordResultsTypeEnum._(r'TALINK');
  static const CDS = GenerateBimiRecordResultsTypeEnum._(r'CDS');
  static const CDNSKEY = GenerateBimiRecordResultsTypeEnum._(r'CDNSKEY');
  static const OPENPGPKEY = GenerateBimiRecordResultsTypeEnum._(r'OPENPGPKEY');
  static const CSYNC = GenerateBimiRecordResultsTypeEnum._(r'CSYNC');
  static const ZONEMD = GenerateBimiRecordResultsTypeEnum._(r'ZONEMD');
  static const SVCB = GenerateBimiRecordResultsTypeEnum._(r'SVCB');
  static const HTTPS = GenerateBimiRecordResultsTypeEnum._(r'HTTPS');
  static const SPF = GenerateBimiRecordResultsTypeEnum._(r'SPF');
  static const UINFO = GenerateBimiRecordResultsTypeEnum._(r'UINFO');
  static const UID = GenerateBimiRecordResultsTypeEnum._(r'UID');
  static const GID = GenerateBimiRecordResultsTypeEnum._(r'GID');
  static const UNSPEC = GenerateBimiRecordResultsTypeEnum._(r'UNSPEC');
  static const NID = GenerateBimiRecordResultsTypeEnum._(r'NID');
  static const l32 = GenerateBimiRecordResultsTypeEnum._(r'L32');
  static const l64 = GenerateBimiRecordResultsTypeEnum._(r'L64');
  static const LP = GenerateBimiRecordResultsTypeEnum._(r'LP');
  static const eUI48 = GenerateBimiRecordResultsTypeEnum._(r'EUI48');
  static const eUI64 = GenerateBimiRecordResultsTypeEnum._(r'EUI64');
  static const TKEY = GenerateBimiRecordResultsTypeEnum._(r'TKEY');
  static const TSIG = GenerateBimiRecordResultsTypeEnum._(r'TSIG');
  static const IXFR = GenerateBimiRecordResultsTypeEnum._(r'IXFR');
  static const AXFR = GenerateBimiRecordResultsTypeEnum._(r'AXFR');
  static const MAILB = GenerateBimiRecordResultsTypeEnum._(r'MAILB');
  static const MAILA = GenerateBimiRecordResultsTypeEnum._(r'MAILA');
  static const ANY = GenerateBimiRecordResultsTypeEnum._(r'ANY');
  static const URI = GenerateBimiRecordResultsTypeEnum._(r'URI');
  static const CAA = GenerateBimiRecordResultsTypeEnum._(r'CAA');
  static const AVC = GenerateBimiRecordResultsTypeEnum._(r'AVC');
  static const DOA = GenerateBimiRecordResultsTypeEnum._(r'DOA');
  static const AMTRELAY = GenerateBimiRecordResultsTypeEnum._(r'AMTRELAY');
  static const TA = GenerateBimiRecordResultsTypeEnum._(r'TA');
  static const DLV = GenerateBimiRecordResultsTypeEnum._(r'DLV');

  /// List of all possible values in this [enum][GenerateBimiRecordResultsTypeEnum].
  static const values = <GenerateBimiRecordResultsTypeEnum>[
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

  static GenerateBimiRecordResultsTypeEnum? fromJson(dynamic value) => GenerateBimiRecordResultsTypeEnumTypeTransformer().decode(value);

  static List<GenerateBimiRecordResultsTypeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateBimiRecordResultsTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateBimiRecordResultsTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GenerateBimiRecordResultsTypeEnum] to String,
/// and [decode] dynamic data back to [GenerateBimiRecordResultsTypeEnum].
class GenerateBimiRecordResultsTypeEnumTypeTransformer {
  factory GenerateBimiRecordResultsTypeEnumTypeTransformer() => _instance ??= const GenerateBimiRecordResultsTypeEnumTypeTransformer._();

  const GenerateBimiRecordResultsTypeEnumTypeTransformer._();

  String encode(GenerateBimiRecordResultsTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GenerateBimiRecordResultsTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GenerateBimiRecordResultsTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'A': return GenerateBimiRecordResultsTypeEnum.A;
        case r'NS': return GenerateBimiRecordResultsTypeEnum.NS;
        case r'MD': return GenerateBimiRecordResultsTypeEnum.MD;
        case r'MF': return GenerateBimiRecordResultsTypeEnum.MF;
        case r'CNAME': return GenerateBimiRecordResultsTypeEnum.CNAME;
        case r'SOA': return GenerateBimiRecordResultsTypeEnum.SOA;
        case r'MB': return GenerateBimiRecordResultsTypeEnum.MB;
        case r'MG': return GenerateBimiRecordResultsTypeEnum.MG;
        case r'MR': return GenerateBimiRecordResultsTypeEnum.MR;
        case r'NULL': return GenerateBimiRecordResultsTypeEnum.NULL;
        case r'WKS': return GenerateBimiRecordResultsTypeEnum.WKS;
        case r'PTR': return GenerateBimiRecordResultsTypeEnum.PTR;
        case r'HINFO': return GenerateBimiRecordResultsTypeEnum.HINFO;
        case r'MINFO': return GenerateBimiRecordResultsTypeEnum.MINFO;
        case r'MX': return GenerateBimiRecordResultsTypeEnum.MX;
        case r'TXT': return GenerateBimiRecordResultsTypeEnum.TXT;
        case r'RP': return GenerateBimiRecordResultsTypeEnum.RP;
        case r'AFSDB': return GenerateBimiRecordResultsTypeEnum.AFSDB;
        case r'X25': return GenerateBimiRecordResultsTypeEnum.x25;
        case r'ISDN': return GenerateBimiRecordResultsTypeEnum.ISDN;
        case r'RT': return GenerateBimiRecordResultsTypeEnum.RT;
        case r'NSAP': return GenerateBimiRecordResultsTypeEnum.NSAP;
        case r'NSAP_PTR': return GenerateBimiRecordResultsTypeEnum.NSAP_PTR;
        case r'SIG': return GenerateBimiRecordResultsTypeEnum.SIG;
        case r'KEY': return GenerateBimiRecordResultsTypeEnum.KEY;
        case r'PX': return GenerateBimiRecordResultsTypeEnum.PX;
        case r'GPOS': return GenerateBimiRecordResultsTypeEnum.GPOS;
        case r'AAAA': return GenerateBimiRecordResultsTypeEnum.AAAA;
        case r'LOC': return GenerateBimiRecordResultsTypeEnum.LOC;
        case r'NXT': return GenerateBimiRecordResultsTypeEnum.NXT;
        case r'EID': return GenerateBimiRecordResultsTypeEnum.EID;
        case r'NIMLOC': return GenerateBimiRecordResultsTypeEnum.NIMLOC;
        case r'SRV': return GenerateBimiRecordResultsTypeEnum.SRV;
        case r'ATMA': return GenerateBimiRecordResultsTypeEnum.ATMA;
        case r'NAPTR': return GenerateBimiRecordResultsTypeEnum.NAPTR;
        case r'KX': return GenerateBimiRecordResultsTypeEnum.KX;
        case r'CERT': return GenerateBimiRecordResultsTypeEnum.CERT;
        case r'A6': return GenerateBimiRecordResultsTypeEnum.a6;
        case r'DNAME': return GenerateBimiRecordResultsTypeEnum.DNAME;
        case r'SINK': return GenerateBimiRecordResultsTypeEnum.SINK;
        case r'OPT': return GenerateBimiRecordResultsTypeEnum.OPT;
        case r'APL': return GenerateBimiRecordResultsTypeEnum.APL;
        case r'DS': return GenerateBimiRecordResultsTypeEnum.DS;
        case r'SSHFP': return GenerateBimiRecordResultsTypeEnum.SSHFP;
        case r'IPSECKEY': return GenerateBimiRecordResultsTypeEnum.IPSECKEY;
        case r'RRSIG': return GenerateBimiRecordResultsTypeEnum.RRSIG;
        case r'NSEC': return GenerateBimiRecordResultsTypeEnum.NSEC;
        case r'DNSKEY': return GenerateBimiRecordResultsTypeEnum.DNSKEY;
        case r'DHCID': return GenerateBimiRecordResultsTypeEnum.DHCID;
        case r'NSEC3': return GenerateBimiRecordResultsTypeEnum.nSEC3;
        case r'NSEC3PARAM': return GenerateBimiRecordResultsTypeEnum.nSEC3PARAM;
        case r'TLSA': return GenerateBimiRecordResultsTypeEnum.TLSA;
        case r'SMIMEA': return GenerateBimiRecordResultsTypeEnum.SMIMEA;
        case r'HIP': return GenerateBimiRecordResultsTypeEnum.HIP;
        case r'NINFO': return GenerateBimiRecordResultsTypeEnum.NINFO;
        case r'RKEY': return GenerateBimiRecordResultsTypeEnum.RKEY;
        case r'TALINK': return GenerateBimiRecordResultsTypeEnum.TALINK;
        case r'CDS': return GenerateBimiRecordResultsTypeEnum.CDS;
        case r'CDNSKEY': return GenerateBimiRecordResultsTypeEnum.CDNSKEY;
        case r'OPENPGPKEY': return GenerateBimiRecordResultsTypeEnum.OPENPGPKEY;
        case r'CSYNC': return GenerateBimiRecordResultsTypeEnum.CSYNC;
        case r'ZONEMD': return GenerateBimiRecordResultsTypeEnum.ZONEMD;
        case r'SVCB': return GenerateBimiRecordResultsTypeEnum.SVCB;
        case r'HTTPS': return GenerateBimiRecordResultsTypeEnum.HTTPS;
        case r'SPF': return GenerateBimiRecordResultsTypeEnum.SPF;
        case r'UINFO': return GenerateBimiRecordResultsTypeEnum.UINFO;
        case r'UID': return GenerateBimiRecordResultsTypeEnum.UID;
        case r'GID': return GenerateBimiRecordResultsTypeEnum.GID;
        case r'UNSPEC': return GenerateBimiRecordResultsTypeEnum.UNSPEC;
        case r'NID': return GenerateBimiRecordResultsTypeEnum.NID;
        case r'L32': return GenerateBimiRecordResultsTypeEnum.l32;
        case r'L64': return GenerateBimiRecordResultsTypeEnum.l64;
        case r'LP': return GenerateBimiRecordResultsTypeEnum.LP;
        case r'EUI48': return GenerateBimiRecordResultsTypeEnum.eUI48;
        case r'EUI64': return GenerateBimiRecordResultsTypeEnum.eUI64;
        case r'TKEY': return GenerateBimiRecordResultsTypeEnum.TKEY;
        case r'TSIG': return GenerateBimiRecordResultsTypeEnum.TSIG;
        case r'IXFR': return GenerateBimiRecordResultsTypeEnum.IXFR;
        case r'AXFR': return GenerateBimiRecordResultsTypeEnum.AXFR;
        case r'MAILB': return GenerateBimiRecordResultsTypeEnum.MAILB;
        case r'MAILA': return GenerateBimiRecordResultsTypeEnum.MAILA;
        case r'ANY': return GenerateBimiRecordResultsTypeEnum.ANY;
        case r'URI': return GenerateBimiRecordResultsTypeEnum.URI;
        case r'CAA': return GenerateBimiRecordResultsTypeEnum.CAA;
        case r'AVC': return GenerateBimiRecordResultsTypeEnum.AVC;
        case r'DOA': return GenerateBimiRecordResultsTypeEnum.DOA;
        case r'AMTRELAY': return GenerateBimiRecordResultsTypeEnum.AMTRELAY;
        case r'TA': return GenerateBimiRecordResultsTypeEnum.TA;
        case r'DLV': return GenerateBimiRecordResultsTypeEnum.DLV;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GenerateBimiRecordResultsTypeEnumTypeTransformer] instance.
  static GenerateBimiRecordResultsTypeEnumTypeTransformer? _instance;
}


