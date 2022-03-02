//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DNSLookupResult {
  /// Returns a new [DNSLookupResult] instance.
  DNSLookupResult({
    @required this.recordType,
    @required this.ttl,
    this.recordEntries = const [],
    @required this.name,
  });

  /// Domain Name Server Record Types
  DNSLookupResultRecordTypeEnum recordType;

  int ttl;

  List<String> recordEntries;

  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DNSLookupResult &&
     other.recordType == recordType &&
     other.ttl == ttl &&
     other.recordEntries == recordEntries &&
     other.name == name;

  @override
  int get hashCode =>
    (recordType == null ? 0 : recordType.hashCode) +
    (ttl == null ? 0 : ttl.hashCode) +
    (recordEntries == null ? 0 : recordEntries.hashCode) +
    (name == null ? 0 : name.hashCode);

  @override
  String toString() => 'DNSLookupResult[recordType=$recordType, ttl=$ttl, recordEntries=$recordEntries, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'recordType'] = recordType;
      json[r'ttl'] = ttl;
      json[r'recordEntries'] = recordEntries;
      json[r'name'] = name;
    return json;
  }

  /// Returns a new [DNSLookupResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DNSLookupResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : DNSLookupResult(
        recordType: DNSLookupResultRecordTypeEnum.fromJson(json[r'recordType']),
        ttl: json[r'ttl'],
        recordEntries: json[r'recordEntries'] == null
          ? null
          : (json[r'recordEntries'] as List).cast<String>(),
        name: json[r'name'],
    );

  static List<DNSLookupResult> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <DNSLookupResult>[]
      : json.map((v) => DNSLookupResult.fromJson(v)).toList(growable: true == growable);

  static Map<String, DNSLookupResult> mapFromJson(Map<String, dynamic> json) {
    final map = <String, DNSLookupResult>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = DNSLookupResult.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of DNSLookupResult-objects as value to a dart map
  static Map<String, List<DNSLookupResult>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DNSLookupResult>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = DNSLookupResult.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// Domain Name Server Record Types
class DNSLookupResultRecordTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const DNSLookupResultRecordTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const A = DNSLookupResultRecordTypeEnum._(r'A');
  static const NS = DNSLookupResultRecordTypeEnum._(r'NS');
  static const MD = DNSLookupResultRecordTypeEnum._(r'MD');
  static const MF = DNSLookupResultRecordTypeEnum._(r'MF');
  static const CNAME = DNSLookupResultRecordTypeEnum._(r'CNAME');
  static const SOA = DNSLookupResultRecordTypeEnum._(r'SOA');
  static const MB = DNSLookupResultRecordTypeEnum._(r'MB');
  static const MG = DNSLookupResultRecordTypeEnum._(r'MG');
  static const MR = DNSLookupResultRecordTypeEnum._(r'MR');
  static const NULL = DNSLookupResultRecordTypeEnum._(r'NULL');
  static const WKS = DNSLookupResultRecordTypeEnum._(r'WKS');
  static const PTR = DNSLookupResultRecordTypeEnum._(r'PTR');
  static const HINFO = DNSLookupResultRecordTypeEnum._(r'HINFO');
  static const MINFO = DNSLookupResultRecordTypeEnum._(r'MINFO');
  static const MX = DNSLookupResultRecordTypeEnum._(r'MX');
  static const TXT = DNSLookupResultRecordTypeEnum._(r'TXT');
  static const RP = DNSLookupResultRecordTypeEnum._(r'RP');
  static const AFSDB = DNSLookupResultRecordTypeEnum._(r'AFSDB');
  static const x25 = DNSLookupResultRecordTypeEnum._(r'X25');
  static const ISDN = DNSLookupResultRecordTypeEnum._(r'ISDN');
  static const RT = DNSLookupResultRecordTypeEnum._(r'RT');
  static const NSAP = DNSLookupResultRecordTypeEnum._(r'NSAP');
  static const NSAP_PTR = DNSLookupResultRecordTypeEnum._(r'NSAP_PTR');
  static const SIG = DNSLookupResultRecordTypeEnum._(r'SIG');
  static const KEY = DNSLookupResultRecordTypeEnum._(r'KEY');
  static const PX = DNSLookupResultRecordTypeEnum._(r'PX');
  static const GPOS = DNSLookupResultRecordTypeEnum._(r'GPOS');
  static const AAAA = DNSLookupResultRecordTypeEnum._(r'AAAA');
  static const LOC = DNSLookupResultRecordTypeEnum._(r'LOC');
  static const NXT = DNSLookupResultRecordTypeEnum._(r'NXT');
  static const EID = DNSLookupResultRecordTypeEnum._(r'EID');
  static const NIMLOC = DNSLookupResultRecordTypeEnum._(r'NIMLOC');
  static const SRV = DNSLookupResultRecordTypeEnum._(r'SRV');
  static const ATMA = DNSLookupResultRecordTypeEnum._(r'ATMA');
  static const NAPTR = DNSLookupResultRecordTypeEnum._(r'NAPTR');
  static const KX = DNSLookupResultRecordTypeEnum._(r'KX');
  static const CERT = DNSLookupResultRecordTypeEnum._(r'CERT');
  static const a6 = DNSLookupResultRecordTypeEnum._(r'A6');
  static const DNAME = DNSLookupResultRecordTypeEnum._(r'DNAME');
  static const SINK = DNSLookupResultRecordTypeEnum._(r'SINK');
  static const OPT = DNSLookupResultRecordTypeEnum._(r'OPT');
  static const APL = DNSLookupResultRecordTypeEnum._(r'APL');
  static const DS = DNSLookupResultRecordTypeEnum._(r'DS');
  static const SSHFP = DNSLookupResultRecordTypeEnum._(r'SSHFP');
  static const IPSECKEY = DNSLookupResultRecordTypeEnum._(r'IPSECKEY');
  static const RRSIG = DNSLookupResultRecordTypeEnum._(r'RRSIG');
  static const NSEC = DNSLookupResultRecordTypeEnum._(r'NSEC');
  static const DNSKEY = DNSLookupResultRecordTypeEnum._(r'DNSKEY');
  static const DHCID = DNSLookupResultRecordTypeEnum._(r'DHCID');
  static const nSEC3 = DNSLookupResultRecordTypeEnum._(r'NSEC3');
  static const nSEC3PARAM = DNSLookupResultRecordTypeEnum._(r'NSEC3PARAM');
  static const TLSA = DNSLookupResultRecordTypeEnum._(r'TLSA');
  static const SMIMEA = DNSLookupResultRecordTypeEnum._(r'SMIMEA');
  static const HIP = DNSLookupResultRecordTypeEnum._(r'HIP');
  static const NINFO = DNSLookupResultRecordTypeEnum._(r'NINFO');
  static const RKEY = DNSLookupResultRecordTypeEnum._(r'RKEY');
  static const TALINK = DNSLookupResultRecordTypeEnum._(r'TALINK');
  static const CDS = DNSLookupResultRecordTypeEnum._(r'CDS');
  static const CDNSKEY = DNSLookupResultRecordTypeEnum._(r'CDNSKEY');
  static const OPENPGPKEY = DNSLookupResultRecordTypeEnum._(r'OPENPGPKEY');
  static const CSYNC = DNSLookupResultRecordTypeEnum._(r'CSYNC');
  static const ZONEMD = DNSLookupResultRecordTypeEnum._(r'ZONEMD');
  static const SVCB = DNSLookupResultRecordTypeEnum._(r'SVCB');
  static const HTTPS = DNSLookupResultRecordTypeEnum._(r'HTTPS');
  static const SPF = DNSLookupResultRecordTypeEnum._(r'SPF');
  static const UINFO = DNSLookupResultRecordTypeEnum._(r'UINFO');
  static const UID = DNSLookupResultRecordTypeEnum._(r'UID');
  static const GID = DNSLookupResultRecordTypeEnum._(r'GID');
  static const UNSPEC = DNSLookupResultRecordTypeEnum._(r'UNSPEC');
  static const NID = DNSLookupResultRecordTypeEnum._(r'NID');
  static const l32 = DNSLookupResultRecordTypeEnum._(r'L32');
  static const l64 = DNSLookupResultRecordTypeEnum._(r'L64');
  static const LP = DNSLookupResultRecordTypeEnum._(r'LP');
  static const eUI48 = DNSLookupResultRecordTypeEnum._(r'EUI48');
  static const eUI64 = DNSLookupResultRecordTypeEnum._(r'EUI64');
  static const TKEY = DNSLookupResultRecordTypeEnum._(r'TKEY');
  static const TSIG = DNSLookupResultRecordTypeEnum._(r'TSIG');
  static const IXFR = DNSLookupResultRecordTypeEnum._(r'IXFR');
  static const AXFR = DNSLookupResultRecordTypeEnum._(r'AXFR');
  static const MAILB = DNSLookupResultRecordTypeEnum._(r'MAILB');
  static const MAILA = DNSLookupResultRecordTypeEnum._(r'MAILA');
  static const ANY = DNSLookupResultRecordTypeEnum._(r'ANY');
  static const URI = DNSLookupResultRecordTypeEnum._(r'URI');
  static const CAA = DNSLookupResultRecordTypeEnum._(r'CAA');
  static const AVC = DNSLookupResultRecordTypeEnum._(r'AVC');
  static const DOA = DNSLookupResultRecordTypeEnum._(r'DOA');
  static const AMTRELAY = DNSLookupResultRecordTypeEnum._(r'AMTRELAY');
  static const TA = DNSLookupResultRecordTypeEnum._(r'TA');
  static const DLV = DNSLookupResultRecordTypeEnum._(r'DLV');

  /// List of all possible values in this [enum][DNSLookupResultRecordTypeEnum].
  static const values = <DNSLookupResultRecordTypeEnum>[
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

  static DNSLookupResultRecordTypeEnum fromJson(dynamic value) =>
    DNSLookupResultRecordTypeEnumTypeTransformer().decode(value);

  static List<DNSLookupResultRecordTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <DNSLookupResultRecordTypeEnum>[]
      : json
          .map((value) => DNSLookupResultRecordTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [DNSLookupResultRecordTypeEnum] to String,
/// and [decode] dynamic data back to [DNSLookupResultRecordTypeEnum].
class DNSLookupResultRecordTypeEnumTypeTransformer {
  const DNSLookupResultRecordTypeEnumTypeTransformer._();

  factory DNSLookupResultRecordTypeEnumTypeTransformer() => _instance ??= DNSLookupResultRecordTypeEnumTypeTransformer._();

  String encode(DNSLookupResultRecordTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DNSLookupResultRecordTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DNSLookupResultRecordTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'A': return DNSLookupResultRecordTypeEnum.A;
      case r'NS': return DNSLookupResultRecordTypeEnum.NS;
      case r'MD': return DNSLookupResultRecordTypeEnum.MD;
      case r'MF': return DNSLookupResultRecordTypeEnum.MF;
      case r'CNAME': return DNSLookupResultRecordTypeEnum.CNAME;
      case r'SOA': return DNSLookupResultRecordTypeEnum.SOA;
      case r'MB': return DNSLookupResultRecordTypeEnum.MB;
      case r'MG': return DNSLookupResultRecordTypeEnum.MG;
      case r'MR': return DNSLookupResultRecordTypeEnum.MR;
      case r'NULL': return DNSLookupResultRecordTypeEnum.NULL;
      case r'WKS': return DNSLookupResultRecordTypeEnum.WKS;
      case r'PTR': return DNSLookupResultRecordTypeEnum.PTR;
      case r'HINFO': return DNSLookupResultRecordTypeEnum.HINFO;
      case r'MINFO': return DNSLookupResultRecordTypeEnum.MINFO;
      case r'MX': return DNSLookupResultRecordTypeEnum.MX;
      case r'TXT': return DNSLookupResultRecordTypeEnum.TXT;
      case r'RP': return DNSLookupResultRecordTypeEnum.RP;
      case r'AFSDB': return DNSLookupResultRecordTypeEnum.AFSDB;
      case r'X25': return DNSLookupResultRecordTypeEnum.x25;
      case r'ISDN': return DNSLookupResultRecordTypeEnum.ISDN;
      case r'RT': return DNSLookupResultRecordTypeEnum.RT;
      case r'NSAP': return DNSLookupResultRecordTypeEnum.NSAP;
      case r'NSAP_PTR': return DNSLookupResultRecordTypeEnum.NSAP_PTR;
      case r'SIG': return DNSLookupResultRecordTypeEnum.SIG;
      case r'KEY': return DNSLookupResultRecordTypeEnum.KEY;
      case r'PX': return DNSLookupResultRecordTypeEnum.PX;
      case r'GPOS': return DNSLookupResultRecordTypeEnum.GPOS;
      case r'AAAA': return DNSLookupResultRecordTypeEnum.AAAA;
      case r'LOC': return DNSLookupResultRecordTypeEnum.LOC;
      case r'NXT': return DNSLookupResultRecordTypeEnum.NXT;
      case r'EID': return DNSLookupResultRecordTypeEnum.EID;
      case r'NIMLOC': return DNSLookupResultRecordTypeEnum.NIMLOC;
      case r'SRV': return DNSLookupResultRecordTypeEnum.SRV;
      case r'ATMA': return DNSLookupResultRecordTypeEnum.ATMA;
      case r'NAPTR': return DNSLookupResultRecordTypeEnum.NAPTR;
      case r'KX': return DNSLookupResultRecordTypeEnum.KX;
      case r'CERT': return DNSLookupResultRecordTypeEnum.CERT;
      case r'A6': return DNSLookupResultRecordTypeEnum.a6;
      case r'DNAME': return DNSLookupResultRecordTypeEnum.DNAME;
      case r'SINK': return DNSLookupResultRecordTypeEnum.SINK;
      case r'OPT': return DNSLookupResultRecordTypeEnum.OPT;
      case r'APL': return DNSLookupResultRecordTypeEnum.APL;
      case r'DS': return DNSLookupResultRecordTypeEnum.DS;
      case r'SSHFP': return DNSLookupResultRecordTypeEnum.SSHFP;
      case r'IPSECKEY': return DNSLookupResultRecordTypeEnum.IPSECKEY;
      case r'RRSIG': return DNSLookupResultRecordTypeEnum.RRSIG;
      case r'NSEC': return DNSLookupResultRecordTypeEnum.NSEC;
      case r'DNSKEY': return DNSLookupResultRecordTypeEnum.DNSKEY;
      case r'DHCID': return DNSLookupResultRecordTypeEnum.DHCID;
      case r'NSEC3': return DNSLookupResultRecordTypeEnum.nSEC3;
      case r'NSEC3PARAM': return DNSLookupResultRecordTypeEnum.nSEC3PARAM;
      case r'TLSA': return DNSLookupResultRecordTypeEnum.TLSA;
      case r'SMIMEA': return DNSLookupResultRecordTypeEnum.SMIMEA;
      case r'HIP': return DNSLookupResultRecordTypeEnum.HIP;
      case r'NINFO': return DNSLookupResultRecordTypeEnum.NINFO;
      case r'RKEY': return DNSLookupResultRecordTypeEnum.RKEY;
      case r'TALINK': return DNSLookupResultRecordTypeEnum.TALINK;
      case r'CDS': return DNSLookupResultRecordTypeEnum.CDS;
      case r'CDNSKEY': return DNSLookupResultRecordTypeEnum.CDNSKEY;
      case r'OPENPGPKEY': return DNSLookupResultRecordTypeEnum.OPENPGPKEY;
      case r'CSYNC': return DNSLookupResultRecordTypeEnum.CSYNC;
      case r'ZONEMD': return DNSLookupResultRecordTypeEnum.ZONEMD;
      case r'SVCB': return DNSLookupResultRecordTypeEnum.SVCB;
      case r'HTTPS': return DNSLookupResultRecordTypeEnum.HTTPS;
      case r'SPF': return DNSLookupResultRecordTypeEnum.SPF;
      case r'UINFO': return DNSLookupResultRecordTypeEnum.UINFO;
      case r'UID': return DNSLookupResultRecordTypeEnum.UID;
      case r'GID': return DNSLookupResultRecordTypeEnum.GID;
      case r'UNSPEC': return DNSLookupResultRecordTypeEnum.UNSPEC;
      case r'NID': return DNSLookupResultRecordTypeEnum.NID;
      case r'L32': return DNSLookupResultRecordTypeEnum.l32;
      case r'L64': return DNSLookupResultRecordTypeEnum.l64;
      case r'LP': return DNSLookupResultRecordTypeEnum.LP;
      case r'EUI48': return DNSLookupResultRecordTypeEnum.eUI48;
      case r'EUI64': return DNSLookupResultRecordTypeEnum.eUI64;
      case r'TKEY': return DNSLookupResultRecordTypeEnum.TKEY;
      case r'TSIG': return DNSLookupResultRecordTypeEnum.TSIG;
      case r'IXFR': return DNSLookupResultRecordTypeEnum.IXFR;
      case r'AXFR': return DNSLookupResultRecordTypeEnum.AXFR;
      case r'MAILB': return DNSLookupResultRecordTypeEnum.MAILB;
      case r'MAILA': return DNSLookupResultRecordTypeEnum.MAILA;
      case r'ANY': return DNSLookupResultRecordTypeEnum.ANY;
      case r'URI': return DNSLookupResultRecordTypeEnum.URI;
      case r'CAA': return DNSLookupResultRecordTypeEnum.CAA;
      case r'AVC': return DNSLookupResultRecordTypeEnum.AVC;
      case r'DOA': return DNSLookupResultRecordTypeEnum.DOA;
      case r'AMTRELAY': return DNSLookupResultRecordTypeEnum.AMTRELAY;
      case r'TA': return DNSLookupResultRecordTypeEnum.TA;
      case r'DLV': return DNSLookupResultRecordTypeEnum.DLV;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [DNSLookupResultRecordTypeEnumTypeTransformer] instance.
  static DNSLookupResultRecordTypeEnumTypeTransformer _instance;
}

