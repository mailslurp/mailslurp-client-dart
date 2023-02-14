//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DNSLookupOptions {
  /// Returns a new [DNSLookupOptions] instance.
  DNSLookupOptions({
    @required this.hostname,
    this.recordTypes = const [],
    @required this.omitFinalDNSDot,
  });

  /// List of record types you wish to query such as MX, DNS, TXT, NS, A etc.
  String hostname;

  /// List of record types you wish to query such as MX, DNS, TXT, NS, A etc.
  List<DNSLookupOptionsRecordTypesEnum> recordTypes;

  /// Optionally control whether to omit the final dot in full DNS name values.
  bool omitFinalDNSDot;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DNSLookupOptions &&
     other.hostname == hostname &&
     other.recordTypes == recordTypes &&
     other.omitFinalDNSDot == omitFinalDNSDot;

  @override
  int get hashCode =>
    (hostname == null ? 0 : hostname.hashCode) +
    (recordTypes == null ? 0 : recordTypes.hashCode) +
    (omitFinalDNSDot == null ? 0 : omitFinalDNSDot.hashCode);

  @override
  String toString() => 'DNSLookupOptions[hostname=$hostname, recordTypes=$recordTypes, omitFinalDNSDot=$omitFinalDNSDot]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'hostname'] = hostname;
      json[r'recordTypes'] = recordTypes;
      json[r'omitFinalDNSDot'] = omitFinalDNSDot;
    return json;
  }

  /// Returns a new [DNSLookupOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DNSLookupOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : DNSLookupOptions(
        hostname: json[r'hostname'],
        recordTypes: DNSLookupOptionsRecordTypesEnum.listFromJson(json[r'recordTypes']),
        omitFinalDNSDot: json[r'omitFinalDNSDot'],
    );

  static List<DNSLookupOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <DNSLookupOptions>[]
      : json.map((v) => DNSLookupOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, DNSLookupOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, DNSLookupOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = DNSLookupOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of DNSLookupOptions-objects as value to a dart map
  static Map<String, List<DNSLookupOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DNSLookupOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = DNSLookupOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// Domain Name Server Record Types
class DNSLookupOptionsRecordTypesEnum {
  /// Instantiate a new enum with the provided [value].
  const DNSLookupOptionsRecordTypesEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const A = DNSLookupOptionsRecordTypesEnum._(r'A');
  static const NS = DNSLookupOptionsRecordTypesEnum._(r'NS');
  static const MD = DNSLookupOptionsRecordTypesEnum._(r'MD');
  static const MF = DNSLookupOptionsRecordTypesEnum._(r'MF');
  static const CNAME = DNSLookupOptionsRecordTypesEnum._(r'CNAME');
  static const SOA = DNSLookupOptionsRecordTypesEnum._(r'SOA');
  static const MB = DNSLookupOptionsRecordTypesEnum._(r'MB');
  static const MG = DNSLookupOptionsRecordTypesEnum._(r'MG');
  static const MR = DNSLookupOptionsRecordTypesEnum._(r'MR');
  static const NULL = DNSLookupOptionsRecordTypesEnum._(r'NULL');
  static const WKS = DNSLookupOptionsRecordTypesEnum._(r'WKS');
  static const PTR = DNSLookupOptionsRecordTypesEnum._(r'PTR');
  static const HINFO = DNSLookupOptionsRecordTypesEnum._(r'HINFO');
  static const MINFO = DNSLookupOptionsRecordTypesEnum._(r'MINFO');
  static const MX = DNSLookupOptionsRecordTypesEnum._(r'MX');
  static const TXT = DNSLookupOptionsRecordTypesEnum._(r'TXT');
  static const RP = DNSLookupOptionsRecordTypesEnum._(r'RP');
  static const AFSDB = DNSLookupOptionsRecordTypesEnum._(r'AFSDB');
  static const x25 = DNSLookupOptionsRecordTypesEnum._(r'X25');
  static const ISDN = DNSLookupOptionsRecordTypesEnum._(r'ISDN');
  static const RT = DNSLookupOptionsRecordTypesEnum._(r'RT');
  static const NSAP = DNSLookupOptionsRecordTypesEnum._(r'NSAP');
  static const NSAP_PTR = DNSLookupOptionsRecordTypesEnum._(r'NSAP_PTR');
  static const SIG = DNSLookupOptionsRecordTypesEnum._(r'SIG');
  static const KEY = DNSLookupOptionsRecordTypesEnum._(r'KEY');
  static const PX = DNSLookupOptionsRecordTypesEnum._(r'PX');
  static const GPOS = DNSLookupOptionsRecordTypesEnum._(r'GPOS');
  static const AAAA = DNSLookupOptionsRecordTypesEnum._(r'AAAA');
  static const LOC = DNSLookupOptionsRecordTypesEnum._(r'LOC');
  static const NXT = DNSLookupOptionsRecordTypesEnum._(r'NXT');
  static const EID = DNSLookupOptionsRecordTypesEnum._(r'EID');
  static const NIMLOC = DNSLookupOptionsRecordTypesEnum._(r'NIMLOC');
  static const SRV = DNSLookupOptionsRecordTypesEnum._(r'SRV');
  static const ATMA = DNSLookupOptionsRecordTypesEnum._(r'ATMA');
  static const NAPTR = DNSLookupOptionsRecordTypesEnum._(r'NAPTR');
  static const KX = DNSLookupOptionsRecordTypesEnum._(r'KX');
  static const CERT = DNSLookupOptionsRecordTypesEnum._(r'CERT');
  static const a6 = DNSLookupOptionsRecordTypesEnum._(r'A6');
  static const DNAME = DNSLookupOptionsRecordTypesEnum._(r'DNAME');
  static const SINK = DNSLookupOptionsRecordTypesEnum._(r'SINK');
  static const OPT = DNSLookupOptionsRecordTypesEnum._(r'OPT');
  static const APL = DNSLookupOptionsRecordTypesEnum._(r'APL');
  static const DS = DNSLookupOptionsRecordTypesEnum._(r'DS');
  static const SSHFP = DNSLookupOptionsRecordTypesEnum._(r'SSHFP');
  static const IPSECKEY = DNSLookupOptionsRecordTypesEnum._(r'IPSECKEY');
  static const RRSIG = DNSLookupOptionsRecordTypesEnum._(r'RRSIG');
  static const NSEC = DNSLookupOptionsRecordTypesEnum._(r'NSEC');
  static const DNSKEY = DNSLookupOptionsRecordTypesEnum._(r'DNSKEY');
  static const DHCID = DNSLookupOptionsRecordTypesEnum._(r'DHCID');
  static const nSEC3 = DNSLookupOptionsRecordTypesEnum._(r'NSEC3');
  static const nSEC3PARAM = DNSLookupOptionsRecordTypesEnum._(r'NSEC3PARAM');
  static const TLSA = DNSLookupOptionsRecordTypesEnum._(r'TLSA');
  static const SMIMEA = DNSLookupOptionsRecordTypesEnum._(r'SMIMEA');
  static const HIP = DNSLookupOptionsRecordTypesEnum._(r'HIP');
  static const NINFO = DNSLookupOptionsRecordTypesEnum._(r'NINFO');
  static const RKEY = DNSLookupOptionsRecordTypesEnum._(r'RKEY');
  static const TALINK = DNSLookupOptionsRecordTypesEnum._(r'TALINK');
  static const CDS = DNSLookupOptionsRecordTypesEnum._(r'CDS');
  static const CDNSKEY = DNSLookupOptionsRecordTypesEnum._(r'CDNSKEY');
  static const OPENPGPKEY = DNSLookupOptionsRecordTypesEnum._(r'OPENPGPKEY');
  static const CSYNC = DNSLookupOptionsRecordTypesEnum._(r'CSYNC');
  static const ZONEMD = DNSLookupOptionsRecordTypesEnum._(r'ZONEMD');
  static const SVCB = DNSLookupOptionsRecordTypesEnum._(r'SVCB');
  static const HTTPS = DNSLookupOptionsRecordTypesEnum._(r'HTTPS');
  static const SPF = DNSLookupOptionsRecordTypesEnum._(r'SPF');
  static const UINFO = DNSLookupOptionsRecordTypesEnum._(r'UINFO');
  static const UID = DNSLookupOptionsRecordTypesEnum._(r'UID');
  static const GID = DNSLookupOptionsRecordTypesEnum._(r'GID');
  static const UNSPEC = DNSLookupOptionsRecordTypesEnum._(r'UNSPEC');
  static const NID = DNSLookupOptionsRecordTypesEnum._(r'NID');
  static const l32 = DNSLookupOptionsRecordTypesEnum._(r'L32');
  static const l64 = DNSLookupOptionsRecordTypesEnum._(r'L64');
  static const LP = DNSLookupOptionsRecordTypesEnum._(r'LP');
  static const eUI48 = DNSLookupOptionsRecordTypesEnum._(r'EUI48');
  static const eUI64 = DNSLookupOptionsRecordTypesEnum._(r'EUI64');
  static const TKEY = DNSLookupOptionsRecordTypesEnum._(r'TKEY');
  static const TSIG = DNSLookupOptionsRecordTypesEnum._(r'TSIG');
  static const IXFR = DNSLookupOptionsRecordTypesEnum._(r'IXFR');
  static const AXFR = DNSLookupOptionsRecordTypesEnum._(r'AXFR');
  static const MAILB = DNSLookupOptionsRecordTypesEnum._(r'MAILB');
  static const MAILA = DNSLookupOptionsRecordTypesEnum._(r'MAILA');
  static const ANY = DNSLookupOptionsRecordTypesEnum._(r'ANY');
  static const URI = DNSLookupOptionsRecordTypesEnum._(r'URI');
  static const CAA = DNSLookupOptionsRecordTypesEnum._(r'CAA');
  static const AVC = DNSLookupOptionsRecordTypesEnum._(r'AVC');
  static const DOA = DNSLookupOptionsRecordTypesEnum._(r'DOA');
  static const AMTRELAY = DNSLookupOptionsRecordTypesEnum._(r'AMTRELAY');
  static const TA = DNSLookupOptionsRecordTypesEnum._(r'TA');
  static const DLV = DNSLookupOptionsRecordTypesEnum._(r'DLV');

  /// List of all possible values in this [enum][DNSLookupOptionsRecordTypesEnum].
  static const values = <DNSLookupOptionsRecordTypesEnum>[
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

  static DNSLookupOptionsRecordTypesEnum fromJson(dynamic value) =>
    DNSLookupOptionsRecordTypesEnumTypeTransformer().decode(value);

  static List<DNSLookupOptionsRecordTypesEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <DNSLookupOptionsRecordTypesEnum>[]
      : json
          .map((value) => DNSLookupOptionsRecordTypesEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [DNSLookupOptionsRecordTypesEnum] to String,
/// and [decode] dynamic data back to [DNSLookupOptionsRecordTypesEnum].
class DNSLookupOptionsRecordTypesEnumTypeTransformer {
  const DNSLookupOptionsRecordTypesEnumTypeTransformer._();

  factory DNSLookupOptionsRecordTypesEnumTypeTransformer() => _instance ??= DNSLookupOptionsRecordTypesEnumTypeTransformer._();

  String encode(DNSLookupOptionsRecordTypesEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DNSLookupOptionsRecordTypesEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DNSLookupOptionsRecordTypesEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'A': return DNSLookupOptionsRecordTypesEnum.A;
      case r'NS': return DNSLookupOptionsRecordTypesEnum.NS;
      case r'MD': return DNSLookupOptionsRecordTypesEnum.MD;
      case r'MF': return DNSLookupOptionsRecordTypesEnum.MF;
      case r'CNAME': return DNSLookupOptionsRecordTypesEnum.CNAME;
      case r'SOA': return DNSLookupOptionsRecordTypesEnum.SOA;
      case r'MB': return DNSLookupOptionsRecordTypesEnum.MB;
      case r'MG': return DNSLookupOptionsRecordTypesEnum.MG;
      case r'MR': return DNSLookupOptionsRecordTypesEnum.MR;
      case r'NULL': return DNSLookupOptionsRecordTypesEnum.NULL;
      case r'WKS': return DNSLookupOptionsRecordTypesEnum.WKS;
      case r'PTR': return DNSLookupOptionsRecordTypesEnum.PTR;
      case r'HINFO': return DNSLookupOptionsRecordTypesEnum.HINFO;
      case r'MINFO': return DNSLookupOptionsRecordTypesEnum.MINFO;
      case r'MX': return DNSLookupOptionsRecordTypesEnum.MX;
      case r'TXT': return DNSLookupOptionsRecordTypesEnum.TXT;
      case r'RP': return DNSLookupOptionsRecordTypesEnum.RP;
      case r'AFSDB': return DNSLookupOptionsRecordTypesEnum.AFSDB;
      case r'X25': return DNSLookupOptionsRecordTypesEnum.x25;
      case r'ISDN': return DNSLookupOptionsRecordTypesEnum.ISDN;
      case r'RT': return DNSLookupOptionsRecordTypesEnum.RT;
      case r'NSAP': return DNSLookupOptionsRecordTypesEnum.NSAP;
      case r'NSAP_PTR': return DNSLookupOptionsRecordTypesEnum.NSAP_PTR;
      case r'SIG': return DNSLookupOptionsRecordTypesEnum.SIG;
      case r'KEY': return DNSLookupOptionsRecordTypesEnum.KEY;
      case r'PX': return DNSLookupOptionsRecordTypesEnum.PX;
      case r'GPOS': return DNSLookupOptionsRecordTypesEnum.GPOS;
      case r'AAAA': return DNSLookupOptionsRecordTypesEnum.AAAA;
      case r'LOC': return DNSLookupOptionsRecordTypesEnum.LOC;
      case r'NXT': return DNSLookupOptionsRecordTypesEnum.NXT;
      case r'EID': return DNSLookupOptionsRecordTypesEnum.EID;
      case r'NIMLOC': return DNSLookupOptionsRecordTypesEnum.NIMLOC;
      case r'SRV': return DNSLookupOptionsRecordTypesEnum.SRV;
      case r'ATMA': return DNSLookupOptionsRecordTypesEnum.ATMA;
      case r'NAPTR': return DNSLookupOptionsRecordTypesEnum.NAPTR;
      case r'KX': return DNSLookupOptionsRecordTypesEnum.KX;
      case r'CERT': return DNSLookupOptionsRecordTypesEnum.CERT;
      case r'A6': return DNSLookupOptionsRecordTypesEnum.a6;
      case r'DNAME': return DNSLookupOptionsRecordTypesEnum.DNAME;
      case r'SINK': return DNSLookupOptionsRecordTypesEnum.SINK;
      case r'OPT': return DNSLookupOptionsRecordTypesEnum.OPT;
      case r'APL': return DNSLookupOptionsRecordTypesEnum.APL;
      case r'DS': return DNSLookupOptionsRecordTypesEnum.DS;
      case r'SSHFP': return DNSLookupOptionsRecordTypesEnum.SSHFP;
      case r'IPSECKEY': return DNSLookupOptionsRecordTypesEnum.IPSECKEY;
      case r'RRSIG': return DNSLookupOptionsRecordTypesEnum.RRSIG;
      case r'NSEC': return DNSLookupOptionsRecordTypesEnum.NSEC;
      case r'DNSKEY': return DNSLookupOptionsRecordTypesEnum.DNSKEY;
      case r'DHCID': return DNSLookupOptionsRecordTypesEnum.DHCID;
      case r'NSEC3': return DNSLookupOptionsRecordTypesEnum.nSEC3;
      case r'NSEC3PARAM': return DNSLookupOptionsRecordTypesEnum.nSEC3PARAM;
      case r'TLSA': return DNSLookupOptionsRecordTypesEnum.TLSA;
      case r'SMIMEA': return DNSLookupOptionsRecordTypesEnum.SMIMEA;
      case r'HIP': return DNSLookupOptionsRecordTypesEnum.HIP;
      case r'NINFO': return DNSLookupOptionsRecordTypesEnum.NINFO;
      case r'RKEY': return DNSLookupOptionsRecordTypesEnum.RKEY;
      case r'TALINK': return DNSLookupOptionsRecordTypesEnum.TALINK;
      case r'CDS': return DNSLookupOptionsRecordTypesEnum.CDS;
      case r'CDNSKEY': return DNSLookupOptionsRecordTypesEnum.CDNSKEY;
      case r'OPENPGPKEY': return DNSLookupOptionsRecordTypesEnum.OPENPGPKEY;
      case r'CSYNC': return DNSLookupOptionsRecordTypesEnum.CSYNC;
      case r'ZONEMD': return DNSLookupOptionsRecordTypesEnum.ZONEMD;
      case r'SVCB': return DNSLookupOptionsRecordTypesEnum.SVCB;
      case r'HTTPS': return DNSLookupOptionsRecordTypesEnum.HTTPS;
      case r'SPF': return DNSLookupOptionsRecordTypesEnum.SPF;
      case r'UINFO': return DNSLookupOptionsRecordTypesEnum.UINFO;
      case r'UID': return DNSLookupOptionsRecordTypesEnum.UID;
      case r'GID': return DNSLookupOptionsRecordTypesEnum.GID;
      case r'UNSPEC': return DNSLookupOptionsRecordTypesEnum.UNSPEC;
      case r'NID': return DNSLookupOptionsRecordTypesEnum.NID;
      case r'L32': return DNSLookupOptionsRecordTypesEnum.l32;
      case r'L64': return DNSLookupOptionsRecordTypesEnum.l64;
      case r'LP': return DNSLookupOptionsRecordTypesEnum.LP;
      case r'EUI48': return DNSLookupOptionsRecordTypesEnum.eUI48;
      case r'EUI64': return DNSLookupOptionsRecordTypesEnum.eUI64;
      case r'TKEY': return DNSLookupOptionsRecordTypesEnum.TKEY;
      case r'TSIG': return DNSLookupOptionsRecordTypesEnum.TSIG;
      case r'IXFR': return DNSLookupOptionsRecordTypesEnum.IXFR;
      case r'AXFR': return DNSLookupOptionsRecordTypesEnum.AXFR;
      case r'MAILB': return DNSLookupOptionsRecordTypesEnum.MAILB;
      case r'MAILA': return DNSLookupOptionsRecordTypesEnum.MAILA;
      case r'ANY': return DNSLookupOptionsRecordTypesEnum.ANY;
      case r'URI': return DNSLookupOptionsRecordTypesEnum.URI;
      case r'CAA': return DNSLookupOptionsRecordTypesEnum.CAA;
      case r'AVC': return DNSLookupOptionsRecordTypesEnum.AVC;
      case r'DOA': return DNSLookupOptionsRecordTypesEnum.DOA;
      case r'AMTRELAY': return DNSLookupOptionsRecordTypesEnum.AMTRELAY;
      case r'TA': return DNSLookupOptionsRecordTypesEnum.TA;
      case r'DLV': return DNSLookupOptionsRecordTypesEnum.DLV;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [DNSLookupOptionsRecordTypesEnumTypeTransformer] instance.
  static DNSLookupOptionsRecordTypesEnumTypeTransformer _instance;
}

