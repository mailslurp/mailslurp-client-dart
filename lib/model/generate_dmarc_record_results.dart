//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GenerateDmarcRecordResults {
  /// Returns a new [GenerateDmarcRecordResults] instance.
  GenerateDmarcRecordResults({
    required this.name,
    required this.type,
    required this.ttl,
    required this.value,
  });

  String name;

  /// Domain Name Server Record Types
  GenerateDmarcRecordResultsTypeEnum type;

  int ttl;

  String value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GenerateDmarcRecordResults &&
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
  String toString() => 'GenerateDmarcRecordResults[name=$name, type=$type, ttl=$ttl, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'type'] = this.type;
      json[r'ttl'] = this.ttl;
      json[r'value'] = this.value;
    return json;
  }

  /// Returns a new [GenerateDmarcRecordResults] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GenerateDmarcRecordResults? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GenerateDmarcRecordResults[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GenerateDmarcRecordResults[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GenerateDmarcRecordResults(
        name: mapValueOfType<String>(json, r'name')!,
        type: GenerateDmarcRecordResultsTypeEnum.fromJson(json[r'type'])!,
        ttl: mapValueOfType<int>(json, r'ttl')!,
        value: mapValueOfType<String>(json, r'value')!,
      );
    }
    return null;
  }

  static List<GenerateDmarcRecordResults> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateDmarcRecordResults>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateDmarcRecordResults.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GenerateDmarcRecordResults> mapFromJson(dynamic json) {
    final map = <String, GenerateDmarcRecordResults>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenerateDmarcRecordResults.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GenerateDmarcRecordResults-objects as value to a dart map
  static Map<String, List<GenerateDmarcRecordResults>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GenerateDmarcRecordResults>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GenerateDmarcRecordResults.listFromJson(entry.value, growable: growable,);
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
class GenerateDmarcRecordResultsTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const GenerateDmarcRecordResultsTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const A = GenerateDmarcRecordResultsTypeEnum._(r'A');
  static const NS = GenerateDmarcRecordResultsTypeEnum._(r'NS');
  static const MD = GenerateDmarcRecordResultsTypeEnum._(r'MD');
  static const MF = GenerateDmarcRecordResultsTypeEnum._(r'MF');
  static const CNAME = GenerateDmarcRecordResultsTypeEnum._(r'CNAME');
  static const SOA = GenerateDmarcRecordResultsTypeEnum._(r'SOA');
  static const MB = GenerateDmarcRecordResultsTypeEnum._(r'MB');
  static const MG = GenerateDmarcRecordResultsTypeEnum._(r'MG');
  static const MR = GenerateDmarcRecordResultsTypeEnum._(r'MR');
  static const NULL = GenerateDmarcRecordResultsTypeEnum._(r'NULL');
  static const WKS = GenerateDmarcRecordResultsTypeEnum._(r'WKS');
  static const PTR = GenerateDmarcRecordResultsTypeEnum._(r'PTR');
  static const HINFO = GenerateDmarcRecordResultsTypeEnum._(r'HINFO');
  static const MINFO = GenerateDmarcRecordResultsTypeEnum._(r'MINFO');
  static const MX = GenerateDmarcRecordResultsTypeEnum._(r'MX');
  static const TXT = GenerateDmarcRecordResultsTypeEnum._(r'TXT');
  static const RP = GenerateDmarcRecordResultsTypeEnum._(r'RP');
  static const AFSDB = GenerateDmarcRecordResultsTypeEnum._(r'AFSDB');
  static const x25 = GenerateDmarcRecordResultsTypeEnum._(r'X25');
  static const ISDN = GenerateDmarcRecordResultsTypeEnum._(r'ISDN');
  static const RT = GenerateDmarcRecordResultsTypeEnum._(r'RT');
  static const NSAP = GenerateDmarcRecordResultsTypeEnum._(r'NSAP');
  static const NSAP_PTR = GenerateDmarcRecordResultsTypeEnum._(r'NSAP_PTR');
  static const SIG = GenerateDmarcRecordResultsTypeEnum._(r'SIG');
  static const KEY = GenerateDmarcRecordResultsTypeEnum._(r'KEY');
  static const PX = GenerateDmarcRecordResultsTypeEnum._(r'PX');
  static const GPOS = GenerateDmarcRecordResultsTypeEnum._(r'GPOS');
  static const AAAA = GenerateDmarcRecordResultsTypeEnum._(r'AAAA');
  static const LOC = GenerateDmarcRecordResultsTypeEnum._(r'LOC');
  static const NXT = GenerateDmarcRecordResultsTypeEnum._(r'NXT');
  static const EID = GenerateDmarcRecordResultsTypeEnum._(r'EID');
  static const NIMLOC = GenerateDmarcRecordResultsTypeEnum._(r'NIMLOC');
  static const SRV = GenerateDmarcRecordResultsTypeEnum._(r'SRV');
  static const ATMA = GenerateDmarcRecordResultsTypeEnum._(r'ATMA');
  static const NAPTR = GenerateDmarcRecordResultsTypeEnum._(r'NAPTR');
  static const KX = GenerateDmarcRecordResultsTypeEnum._(r'KX');
  static const CERT = GenerateDmarcRecordResultsTypeEnum._(r'CERT');
  static const a6 = GenerateDmarcRecordResultsTypeEnum._(r'A6');
  static const DNAME = GenerateDmarcRecordResultsTypeEnum._(r'DNAME');
  static const SINK = GenerateDmarcRecordResultsTypeEnum._(r'SINK');
  static const OPT = GenerateDmarcRecordResultsTypeEnum._(r'OPT');
  static const APL = GenerateDmarcRecordResultsTypeEnum._(r'APL');
  static const DS = GenerateDmarcRecordResultsTypeEnum._(r'DS');
  static const SSHFP = GenerateDmarcRecordResultsTypeEnum._(r'SSHFP');
  static const IPSECKEY = GenerateDmarcRecordResultsTypeEnum._(r'IPSECKEY');
  static const RRSIG = GenerateDmarcRecordResultsTypeEnum._(r'RRSIG');
  static const NSEC = GenerateDmarcRecordResultsTypeEnum._(r'NSEC');
  static const DNSKEY = GenerateDmarcRecordResultsTypeEnum._(r'DNSKEY');
  static const DHCID = GenerateDmarcRecordResultsTypeEnum._(r'DHCID');
  static const nSEC3 = GenerateDmarcRecordResultsTypeEnum._(r'NSEC3');
  static const nSEC3PARAM = GenerateDmarcRecordResultsTypeEnum._(r'NSEC3PARAM');
  static const TLSA = GenerateDmarcRecordResultsTypeEnum._(r'TLSA');
  static const SMIMEA = GenerateDmarcRecordResultsTypeEnum._(r'SMIMEA');
  static const HIP = GenerateDmarcRecordResultsTypeEnum._(r'HIP');
  static const NINFO = GenerateDmarcRecordResultsTypeEnum._(r'NINFO');
  static const RKEY = GenerateDmarcRecordResultsTypeEnum._(r'RKEY');
  static const TALINK = GenerateDmarcRecordResultsTypeEnum._(r'TALINK');
  static const CDS = GenerateDmarcRecordResultsTypeEnum._(r'CDS');
  static const CDNSKEY = GenerateDmarcRecordResultsTypeEnum._(r'CDNSKEY');
  static const OPENPGPKEY = GenerateDmarcRecordResultsTypeEnum._(r'OPENPGPKEY');
  static const CSYNC = GenerateDmarcRecordResultsTypeEnum._(r'CSYNC');
  static const ZONEMD = GenerateDmarcRecordResultsTypeEnum._(r'ZONEMD');
  static const SVCB = GenerateDmarcRecordResultsTypeEnum._(r'SVCB');
  static const HTTPS = GenerateDmarcRecordResultsTypeEnum._(r'HTTPS');
  static const SPF = GenerateDmarcRecordResultsTypeEnum._(r'SPF');
  static const UINFO = GenerateDmarcRecordResultsTypeEnum._(r'UINFO');
  static const UID = GenerateDmarcRecordResultsTypeEnum._(r'UID');
  static const GID = GenerateDmarcRecordResultsTypeEnum._(r'GID');
  static const UNSPEC = GenerateDmarcRecordResultsTypeEnum._(r'UNSPEC');
  static const NID = GenerateDmarcRecordResultsTypeEnum._(r'NID');
  static const l32 = GenerateDmarcRecordResultsTypeEnum._(r'L32');
  static const l64 = GenerateDmarcRecordResultsTypeEnum._(r'L64');
  static const LP = GenerateDmarcRecordResultsTypeEnum._(r'LP');
  static const eUI48 = GenerateDmarcRecordResultsTypeEnum._(r'EUI48');
  static const eUI64 = GenerateDmarcRecordResultsTypeEnum._(r'EUI64');
  static const TKEY = GenerateDmarcRecordResultsTypeEnum._(r'TKEY');
  static const TSIG = GenerateDmarcRecordResultsTypeEnum._(r'TSIG');
  static const IXFR = GenerateDmarcRecordResultsTypeEnum._(r'IXFR');
  static const AXFR = GenerateDmarcRecordResultsTypeEnum._(r'AXFR');
  static const MAILB = GenerateDmarcRecordResultsTypeEnum._(r'MAILB');
  static const MAILA = GenerateDmarcRecordResultsTypeEnum._(r'MAILA');
  static const ANY = GenerateDmarcRecordResultsTypeEnum._(r'ANY');
  static const URI = GenerateDmarcRecordResultsTypeEnum._(r'URI');
  static const CAA = GenerateDmarcRecordResultsTypeEnum._(r'CAA');
  static const AVC = GenerateDmarcRecordResultsTypeEnum._(r'AVC');
  static const DOA = GenerateDmarcRecordResultsTypeEnum._(r'DOA');
  static const AMTRELAY = GenerateDmarcRecordResultsTypeEnum._(r'AMTRELAY');
  static const TA = GenerateDmarcRecordResultsTypeEnum._(r'TA');
  static const DLV = GenerateDmarcRecordResultsTypeEnum._(r'DLV');

  /// List of all possible values in this [enum][GenerateDmarcRecordResultsTypeEnum].
  static const values = <GenerateDmarcRecordResultsTypeEnum>[
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

  static GenerateDmarcRecordResultsTypeEnum? fromJson(dynamic value) => GenerateDmarcRecordResultsTypeEnumTypeTransformer().decode(value);

  static List<GenerateDmarcRecordResultsTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateDmarcRecordResultsTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateDmarcRecordResultsTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GenerateDmarcRecordResultsTypeEnum] to String,
/// and [decode] dynamic data back to [GenerateDmarcRecordResultsTypeEnum].
class GenerateDmarcRecordResultsTypeEnumTypeTransformer {
  factory GenerateDmarcRecordResultsTypeEnumTypeTransformer() => _instance ??= const GenerateDmarcRecordResultsTypeEnumTypeTransformer._();

  const GenerateDmarcRecordResultsTypeEnumTypeTransformer._();

  String encode(GenerateDmarcRecordResultsTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GenerateDmarcRecordResultsTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GenerateDmarcRecordResultsTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'A': return GenerateDmarcRecordResultsTypeEnum.A;
        case r'NS': return GenerateDmarcRecordResultsTypeEnum.NS;
        case r'MD': return GenerateDmarcRecordResultsTypeEnum.MD;
        case r'MF': return GenerateDmarcRecordResultsTypeEnum.MF;
        case r'CNAME': return GenerateDmarcRecordResultsTypeEnum.CNAME;
        case r'SOA': return GenerateDmarcRecordResultsTypeEnum.SOA;
        case r'MB': return GenerateDmarcRecordResultsTypeEnum.MB;
        case r'MG': return GenerateDmarcRecordResultsTypeEnum.MG;
        case r'MR': return GenerateDmarcRecordResultsTypeEnum.MR;
        case r'NULL': return GenerateDmarcRecordResultsTypeEnum.NULL;
        case r'WKS': return GenerateDmarcRecordResultsTypeEnum.WKS;
        case r'PTR': return GenerateDmarcRecordResultsTypeEnum.PTR;
        case r'HINFO': return GenerateDmarcRecordResultsTypeEnum.HINFO;
        case r'MINFO': return GenerateDmarcRecordResultsTypeEnum.MINFO;
        case r'MX': return GenerateDmarcRecordResultsTypeEnum.MX;
        case r'TXT': return GenerateDmarcRecordResultsTypeEnum.TXT;
        case r'RP': return GenerateDmarcRecordResultsTypeEnum.RP;
        case r'AFSDB': return GenerateDmarcRecordResultsTypeEnum.AFSDB;
        case r'X25': return GenerateDmarcRecordResultsTypeEnum.x25;
        case r'ISDN': return GenerateDmarcRecordResultsTypeEnum.ISDN;
        case r'RT': return GenerateDmarcRecordResultsTypeEnum.RT;
        case r'NSAP': return GenerateDmarcRecordResultsTypeEnum.NSAP;
        case r'NSAP_PTR': return GenerateDmarcRecordResultsTypeEnum.NSAP_PTR;
        case r'SIG': return GenerateDmarcRecordResultsTypeEnum.SIG;
        case r'KEY': return GenerateDmarcRecordResultsTypeEnum.KEY;
        case r'PX': return GenerateDmarcRecordResultsTypeEnum.PX;
        case r'GPOS': return GenerateDmarcRecordResultsTypeEnum.GPOS;
        case r'AAAA': return GenerateDmarcRecordResultsTypeEnum.AAAA;
        case r'LOC': return GenerateDmarcRecordResultsTypeEnum.LOC;
        case r'NXT': return GenerateDmarcRecordResultsTypeEnum.NXT;
        case r'EID': return GenerateDmarcRecordResultsTypeEnum.EID;
        case r'NIMLOC': return GenerateDmarcRecordResultsTypeEnum.NIMLOC;
        case r'SRV': return GenerateDmarcRecordResultsTypeEnum.SRV;
        case r'ATMA': return GenerateDmarcRecordResultsTypeEnum.ATMA;
        case r'NAPTR': return GenerateDmarcRecordResultsTypeEnum.NAPTR;
        case r'KX': return GenerateDmarcRecordResultsTypeEnum.KX;
        case r'CERT': return GenerateDmarcRecordResultsTypeEnum.CERT;
        case r'A6': return GenerateDmarcRecordResultsTypeEnum.a6;
        case r'DNAME': return GenerateDmarcRecordResultsTypeEnum.DNAME;
        case r'SINK': return GenerateDmarcRecordResultsTypeEnum.SINK;
        case r'OPT': return GenerateDmarcRecordResultsTypeEnum.OPT;
        case r'APL': return GenerateDmarcRecordResultsTypeEnum.APL;
        case r'DS': return GenerateDmarcRecordResultsTypeEnum.DS;
        case r'SSHFP': return GenerateDmarcRecordResultsTypeEnum.SSHFP;
        case r'IPSECKEY': return GenerateDmarcRecordResultsTypeEnum.IPSECKEY;
        case r'RRSIG': return GenerateDmarcRecordResultsTypeEnum.RRSIG;
        case r'NSEC': return GenerateDmarcRecordResultsTypeEnum.NSEC;
        case r'DNSKEY': return GenerateDmarcRecordResultsTypeEnum.DNSKEY;
        case r'DHCID': return GenerateDmarcRecordResultsTypeEnum.DHCID;
        case r'NSEC3': return GenerateDmarcRecordResultsTypeEnum.nSEC3;
        case r'NSEC3PARAM': return GenerateDmarcRecordResultsTypeEnum.nSEC3PARAM;
        case r'TLSA': return GenerateDmarcRecordResultsTypeEnum.TLSA;
        case r'SMIMEA': return GenerateDmarcRecordResultsTypeEnum.SMIMEA;
        case r'HIP': return GenerateDmarcRecordResultsTypeEnum.HIP;
        case r'NINFO': return GenerateDmarcRecordResultsTypeEnum.NINFO;
        case r'RKEY': return GenerateDmarcRecordResultsTypeEnum.RKEY;
        case r'TALINK': return GenerateDmarcRecordResultsTypeEnum.TALINK;
        case r'CDS': return GenerateDmarcRecordResultsTypeEnum.CDS;
        case r'CDNSKEY': return GenerateDmarcRecordResultsTypeEnum.CDNSKEY;
        case r'OPENPGPKEY': return GenerateDmarcRecordResultsTypeEnum.OPENPGPKEY;
        case r'CSYNC': return GenerateDmarcRecordResultsTypeEnum.CSYNC;
        case r'ZONEMD': return GenerateDmarcRecordResultsTypeEnum.ZONEMD;
        case r'SVCB': return GenerateDmarcRecordResultsTypeEnum.SVCB;
        case r'HTTPS': return GenerateDmarcRecordResultsTypeEnum.HTTPS;
        case r'SPF': return GenerateDmarcRecordResultsTypeEnum.SPF;
        case r'UINFO': return GenerateDmarcRecordResultsTypeEnum.UINFO;
        case r'UID': return GenerateDmarcRecordResultsTypeEnum.UID;
        case r'GID': return GenerateDmarcRecordResultsTypeEnum.GID;
        case r'UNSPEC': return GenerateDmarcRecordResultsTypeEnum.UNSPEC;
        case r'NID': return GenerateDmarcRecordResultsTypeEnum.NID;
        case r'L32': return GenerateDmarcRecordResultsTypeEnum.l32;
        case r'L64': return GenerateDmarcRecordResultsTypeEnum.l64;
        case r'LP': return GenerateDmarcRecordResultsTypeEnum.LP;
        case r'EUI48': return GenerateDmarcRecordResultsTypeEnum.eUI48;
        case r'EUI64': return GenerateDmarcRecordResultsTypeEnum.eUI64;
        case r'TKEY': return GenerateDmarcRecordResultsTypeEnum.TKEY;
        case r'TSIG': return GenerateDmarcRecordResultsTypeEnum.TSIG;
        case r'IXFR': return GenerateDmarcRecordResultsTypeEnum.IXFR;
        case r'AXFR': return GenerateDmarcRecordResultsTypeEnum.AXFR;
        case r'MAILB': return GenerateDmarcRecordResultsTypeEnum.MAILB;
        case r'MAILA': return GenerateDmarcRecordResultsTypeEnum.MAILA;
        case r'ANY': return GenerateDmarcRecordResultsTypeEnum.ANY;
        case r'URI': return GenerateDmarcRecordResultsTypeEnum.URI;
        case r'CAA': return GenerateDmarcRecordResultsTypeEnum.CAA;
        case r'AVC': return GenerateDmarcRecordResultsTypeEnum.AVC;
        case r'DOA': return GenerateDmarcRecordResultsTypeEnum.DOA;
        case r'AMTRELAY': return GenerateDmarcRecordResultsTypeEnum.AMTRELAY;
        case r'TA': return GenerateDmarcRecordResultsTypeEnum.TA;
        case r'DLV': return GenerateDmarcRecordResultsTypeEnum.DLV;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GenerateDmarcRecordResultsTypeEnumTypeTransformer] instance.
  static GenerateDmarcRecordResultsTypeEnumTypeTransformer? _instance;
}


