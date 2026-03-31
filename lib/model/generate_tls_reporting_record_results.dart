//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GenerateTlsReportingRecordResults {
  /// Returns a new [GenerateTlsReportingRecordResults] instance.
  GenerateTlsReportingRecordResults({
    required this.name,
    required this.type,
    required this.ttl,
    required this.value,
  });

  String name;

  /// Domain Name Server Record Types
  GenerateTlsReportingRecordResultsTypeEnum type;

  int ttl;

  String value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GenerateTlsReportingRecordResults &&
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
  String toString() => 'GenerateTlsReportingRecordResults[name=$name, type=$type, ttl=$ttl, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'type'] = this.type;
      json[r'ttl'] = this.ttl;
      json[r'value'] = this.value;
    return json;
  }

  /// Returns a new [GenerateTlsReportingRecordResults] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GenerateTlsReportingRecordResults? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GenerateTlsReportingRecordResults[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GenerateTlsReportingRecordResults[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GenerateTlsReportingRecordResults(
        name: mapValueOfType<String>(json, r'name')!,
        type: GenerateTlsReportingRecordResultsTypeEnum.fromJson(json[r'type'])!,
        ttl: mapValueOfType<int>(json, r'ttl')!,
        value: mapValueOfType<String>(json, r'value')!,
      );
    }
    return null;
  }

  static List<GenerateTlsReportingRecordResults> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateTlsReportingRecordResults>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateTlsReportingRecordResults.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GenerateTlsReportingRecordResults> mapFromJson(dynamic json) {
    final map = <String, GenerateTlsReportingRecordResults>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenerateTlsReportingRecordResults.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GenerateTlsReportingRecordResults-objects as value to a dart map
  static Map<String, List<GenerateTlsReportingRecordResults>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GenerateTlsReportingRecordResults>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GenerateTlsReportingRecordResults.listFromJson(entry.value, growable: growable,);
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
class GenerateTlsReportingRecordResultsTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const GenerateTlsReportingRecordResultsTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const A = GenerateTlsReportingRecordResultsTypeEnum._(r'A');
  static const NS = GenerateTlsReportingRecordResultsTypeEnum._(r'NS');
  static const MD = GenerateTlsReportingRecordResultsTypeEnum._(r'MD');
  static const MF = GenerateTlsReportingRecordResultsTypeEnum._(r'MF');
  static const CNAME = GenerateTlsReportingRecordResultsTypeEnum._(r'CNAME');
  static const SOA = GenerateTlsReportingRecordResultsTypeEnum._(r'SOA');
  static const MB = GenerateTlsReportingRecordResultsTypeEnum._(r'MB');
  static const MG = GenerateTlsReportingRecordResultsTypeEnum._(r'MG');
  static const MR = GenerateTlsReportingRecordResultsTypeEnum._(r'MR');
  static const NULL = GenerateTlsReportingRecordResultsTypeEnum._(r'NULL');
  static const WKS = GenerateTlsReportingRecordResultsTypeEnum._(r'WKS');
  static const PTR = GenerateTlsReportingRecordResultsTypeEnum._(r'PTR');
  static const HINFO = GenerateTlsReportingRecordResultsTypeEnum._(r'HINFO');
  static const MINFO = GenerateTlsReportingRecordResultsTypeEnum._(r'MINFO');
  static const MX = GenerateTlsReportingRecordResultsTypeEnum._(r'MX');
  static const TXT = GenerateTlsReportingRecordResultsTypeEnum._(r'TXT');
  static const RP = GenerateTlsReportingRecordResultsTypeEnum._(r'RP');
  static const AFSDB = GenerateTlsReportingRecordResultsTypeEnum._(r'AFSDB');
  static const x25 = GenerateTlsReportingRecordResultsTypeEnum._(r'X25');
  static const ISDN = GenerateTlsReportingRecordResultsTypeEnum._(r'ISDN');
  static const RT = GenerateTlsReportingRecordResultsTypeEnum._(r'RT');
  static const NSAP = GenerateTlsReportingRecordResultsTypeEnum._(r'NSAP');
  static const NSAP_PTR = GenerateTlsReportingRecordResultsTypeEnum._(r'NSAP_PTR');
  static const SIG = GenerateTlsReportingRecordResultsTypeEnum._(r'SIG');
  static const KEY = GenerateTlsReportingRecordResultsTypeEnum._(r'KEY');
  static const PX = GenerateTlsReportingRecordResultsTypeEnum._(r'PX');
  static const GPOS = GenerateTlsReportingRecordResultsTypeEnum._(r'GPOS');
  static const AAAA = GenerateTlsReportingRecordResultsTypeEnum._(r'AAAA');
  static const LOC = GenerateTlsReportingRecordResultsTypeEnum._(r'LOC');
  static const NXT = GenerateTlsReportingRecordResultsTypeEnum._(r'NXT');
  static const EID = GenerateTlsReportingRecordResultsTypeEnum._(r'EID');
  static const NIMLOC = GenerateTlsReportingRecordResultsTypeEnum._(r'NIMLOC');
  static const SRV = GenerateTlsReportingRecordResultsTypeEnum._(r'SRV');
  static const ATMA = GenerateTlsReportingRecordResultsTypeEnum._(r'ATMA');
  static const NAPTR = GenerateTlsReportingRecordResultsTypeEnum._(r'NAPTR');
  static const KX = GenerateTlsReportingRecordResultsTypeEnum._(r'KX');
  static const CERT = GenerateTlsReportingRecordResultsTypeEnum._(r'CERT');
  static const a6 = GenerateTlsReportingRecordResultsTypeEnum._(r'A6');
  static const DNAME = GenerateTlsReportingRecordResultsTypeEnum._(r'DNAME');
  static const SINK = GenerateTlsReportingRecordResultsTypeEnum._(r'SINK');
  static const OPT = GenerateTlsReportingRecordResultsTypeEnum._(r'OPT');
  static const APL = GenerateTlsReportingRecordResultsTypeEnum._(r'APL');
  static const DS = GenerateTlsReportingRecordResultsTypeEnum._(r'DS');
  static const SSHFP = GenerateTlsReportingRecordResultsTypeEnum._(r'SSHFP');
  static const IPSECKEY = GenerateTlsReportingRecordResultsTypeEnum._(r'IPSECKEY');
  static const RRSIG = GenerateTlsReportingRecordResultsTypeEnum._(r'RRSIG');
  static const NSEC = GenerateTlsReportingRecordResultsTypeEnum._(r'NSEC');
  static const DNSKEY = GenerateTlsReportingRecordResultsTypeEnum._(r'DNSKEY');
  static const DHCID = GenerateTlsReportingRecordResultsTypeEnum._(r'DHCID');
  static const nSEC3 = GenerateTlsReportingRecordResultsTypeEnum._(r'NSEC3');
  static const nSEC3PARAM = GenerateTlsReportingRecordResultsTypeEnum._(r'NSEC3PARAM');
  static const TLSA = GenerateTlsReportingRecordResultsTypeEnum._(r'TLSA');
  static const SMIMEA = GenerateTlsReportingRecordResultsTypeEnum._(r'SMIMEA');
  static const HIP = GenerateTlsReportingRecordResultsTypeEnum._(r'HIP');
  static const NINFO = GenerateTlsReportingRecordResultsTypeEnum._(r'NINFO');
  static const RKEY = GenerateTlsReportingRecordResultsTypeEnum._(r'RKEY');
  static const TALINK = GenerateTlsReportingRecordResultsTypeEnum._(r'TALINK');
  static const CDS = GenerateTlsReportingRecordResultsTypeEnum._(r'CDS');
  static const CDNSKEY = GenerateTlsReportingRecordResultsTypeEnum._(r'CDNSKEY');
  static const OPENPGPKEY = GenerateTlsReportingRecordResultsTypeEnum._(r'OPENPGPKEY');
  static const CSYNC = GenerateTlsReportingRecordResultsTypeEnum._(r'CSYNC');
  static const ZONEMD = GenerateTlsReportingRecordResultsTypeEnum._(r'ZONEMD');
  static const SVCB = GenerateTlsReportingRecordResultsTypeEnum._(r'SVCB');
  static const HTTPS = GenerateTlsReportingRecordResultsTypeEnum._(r'HTTPS');
  static const SPF = GenerateTlsReportingRecordResultsTypeEnum._(r'SPF');
  static const UINFO = GenerateTlsReportingRecordResultsTypeEnum._(r'UINFO');
  static const UID = GenerateTlsReportingRecordResultsTypeEnum._(r'UID');
  static const GID = GenerateTlsReportingRecordResultsTypeEnum._(r'GID');
  static const UNSPEC = GenerateTlsReportingRecordResultsTypeEnum._(r'UNSPEC');
  static const NID = GenerateTlsReportingRecordResultsTypeEnum._(r'NID');
  static const l32 = GenerateTlsReportingRecordResultsTypeEnum._(r'L32');
  static const l64 = GenerateTlsReportingRecordResultsTypeEnum._(r'L64');
  static const LP = GenerateTlsReportingRecordResultsTypeEnum._(r'LP');
  static const eUI48 = GenerateTlsReportingRecordResultsTypeEnum._(r'EUI48');
  static const eUI64 = GenerateTlsReportingRecordResultsTypeEnum._(r'EUI64');
  static const TKEY = GenerateTlsReportingRecordResultsTypeEnum._(r'TKEY');
  static const TSIG = GenerateTlsReportingRecordResultsTypeEnum._(r'TSIG');
  static const IXFR = GenerateTlsReportingRecordResultsTypeEnum._(r'IXFR');
  static const AXFR = GenerateTlsReportingRecordResultsTypeEnum._(r'AXFR');
  static const MAILB = GenerateTlsReportingRecordResultsTypeEnum._(r'MAILB');
  static const MAILA = GenerateTlsReportingRecordResultsTypeEnum._(r'MAILA');
  static const ANY = GenerateTlsReportingRecordResultsTypeEnum._(r'ANY');
  static const URI = GenerateTlsReportingRecordResultsTypeEnum._(r'URI');
  static const CAA = GenerateTlsReportingRecordResultsTypeEnum._(r'CAA');
  static const AVC = GenerateTlsReportingRecordResultsTypeEnum._(r'AVC');
  static const DOA = GenerateTlsReportingRecordResultsTypeEnum._(r'DOA');
  static const AMTRELAY = GenerateTlsReportingRecordResultsTypeEnum._(r'AMTRELAY');
  static const TA = GenerateTlsReportingRecordResultsTypeEnum._(r'TA');
  static const DLV = GenerateTlsReportingRecordResultsTypeEnum._(r'DLV');

  /// List of all possible values in this [enum][GenerateTlsReportingRecordResultsTypeEnum].
  static const values = <GenerateTlsReportingRecordResultsTypeEnum>[
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

  static GenerateTlsReportingRecordResultsTypeEnum? fromJson(dynamic value) => GenerateTlsReportingRecordResultsTypeEnumTypeTransformer().decode(value);

  static List<GenerateTlsReportingRecordResultsTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateTlsReportingRecordResultsTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateTlsReportingRecordResultsTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GenerateTlsReportingRecordResultsTypeEnum] to String,
/// and [decode] dynamic data back to [GenerateTlsReportingRecordResultsTypeEnum].
class GenerateTlsReportingRecordResultsTypeEnumTypeTransformer {
  factory GenerateTlsReportingRecordResultsTypeEnumTypeTransformer() => _instance ??= const GenerateTlsReportingRecordResultsTypeEnumTypeTransformer._();

  const GenerateTlsReportingRecordResultsTypeEnumTypeTransformer._();

  String encode(GenerateTlsReportingRecordResultsTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GenerateTlsReportingRecordResultsTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GenerateTlsReportingRecordResultsTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'A': return GenerateTlsReportingRecordResultsTypeEnum.A;
        case r'NS': return GenerateTlsReportingRecordResultsTypeEnum.NS;
        case r'MD': return GenerateTlsReportingRecordResultsTypeEnum.MD;
        case r'MF': return GenerateTlsReportingRecordResultsTypeEnum.MF;
        case r'CNAME': return GenerateTlsReportingRecordResultsTypeEnum.CNAME;
        case r'SOA': return GenerateTlsReportingRecordResultsTypeEnum.SOA;
        case r'MB': return GenerateTlsReportingRecordResultsTypeEnum.MB;
        case r'MG': return GenerateTlsReportingRecordResultsTypeEnum.MG;
        case r'MR': return GenerateTlsReportingRecordResultsTypeEnum.MR;
        case r'NULL': return GenerateTlsReportingRecordResultsTypeEnum.NULL;
        case r'WKS': return GenerateTlsReportingRecordResultsTypeEnum.WKS;
        case r'PTR': return GenerateTlsReportingRecordResultsTypeEnum.PTR;
        case r'HINFO': return GenerateTlsReportingRecordResultsTypeEnum.HINFO;
        case r'MINFO': return GenerateTlsReportingRecordResultsTypeEnum.MINFO;
        case r'MX': return GenerateTlsReportingRecordResultsTypeEnum.MX;
        case r'TXT': return GenerateTlsReportingRecordResultsTypeEnum.TXT;
        case r'RP': return GenerateTlsReportingRecordResultsTypeEnum.RP;
        case r'AFSDB': return GenerateTlsReportingRecordResultsTypeEnum.AFSDB;
        case r'X25': return GenerateTlsReportingRecordResultsTypeEnum.x25;
        case r'ISDN': return GenerateTlsReportingRecordResultsTypeEnum.ISDN;
        case r'RT': return GenerateTlsReportingRecordResultsTypeEnum.RT;
        case r'NSAP': return GenerateTlsReportingRecordResultsTypeEnum.NSAP;
        case r'NSAP_PTR': return GenerateTlsReportingRecordResultsTypeEnum.NSAP_PTR;
        case r'SIG': return GenerateTlsReportingRecordResultsTypeEnum.SIG;
        case r'KEY': return GenerateTlsReportingRecordResultsTypeEnum.KEY;
        case r'PX': return GenerateTlsReportingRecordResultsTypeEnum.PX;
        case r'GPOS': return GenerateTlsReportingRecordResultsTypeEnum.GPOS;
        case r'AAAA': return GenerateTlsReportingRecordResultsTypeEnum.AAAA;
        case r'LOC': return GenerateTlsReportingRecordResultsTypeEnum.LOC;
        case r'NXT': return GenerateTlsReportingRecordResultsTypeEnum.NXT;
        case r'EID': return GenerateTlsReportingRecordResultsTypeEnum.EID;
        case r'NIMLOC': return GenerateTlsReportingRecordResultsTypeEnum.NIMLOC;
        case r'SRV': return GenerateTlsReportingRecordResultsTypeEnum.SRV;
        case r'ATMA': return GenerateTlsReportingRecordResultsTypeEnum.ATMA;
        case r'NAPTR': return GenerateTlsReportingRecordResultsTypeEnum.NAPTR;
        case r'KX': return GenerateTlsReportingRecordResultsTypeEnum.KX;
        case r'CERT': return GenerateTlsReportingRecordResultsTypeEnum.CERT;
        case r'A6': return GenerateTlsReportingRecordResultsTypeEnum.a6;
        case r'DNAME': return GenerateTlsReportingRecordResultsTypeEnum.DNAME;
        case r'SINK': return GenerateTlsReportingRecordResultsTypeEnum.SINK;
        case r'OPT': return GenerateTlsReportingRecordResultsTypeEnum.OPT;
        case r'APL': return GenerateTlsReportingRecordResultsTypeEnum.APL;
        case r'DS': return GenerateTlsReportingRecordResultsTypeEnum.DS;
        case r'SSHFP': return GenerateTlsReportingRecordResultsTypeEnum.SSHFP;
        case r'IPSECKEY': return GenerateTlsReportingRecordResultsTypeEnum.IPSECKEY;
        case r'RRSIG': return GenerateTlsReportingRecordResultsTypeEnum.RRSIG;
        case r'NSEC': return GenerateTlsReportingRecordResultsTypeEnum.NSEC;
        case r'DNSKEY': return GenerateTlsReportingRecordResultsTypeEnum.DNSKEY;
        case r'DHCID': return GenerateTlsReportingRecordResultsTypeEnum.DHCID;
        case r'NSEC3': return GenerateTlsReportingRecordResultsTypeEnum.nSEC3;
        case r'NSEC3PARAM': return GenerateTlsReportingRecordResultsTypeEnum.nSEC3PARAM;
        case r'TLSA': return GenerateTlsReportingRecordResultsTypeEnum.TLSA;
        case r'SMIMEA': return GenerateTlsReportingRecordResultsTypeEnum.SMIMEA;
        case r'HIP': return GenerateTlsReportingRecordResultsTypeEnum.HIP;
        case r'NINFO': return GenerateTlsReportingRecordResultsTypeEnum.NINFO;
        case r'RKEY': return GenerateTlsReportingRecordResultsTypeEnum.RKEY;
        case r'TALINK': return GenerateTlsReportingRecordResultsTypeEnum.TALINK;
        case r'CDS': return GenerateTlsReportingRecordResultsTypeEnum.CDS;
        case r'CDNSKEY': return GenerateTlsReportingRecordResultsTypeEnum.CDNSKEY;
        case r'OPENPGPKEY': return GenerateTlsReportingRecordResultsTypeEnum.OPENPGPKEY;
        case r'CSYNC': return GenerateTlsReportingRecordResultsTypeEnum.CSYNC;
        case r'ZONEMD': return GenerateTlsReportingRecordResultsTypeEnum.ZONEMD;
        case r'SVCB': return GenerateTlsReportingRecordResultsTypeEnum.SVCB;
        case r'HTTPS': return GenerateTlsReportingRecordResultsTypeEnum.HTTPS;
        case r'SPF': return GenerateTlsReportingRecordResultsTypeEnum.SPF;
        case r'UINFO': return GenerateTlsReportingRecordResultsTypeEnum.UINFO;
        case r'UID': return GenerateTlsReportingRecordResultsTypeEnum.UID;
        case r'GID': return GenerateTlsReportingRecordResultsTypeEnum.GID;
        case r'UNSPEC': return GenerateTlsReportingRecordResultsTypeEnum.UNSPEC;
        case r'NID': return GenerateTlsReportingRecordResultsTypeEnum.NID;
        case r'L32': return GenerateTlsReportingRecordResultsTypeEnum.l32;
        case r'L64': return GenerateTlsReportingRecordResultsTypeEnum.l64;
        case r'LP': return GenerateTlsReportingRecordResultsTypeEnum.LP;
        case r'EUI48': return GenerateTlsReportingRecordResultsTypeEnum.eUI48;
        case r'EUI64': return GenerateTlsReportingRecordResultsTypeEnum.eUI64;
        case r'TKEY': return GenerateTlsReportingRecordResultsTypeEnum.TKEY;
        case r'TSIG': return GenerateTlsReportingRecordResultsTypeEnum.TSIG;
        case r'IXFR': return GenerateTlsReportingRecordResultsTypeEnum.IXFR;
        case r'AXFR': return GenerateTlsReportingRecordResultsTypeEnum.AXFR;
        case r'MAILB': return GenerateTlsReportingRecordResultsTypeEnum.MAILB;
        case r'MAILA': return GenerateTlsReportingRecordResultsTypeEnum.MAILA;
        case r'ANY': return GenerateTlsReportingRecordResultsTypeEnum.ANY;
        case r'URI': return GenerateTlsReportingRecordResultsTypeEnum.URI;
        case r'CAA': return GenerateTlsReportingRecordResultsTypeEnum.CAA;
        case r'AVC': return GenerateTlsReportingRecordResultsTypeEnum.AVC;
        case r'DOA': return GenerateTlsReportingRecordResultsTypeEnum.DOA;
        case r'AMTRELAY': return GenerateTlsReportingRecordResultsTypeEnum.AMTRELAY;
        case r'TA': return GenerateTlsReportingRecordResultsTypeEnum.TA;
        case r'DLV': return GenerateTlsReportingRecordResultsTypeEnum.DLV;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GenerateTlsReportingRecordResultsTypeEnumTypeTransformer] instance.
  static GenerateTlsReportingRecordResultsTypeEnumTypeTransformer? _instance;
}


