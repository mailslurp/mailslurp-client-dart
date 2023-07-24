//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GenerateMtaStsRecordResults {
  /// Returns a new [GenerateMtaStsRecordResults] instance.
  GenerateMtaStsRecordResults({
    required this.name,
    required this.type,
    required this.ttl,
    required this.value,
    required this.wellKnownValue,
    required this.wellKnownUrl,
  });

  String name;

  /// Domain Name Server Record Types
  GenerateMtaStsRecordResultsTypeEnum type;

  int ttl;

  String value;

  String wellKnownValue;

  String wellKnownUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GenerateMtaStsRecordResults &&
     other.name == name &&
     other.type == type &&
     other.ttl == ttl &&
     other.value == value &&
     other.wellKnownValue == wellKnownValue &&
     other.wellKnownUrl == wellKnownUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (type.hashCode) +
    (ttl.hashCode) +
    (value.hashCode) +
    (wellKnownValue.hashCode) +
    (wellKnownUrl.hashCode);

  @override
  String toString() => 'GenerateMtaStsRecordResults[name=$name, type=$type, ttl=$ttl, value=$value, wellKnownValue=$wellKnownValue, wellKnownUrl=$wellKnownUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'type'] = this.type;
      json[r'ttl'] = this.ttl;
      json[r'value'] = this.value;
      json[r'wellKnownValue'] = this.wellKnownValue;
      json[r'wellKnownUrl'] = this.wellKnownUrl;
    return json;
  }

  /// Returns a new [GenerateMtaStsRecordResults] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GenerateMtaStsRecordResults? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GenerateMtaStsRecordResults[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GenerateMtaStsRecordResults[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GenerateMtaStsRecordResults(
        name: mapValueOfType<String>(json, r'name')!,
        type: GenerateMtaStsRecordResultsTypeEnum.fromJson(json[r'type'])!,
        ttl: mapValueOfType<int>(json, r'ttl')!,
        value: mapValueOfType<String>(json, r'value')!,
        wellKnownValue: mapValueOfType<String>(json, r'wellKnownValue')!,
        wellKnownUrl: mapValueOfType<String>(json, r'wellKnownUrl')!,
      );
    }
    return null;
  }

  static List<GenerateMtaStsRecordResults>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateMtaStsRecordResults>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateMtaStsRecordResults.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GenerateMtaStsRecordResults> mapFromJson(dynamic json) {
    final map = <String, GenerateMtaStsRecordResults>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenerateMtaStsRecordResults.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GenerateMtaStsRecordResults-objects as value to a dart map
  static Map<String, List<GenerateMtaStsRecordResults>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GenerateMtaStsRecordResults>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenerateMtaStsRecordResults.listFromJson(entry.value, growable: growable,);
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
    'wellKnownValue',
    'wellKnownUrl',
  };
}

/// Domain Name Server Record Types
class GenerateMtaStsRecordResultsTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const GenerateMtaStsRecordResultsTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const A = GenerateMtaStsRecordResultsTypeEnum._(r'A');
  static const NS = GenerateMtaStsRecordResultsTypeEnum._(r'NS');
  static const MD = GenerateMtaStsRecordResultsTypeEnum._(r'MD');
  static const MF = GenerateMtaStsRecordResultsTypeEnum._(r'MF');
  static const CNAME = GenerateMtaStsRecordResultsTypeEnum._(r'CNAME');
  static const SOA = GenerateMtaStsRecordResultsTypeEnum._(r'SOA');
  static const MB = GenerateMtaStsRecordResultsTypeEnum._(r'MB');
  static const MG = GenerateMtaStsRecordResultsTypeEnum._(r'MG');
  static const MR = GenerateMtaStsRecordResultsTypeEnum._(r'MR');
  static const NULL = GenerateMtaStsRecordResultsTypeEnum._(r'NULL');
  static const WKS = GenerateMtaStsRecordResultsTypeEnum._(r'WKS');
  static const PTR = GenerateMtaStsRecordResultsTypeEnum._(r'PTR');
  static const HINFO = GenerateMtaStsRecordResultsTypeEnum._(r'HINFO');
  static const MINFO = GenerateMtaStsRecordResultsTypeEnum._(r'MINFO');
  static const MX = GenerateMtaStsRecordResultsTypeEnum._(r'MX');
  static const TXT = GenerateMtaStsRecordResultsTypeEnum._(r'TXT');
  static const RP = GenerateMtaStsRecordResultsTypeEnum._(r'RP');
  static const AFSDB = GenerateMtaStsRecordResultsTypeEnum._(r'AFSDB');
  static const x25 = GenerateMtaStsRecordResultsTypeEnum._(r'X25');
  static const ISDN = GenerateMtaStsRecordResultsTypeEnum._(r'ISDN');
  static const RT = GenerateMtaStsRecordResultsTypeEnum._(r'RT');
  static const NSAP = GenerateMtaStsRecordResultsTypeEnum._(r'NSAP');
  static const NSAP_PTR = GenerateMtaStsRecordResultsTypeEnum._(r'NSAP_PTR');
  static const SIG = GenerateMtaStsRecordResultsTypeEnum._(r'SIG');
  static const KEY = GenerateMtaStsRecordResultsTypeEnum._(r'KEY');
  static const PX = GenerateMtaStsRecordResultsTypeEnum._(r'PX');
  static const GPOS = GenerateMtaStsRecordResultsTypeEnum._(r'GPOS');
  static const AAAA = GenerateMtaStsRecordResultsTypeEnum._(r'AAAA');
  static const LOC = GenerateMtaStsRecordResultsTypeEnum._(r'LOC');
  static const NXT = GenerateMtaStsRecordResultsTypeEnum._(r'NXT');
  static const EID = GenerateMtaStsRecordResultsTypeEnum._(r'EID');
  static const NIMLOC = GenerateMtaStsRecordResultsTypeEnum._(r'NIMLOC');
  static const SRV = GenerateMtaStsRecordResultsTypeEnum._(r'SRV');
  static const ATMA = GenerateMtaStsRecordResultsTypeEnum._(r'ATMA');
  static const NAPTR = GenerateMtaStsRecordResultsTypeEnum._(r'NAPTR');
  static const KX = GenerateMtaStsRecordResultsTypeEnum._(r'KX');
  static const CERT = GenerateMtaStsRecordResultsTypeEnum._(r'CERT');
  static const a6 = GenerateMtaStsRecordResultsTypeEnum._(r'A6');
  static const DNAME = GenerateMtaStsRecordResultsTypeEnum._(r'DNAME');
  static const SINK = GenerateMtaStsRecordResultsTypeEnum._(r'SINK');
  static const OPT = GenerateMtaStsRecordResultsTypeEnum._(r'OPT');
  static const APL = GenerateMtaStsRecordResultsTypeEnum._(r'APL');
  static const DS = GenerateMtaStsRecordResultsTypeEnum._(r'DS');
  static const SSHFP = GenerateMtaStsRecordResultsTypeEnum._(r'SSHFP');
  static const IPSECKEY = GenerateMtaStsRecordResultsTypeEnum._(r'IPSECKEY');
  static const RRSIG = GenerateMtaStsRecordResultsTypeEnum._(r'RRSIG');
  static const NSEC = GenerateMtaStsRecordResultsTypeEnum._(r'NSEC');
  static const DNSKEY = GenerateMtaStsRecordResultsTypeEnum._(r'DNSKEY');
  static const DHCID = GenerateMtaStsRecordResultsTypeEnum._(r'DHCID');
  static const nSEC3 = GenerateMtaStsRecordResultsTypeEnum._(r'NSEC3');
  static const nSEC3PARAM = GenerateMtaStsRecordResultsTypeEnum._(r'NSEC3PARAM');
  static const TLSA = GenerateMtaStsRecordResultsTypeEnum._(r'TLSA');
  static const SMIMEA = GenerateMtaStsRecordResultsTypeEnum._(r'SMIMEA');
  static const HIP = GenerateMtaStsRecordResultsTypeEnum._(r'HIP');
  static const NINFO = GenerateMtaStsRecordResultsTypeEnum._(r'NINFO');
  static const RKEY = GenerateMtaStsRecordResultsTypeEnum._(r'RKEY');
  static const TALINK = GenerateMtaStsRecordResultsTypeEnum._(r'TALINK');
  static const CDS = GenerateMtaStsRecordResultsTypeEnum._(r'CDS');
  static const CDNSKEY = GenerateMtaStsRecordResultsTypeEnum._(r'CDNSKEY');
  static const OPENPGPKEY = GenerateMtaStsRecordResultsTypeEnum._(r'OPENPGPKEY');
  static const CSYNC = GenerateMtaStsRecordResultsTypeEnum._(r'CSYNC');
  static const ZONEMD = GenerateMtaStsRecordResultsTypeEnum._(r'ZONEMD');
  static const SVCB = GenerateMtaStsRecordResultsTypeEnum._(r'SVCB');
  static const HTTPS = GenerateMtaStsRecordResultsTypeEnum._(r'HTTPS');
  static const SPF = GenerateMtaStsRecordResultsTypeEnum._(r'SPF');
  static const UINFO = GenerateMtaStsRecordResultsTypeEnum._(r'UINFO');
  static const UID = GenerateMtaStsRecordResultsTypeEnum._(r'UID');
  static const GID = GenerateMtaStsRecordResultsTypeEnum._(r'GID');
  static const UNSPEC = GenerateMtaStsRecordResultsTypeEnum._(r'UNSPEC');
  static const NID = GenerateMtaStsRecordResultsTypeEnum._(r'NID');
  static const l32 = GenerateMtaStsRecordResultsTypeEnum._(r'L32');
  static const l64 = GenerateMtaStsRecordResultsTypeEnum._(r'L64');
  static const LP = GenerateMtaStsRecordResultsTypeEnum._(r'LP');
  static const eUI48 = GenerateMtaStsRecordResultsTypeEnum._(r'EUI48');
  static const eUI64 = GenerateMtaStsRecordResultsTypeEnum._(r'EUI64');
  static const TKEY = GenerateMtaStsRecordResultsTypeEnum._(r'TKEY');
  static const TSIG = GenerateMtaStsRecordResultsTypeEnum._(r'TSIG');
  static const IXFR = GenerateMtaStsRecordResultsTypeEnum._(r'IXFR');
  static const AXFR = GenerateMtaStsRecordResultsTypeEnum._(r'AXFR');
  static const MAILB = GenerateMtaStsRecordResultsTypeEnum._(r'MAILB');
  static const MAILA = GenerateMtaStsRecordResultsTypeEnum._(r'MAILA');
  static const ANY = GenerateMtaStsRecordResultsTypeEnum._(r'ANY');
  static const URI = GenerateMtaStsRecordResultsTypeEnum._(r'URI');
  static const CAA = GenerateMtaStsRecordResultsTypeEnum._(r'CAA');
  static const AVC = GenerateMtaStsRecordResultsTypeEnum._(r'AVC');
  static const DOA = GenerateMtaStsRecordResultsTypeEnum._(r'DOA');
  static const AMTRELAY = GenerateMtaStsRecordResultsTypeEnum._(r'AMTRELAY');
  static const TA = GenerateMtaStsRecordResultsTypeEnum._(r'TA');
  static const DLV = GenerateMtaStsRecordResultsTypeEnum._(r'DLV');

  /// List of all possible values in this [enum][GenerateMtaStsRecordResultsTypeEnum].
  static const values = <GenerateMtaStsRecordResultsTypeEnum>[
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

  static GenerateMtaStsRecordResultsTypeEnum? fromJson(dynamic value) => GenerateMtaStsRecordResultsTypeEnumTypeTransformer().decode(value);

  static List<GenerateMtaStsRecordResultsTypeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateMtaStsRecordResultsTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateMtaStsRecordResultsTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GenerateMtaStsRecordResultsTypeEnum] to String,
/// and [decode] dynamic data back to [GenerateMtaStsRecordResultsTypeEnum].
class GenerateMtaStsRecordResultsTypeEnumTypeTransformer {
  factory GenerateMtaStsRecordResultsTypeEnumTypeTransformer() => _instance ??= const GenerateMtaStsRecordResultsTypeEnumTypeTransformer._();

  const GenerateMtaStsRecordResultsTypeEnumTypeTransformer._();

  String encode(GenerateMtaStsRecordResultsTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GenerateMtaStsRecordResultsTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GenerateMtaStsRecordResultsTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'A': return GenerateMtaStsRecordResultsTypeEnum.A;
        case r'NS': return GenerateMtaStsRecordResultsTypeEnum.NS;
        case r'MD': return GenerateMtaStsRecordResultsTypeEnum.MD;
        case r'MF': return GenerateMtaStsRecordResultsTypeEnum.MF;
        case r'CNAME': return GenerateMtaStsRecordResultsTypeEnum.CNAME;
        case r'SOA': return GenerateMtaStsRecordResultsTypeEnum.SOA;
        case r'MB': return GenerateMtaStsRecordResultsTypeEnum.MB;
        case r'MG': return GenerateMtaStsRecordResultsTypeEnum.MG;
        case r'MR': return GenerateMtaStsRecordResultsTypeEnum.MR;
        case r'NULL': return GenerateMtaStsRecordResultsTypeEnum.NULL;
        case r'WKS': return GenerateMtaStsRecordResultsTypeEnum.WKS;
        case r'PTR': return GenerateMtaStsRecordResultsTypeEnum.PTR;
        case r'HINFO': return GenerateMtaStsRecordResultsTypeEnum.HINFO;
        case r'MINFO': return GenerateMtaStsRecordResultsTypeEnum.MINFO;
        case r'MX': return GenerateMtaStsRecordResultsTypeEnum.MX;
        case r'TXT': return GenerateMtaStsRecordResultsTypeEnum.TXT;
        case r'RP': return GenerateMtaStsRecordResultsTypeEnum.RP;
        case r'AFSDB': return GenerateMtaStsRecordResultsTypeEnum.AFSDB;
        case r'X25': return GenerateMtaStsRecordResultsTypeEnum.x25;
        case r'ISDN': return GenerateMtaStsRecordResultsTypeEnum.ISDN;
        case r'RT': return GenerateMtaStsRecordResultsTypeEnum.RT;
        case r'NSAP': return GenerateMtaStsRecordResultsTypeEnum.NSAP;
        case r'NSAP_PTR': return GenerateMtaStsRecordResultsTypeEnum.NSAP_PTR;
        case r'SIG': return GenerateMtaStsRecordResultsTypeEnum.SIG;
        case r'KEY': return GenerateMtaStsRecordResultsTypeEnum.KEY;
        case r'PX': return GenerateMtaStsRecordResultsTypeEnum.PX;
        case r'GPOS': return GenerateMtaStsRecordResultsTypeEnum.GPOS;
        case r'AAAA': return GenerateMtaStsRecordResultsTypeEnum.AAAA;
        case r'LOC': return GenerateMtaStsRecordResultsTypeEnum.LOC;
        case r'NXT': return GenerateMtaStsRecordResultsTypeEnum.NXT;
        case r'EID': return GenerateMtaStsRecordResultsTypeEnum.EID;
        case r'NIMLOC': return GenerateMtaStsRecordResultsTypeEnum.NIMLOC;
        case r'SRV': return GenerateMtaStsRecordResultsTypeEnum.SRV;
        case r'ATMA': return GenerateMtaStsRecordResultsTypeEnum.ATMA;
        case r'NAPTR': return GenerateMtaStsRecordResultsTypeEnum.NAPTR;
        case r'KX': return GenerateMtaStsRecordResultsTypeEnum.KX;
        case r'CERT': return GenerateMtaStsRecordResultsTypeEnum.CERT;
        case r'A6': return GenerateMtaStsRecordResultsTypeEnum.a6;
        case r'DNAME': return GenerateMtaStsRecordResultsTypeEnum.DNAME;
        case r'SINK': return GenerateMtaStsRecordResultsTypeEnum.SINK;
        case r'OPT': return GenerateMtaStsRecordResultsTypeEnum.OPT;
        case r'APL': return GenerateMtaStsRecordResultsTypeEnum.APL;
        case r'DS': return GenerateMtaStsRecordResultsTypeEnum.DS;
        case r'SSHFP': return GenerateMtaStsRecordResultsTypeEnum.SSHFP;
        case r'IPSECKEY': return GenerateMtaStsRecordResultsTypeEnum.IPSECKEY;
        case r'RRSIG': return GenerateMtaStsRecordResultsTypeEnum.RRSIG;
        case r'NSEC': return GenerateMtaStsRecordResultsTypeEnum.NSEC;
        case r'DNSKEY': return GenerateMtaStsRecordResultsTypeEnum.DNSKEY;
        case r'DHCID': return GenerateMtaStsRecordResultsTypeEnum.DHCID;
        case r'NSEC3': return GenerateMtaStsRecordResultsTypeEnum.nSEC3;
        case r'NSEC3PARAM': return GenerateMtaStsRecordResultsTypeEnum.nSEC3PARAM;
        case r'TLSA': return GenerateMtaStsRecordResultsTypeEnum.TLSA;
        case r'SMIMEA': return GenerateMtaStsRecordResultsTypeEnum.SMIMEA;
        case r'HIP': return GenerateMtaStsRecordResultsTypeEnum.HIP;
        case r'NINFO': return GenerateMtaStsRecordResultsTypeEnum.NINFO;
        case r'RKEY': return GenerateMtaStsRecordResultsTypeEnum.RKEY;
        case r'TALINK': return GenerateMtaStsRecordResultsTypeEnum.TALINK;
        case r'CDS': return GenerateMtaStsRecordResultsTypeEnum.CDS;
        case r'CDNSKEY': return GenerateMtaStsRecordResultsTypeEnum.CDNSKEY;
        case r'OPENPGPKEY': return GenerateMtaStsRecordResultsTypeEnum.OPENPGPKEY;
        case r'CSYNC': return GenerateMtaStsRecordResultsTypeEnum.CSYNC;
        case r'ZONEMD': return GenerateMtaStsRecordResultsTypeEnum.ZONEMD;
        case r'SVCB': return GenerateMtaStsRecordResultsTypeEnum.SVCB;
        case r'HTTPS': return GenerateMtaStsRecordResultsTypeEnum.HTTPS;
        case r'SPF': return GenerateMtaStsRecordResultsTypeEnum.SPF;
        case r'UINFO': return GenerateMtaStsRecordResultsTypeEnum.UINFO;
        case r'UID': return GenerateMtaStsRecordResultsTypeEnum.UID;
        case r'GID': return GenerateMtaStsRecordResultsTypeEnum.GID;
        case r'UNSPEC': return GenerateMtaStsRecordResultsTypeEnum.UNSPEC;
        case r'NID': return GenerateMtaStsRecordResultsTypeEnum.NID;
        case r'L32': return GenerateMtaStsRecordResultsTypeEnum.l32;
        case r'L64': return GenerateMtaStsRecordResultsTypeEnum.l64;
        case r'LP': return GenerateMtaStsRecordResultsTypeEnum.LP;
        case r'EUI48': return GenerateMtaStsRecordResultsTypeEnum.eUI48;
        case r'EUI64': return GenerateMtaStsRecordResultsTypeEnum.eUI64;
        case r'TKEY': return GenerateMtaStsRecordResultsTypeEnum.TKEY;
        case r'TSIG': return GenerateMtaStsRecordResultsTypeEnum.TSIG;
        case r'IXFR': return GenerateMtaStsRecordResultsTypeEnum.IXFR;
        case r'AXFR': return GenerateMtaStsRecordResultsTypeEnum.AXFR;
        case r'MAILB': return GenerateMtaStsRecordResultsTypeEnum.MAILB;
        case r'MAILA': return GenerateMtaStsRecordResultsTypeEnum.MAILA;
        case r'ANY': return GenerateMtaStsRecordResultsTypeEnum.ANY;
        case r'URI': return GenerateMtaStsRecordResultsTypeEnum.URI;
        case r'CAA': return GenerateMtaStsRecordResultsTypeEnum.CAA;
        case r'AVC': return GenerateMtaStsRecordResultsTypeEnum.AVC;
        case r'DOA': return GenerateMtaStsRecordResultsTypeEnum.DOA;
        case r'AMTRELAY': return GenerateMtaStsRecordResultsTypeEnum.AMTRELAY;
        case r'TA': return GenerateMtaStsRecordResultsTypeEnum.TA;
        case r'DLV': return GenerateMtaStsRecordResultsTypeEnum.DLV;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GenerateMtaStsRecordResultsTypeEnumTypeTransformer] instance.
  static GenerateMtaStsRecordResultsTypeEnumTypeTransformer? _instance;
}


