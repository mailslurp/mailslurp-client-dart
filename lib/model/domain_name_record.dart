//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DomainNameRecord {
  /// Returns a new [DomainNameRecord] instance.
  DomainNameRecord({
    required this.label,
    required this.required_,
    required this.recordType,
    required this.name,
    this.recordEntries = const [],
    required this.ttl,
  });

  /// Domain Name Server Record Label
  DomainNameRecordLabelEnum label;

  bool required_;

  /// Domain Name Server Record Types
  DomainNameRecordRecordTypeEnum recordType;

  String name;

  List<String> recordEntries;

  int ttl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainNameRecord &&
     other.label == label &&
     other.required_ == required_ &&
     other.recordType == recordType &&
     other.name == name &&
     other.recordEntries == recordEntries &&
     other.ttl == ttl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (label.hashCode) +
    (required_.hashCode) +
    (recordType.hashCode) +
    (name.hashCode) +
    (recordEntries.hashCode) +
    (ttl.hashCode);

  @override
  String toString() => 'DomainNameRecord[label=$label, required_=$required_, recordType=$recordType, name=$name, recordEntries=$recordEntries, ttl=$ttl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'label'] = this.label;
      json[r'required'] = this.required_;
      json[r'recordType'] = this.recordType;
      json[r'name'] = this.name;
      json[r'recordEntries'] = this.recordEntries;
      json[r'ttl'] = this.ttl;
    return json;
  }

  /// Returns a new [DomainNameRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainNameRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DomainNameRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DomainNameRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DomainNameRecord(
        label: DomainNameRecordLabelEnum.fromJson(json[r'label'])!,
        required_: mapValueOfType<bool>(json, r'required')!,
        recordType: DomainNameRecordRecordTypeEnum.fromJson(json[r'recordType'])!,
        name: mapValueOfType<String>(json, r'name')!,
        recordEntries: json[r'recordEntries'] is List
            ? (json[r'recordEntries'] as List).cast<String>()
            : const [],
        ttl: mapValueOfType<int>(json, r'ttl')!,
      );
    }
    return null;
  }

  static List<DomainNameRecord>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainNameRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainNameRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainNameRecord> mapFromJson(dynamic json) {
    final map = <String, DomainNameRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainNameRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainNameRecord-objects as value to a dart map
  static Map<String, List<DomainNameRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainNameRecord>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainNameRecord.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'label',
    'required',
    'recordType',
    'name',
    'recordEntries',
    'ttl',
  };
}

/// Domain Name Server Record Label
class DomainNameRecordLabelEnum {
  /// Instantiate a new enum with the provided [value].
  const DomainNameRecordLabelEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const VERIFICATION = DomainNameRecordLabelEnum._(r'VERIFICATION');
  static const MX = DomainNameRecordLabelEnum._(r'MX');
  static const SPF = DomainNameRecordLabelEnum._(r'SPF');
  static const DKIM = DomainNameRecordLabelEnum._(r'DKIM');
  static const DMARC = DomainNameRecordLabelEnum._(r'DMARC');

  /// List of all possible values in this [enum][DomainNameRecordLabelEnum].
  static const values = <DomainNameRecordLabelEnum>[
    VERIFICATION,
    MX,
    SPF,
    DKIM,
    DMARC,
  ];

  static DomainNameRecordLabelEnum? fromJson(dynamic value) => DomainNameRecordLabelEnumTypeTransformer().decode(value);

  static List<DomainNameRecordLabelEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainNameRecordLabelEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainNameRecordLabelEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DomainNameRecordLabelEnum] to String,
/// and [decode] dynamic data back to [DomainNameRecordLabelEnum].
class DomainNameRecordLabelEnumTypeTransformer {
  factory DomainNameRecordLabelEnumTypeTransformer() => _instance ??= const DomainNameRecordLabelEnumTypeTransformer._();

  const DomainNameRecordLabelEnumTypeTransformer._();

  String encode(DomainNameRecordLabelEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DomainNameRecordLabelEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainNameRecordLabelEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'VERIFICATION': return DomainNameRecordLabelEnum.VERIFICATION;
        case r'MX': return DomainNameRecordLabelEnum.MX;
        case r'SPF': return DomainNameRecordLabelEnum.SPF;
        case r'DKIM': return DomainNameRecordLabelEnum.DKIM;
        case r'DMARC': return DomainNameRecordLabelEnum.DMARC;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DomainNameRecordLabelEnumTypeTransformer] instance.
  static DomainNameRecordLabelEnumTypeTransformer? _instance;
}


/// Domain Name Server Record Types
class DomainNameRecordRecordTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const DomainNameRecordRecordTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const A = DomainNameRecordRecordTypeEnum._(r'A');
  static const NS = DomainNameRecordRecordTypeEnum._(r'NS');
  static const MD = DomainNameRecordRecordTypeEnum._(r'MD');
  static const MF = DomainNameRecordRecordTypeEnum._(r'MF');
  static const CNAME = DomainNameRecordRecordTypeEnum._(r'CNAME');
  static const SOA = DomainNameRecordRecordTypeEnum._(r'SOA');
  static const MB = DomainNameRecordRecordTypeEnum._(r'MB');
  static const MG = DomainNameRecordRecordTypeEnum._(r'MG');
  static const MR = DomainNameRecordRecordTypeEnum._(r'MR');
  static const NULL = DomainNameRecordRecordTypeEnum._(r'NULL');
  static const WKS = DomainNameRecordRecordTypeEnum._(r'WKS');
  static const PTR = DomainNameRecordRecordTypeEnum._(r'PTR');
  static const HINFO = DomainNameRecordRecordTypeEnum._(r'HINFO');
  static const MINFO = DomainNameRecordRecordTypeEnum._(r'MINFO');
  static const MX = DomainNameRecordRecordTypeEnum._(r'MX');
  static const TXT = DomainNameRecordRecordTypeEnum._(r'TXT');
  static const RP = DomainNameRecordRecordTypeEnum._(r'RP');
  static const AFSDB = DomainNameRecordRecordTypeEnum._(r'AFSDB');
  static const x25 = DomainNameRecordRecordTypeEnum._(r'X25');
  static const ISDN = DomainNameRecordRecordTypeEnum._(r'ISDN');
  static const RT = DomainNameRecordRecordTypeEnum._(r'RT');
  static const NSAP = DomainNameRecordRecordTypeEnum._(r'NSAP');
  static const NSAP_PTR = DomainNameRecordRecordTypeEnum._(r'NSAP_PTR');
  static const SIG = DomainNameRecordRecordTypeEnum._(r'SIG');
  static const KEY = DomainNameRecordRecordTypeEnum._(r'KEY');
  static const PX = DomainNameRecordRecordTypeEnum._(r'PX');
  static const GPOS = DomainNameRecordRecordTypeEnum._(r'GPOS');
  static const AAAA = DomainNameRecordRecordTypeEnum._(r'AAAA');
  static const LOC = DomainNameRecordRecordTypeEnum._(r'LOC');
  static const NXT = DomainNameRecordRecordTypeEnum._(r'NXT');
  static const EID = DomainNameRecordRecordTypeEnum._(r'EID');
  static const NIMLOC = DomainNameRecordRecordTypeEnum._(r'NIMLOC');
  static const SRV = DomainNameRecordRecordTypeEnum._(r'SRV');
  static const ATMA = DomainNameRecordRecordTypeEnum._(r'ATMA');
  static const NAPTR = DomainNameRecordRecordTypeEnum._(r'NAPTR');
  static const KX = DomainNameRecordRecordTypeEnum._(r'KX');
  static const CERT = DomainNameRecordRecordTypeEnum._(r'CERT');
  static const a6 = DomainNameRecordRecordTypeEnum._(r'A6');
  static const DNAME = DomainNameRecordRecordTypeEnum._(r'DNAME');
  static const SINK = DomainNameRecordRecordTypeEnum._(r'SINK');
  static const OPT = DomainNameRecordRecordTypeEnum._(r'OPT');
  static const APL = DomainNameRecordRecordTypeEnum._(r'APL');
  static const DS = DomainNameRecordRecordTypeEnum._(r'DS');
  static const SSHFP = DomainNameRecordRecordTypeEnum._(r'SSHFP');
  static const IPSECKEY = DomainNameRecordRecordTypeEnum._(r'IPSECKEY');
  static const RRSIG = DomainNameRecordRecordTypeEnum._(r'RRSIG');
  static const NSEC = DomainNameRecordRecordTypeEnum._(r'NSEC');
  static const DNSKEY = DomainNameRecordRecordTypeEnum._(r'DNSKEY');
  static const DHCID = DomainNameRecordRecordTypeEnum._(r'DHCID');
  static const nSEC3 = DomainNameRecordRecordTypeEnum._(r'NSEC3');
  static const nSEC3PARAM = DomainNameRecordRecordTypeEnum._(r'NSEC3PARAM');
  static const TLSA = DomainNameRecordRecordTypeEnum._(r'TLSA');
  static const SMIMEA = DomainNameRecordRecordTypeEnum._(r'SMIMEA');
  static const HIP = DomainNameRecordRecordTypeEnum._(r'HIP');
  static const NINFO = DomainNameRecordRecordTypeEnum._(r'NINFO');
  static const RKEY = DomainNameRecordRecordTypeEnum._(r'RKEY');
  static const TALINK = DomainNameRecordRecordTypeEnum._(r'TALINK');
  static const CDS = DomainNameRecordRecordTypeEnum._(r'CDS');
  static const CDNSKEY = DomainNameRecordRecordTypeEnum._(r'CDNSKEY');
  static const OPENPGPKEY = DomainNameRecordRecordTypeEnum._(r'OPENPGPKEY');
  static const CSYNC = DomainNameRecordRecordTypeEnum._(r'CSYNC');
  static const ZONEMD = DomainNameRecordRecordTypeEnum._(r'ZONEMD');
  static const SVCB = DomainNameRecordRecordTypeEnum._(r'SVCB');
  static const HTTPS = DomainNameRecordRecordTypeEnum._(r'HTTPS');
  static const SPF = DomainNameRecordRecordTypeEnum._(r'SPF');
  static const UINFO = DomainNameRecordRecordTypeEnum._(r'UINFO');
  static const UID = DomainNameRecordRecordTypeEnum._(r'UID');
  static const GID = DomainNameRecordRecordTypeEnum._(r'GID');
  static const UNSPEC = DomainNameRecordRecordTypeEnum._(r'UNSPEC');
  static const NID = DomainNameRecordRecordTypeEnum._(r'NID');
  static const l32 = DomainNameRecordRecordTypeEnum._(r'L32');
  static const l64 = DomainNameRecordRecordTypeEnum._(r'L64');
  static const LP = DomainNameRecordRecordTypeEnum._(r'LP');
  static const eUI48 = DomainNameRecordRecordTypeEnum._(r'EUI48');
  static const eUI64 = DomainNameRecordRecordTypeEnum._(r'EUI64');
  static const TKEY = DomainNameRecordRecordTypeEnum._(r'TKEY');
  static const TSIG = DomainNameRecordRecordTypeEnum._(r'TSIG');
  static const IXFR = DomainNameRecordRecordTypeEnum._(r'IXFR');
  static const AXFR = DomainNameRecordRecordTypeEnum._(r'AXFR');
  static const MAILB = DomainNameRecordRecordTypeEnum._(r'MAILB');
  static const MAILA = DomainNameRecordRecordTypeEnum._(r'MAILA');
  static const ANY = DomainNameRecordRecordTypeEnum._(r'ANY');
  static const URI = DomainNameRecordRecordTypeEnum._(r'URI');
  static const CAA = DomainNameRecordRecordTypeEnum._(r'CAA');
  static const AVC = DomainNameRecordRecordTypeEnum._(r'AVC');
  static const DOA = DomainNameRecordRecordTypeEnum._(r'DOA');
  static const AMTRELAY = DomainNameRecordRecordTypeEnum._(r'AMTRELAY');
  static const TA = DomainNameRecordRecordTypeEnum._(r'TA');
  static const DLV = DomainNameRecordRecordTypeEnum._(r'DLV');

  /// List of all possible values in this [enum][DomainNameRecordRecordTypeEnum].
  static const values = <DomainNameRecordRecordTypeEnum>[
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

  static DomainNameRecordRecordTypeEnum? fromJson(dynamic value) => DomainNameRecordRecordTypeEnumTypeTransformer().decode(value);

  static List<DomainNameRecordRecordTypeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainNameRecordRecordTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainNameRecordRecordTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DomainNameRecordRecordTypeEnum] to String,
/// and [decode] dynamic data back to [DomainNameRecordRecordTypeEnum].
class DomainNameRecordRecordTypeEnumTypeTransformer {
  factory DomainNameRecordRecordTypeEnumTypeTransformer() => _instance ??= const DomainNameRecordRecordTypeEnumTypeTransformer._();

  const DomainNameRecordRecordTypeEnumTypeTransformer._();

  String encode(DomainNameRecordRecordTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DomainNameRecordRecordTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainNameRecordRecordTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'A': return DomainNameRecordRecordTypeEnum.A;
        case r'NS': return DomainNameRecordRecordTypeEnum.NS;
        case r'MD': return DomainNameRecordRecordTypeEnum.MD;
        case r'MF': return DomainNameRecordRecordTypeEnum.MF;
        case r'CNAME': return DomainNameRecordRecordTypeEnum.CNAME;
        case r'SOA': return DomainNameRecordRecordTypeEnum.SOA;
        case r'MB': return DomainNameRecordRecordTypeEnum.MB;
        case r'MG': return DomainNameRecordRecordTypeEnum.MG;
        case r'MR': return DomainNameRecordRecordTypeEnum.MR;
        case r'NULL': return DomainNameRecordRecordTypeEnum.NULL;
        case r'WKS': return DomainNameRecordRecordTypeEnum.WKS;
        case r'PTR': return DomainNameRecordRecordTypeEnum.PTR;
        case r'HINFO': return DomainNameRecordRecordTypeEnum.HINFO;
        case r'MINFO': return DomainNameRecordRecordTypeEnum.MINFO;
        case r'MX': return DomainNameRecordRecordTypeEnum.MX;
        case r'TXT': return DomainNameRecordRecordTypeEnum.TXT;
        case r'RP': return DomainNameRecordRecordTypeEnum.RP;
        case r'AFSDB': return DomainNameRecordRecordTypeEnum.AFSDB;
        case r'X25': return DomainNameRecordRecordTypeEnum.x25;
        case r'ISDN': return DomainNameRecordRecordTypeEnum.ISDN;
        case r'RT': return DomainNameRecordRecordTypeEnum.RT;
        case r'NSAP': return DomainNameRecordRecordTypeEnum.NSAP;
        case r'NSAP_PTR': return DomainNameRecordRecordTypeEnum.NSAP_PTR;
        case r'SIG': return DomainNameRecordRecordTypeEnum.SIG;
        case r'KEY': return DomainNameRecordRecordTypeEnum.KEY;
        case r'PX': return DomainNameRecordRecordTypeEnum.PX;
        case r'GPOS': return DomainNameRecordRecordTypeEnum.GPOS;
        case r'AAAA': return DomainNameRecordRecordTypeEnum.AAAA;
        case r'LOC': return DomainNameRecordRecordTypeEnum.LOC;
        case r'NXT': return DomainNameRecordRecordTypeEnum.NXT;
        case r'EID': return DomainNameRecordRecordTypeEnum.EID;
        case r'NIMLOC': return DomainNameRecordRecordTypeEnum.NIMLOC;
        case r'SRV': return DomainNameRecordRecordTypeEnum.SRV;
        case r'ATMA': return DomainNameRecordRecordTypeEnum.ATMA;
        case r'NAPTR': return DomainNameRecordRecordTypeEnum.NAPTR;
        case r'KX': return DomainNameRecordRecordTypeEnum.KX;
        case r'CERT': return DomainNameRecordRecordTypeEnum.CERT;
        case r'A6': return DomainNameRecordRecordTypeEnum.a6;
        case r'DNAME': return DomainNameRecordRecordTypeEnum.DNAME;
        case r'SINK': return DomainNameRecordRecordTypeEnum.SINK;
        case r'OPT': return DomainNameRecordRecordTypeEnum.OPT;
        case r'APL': return DomainNameRecordRecordTypeEnum.APL;
        case r'DS': return DomainNameRecordRecordTypeEnum.DS;
        case r'SSHFP': return DomainNameRecordRecordTypeEnum.SSHFP;
        case r'IPSECKEY': return DomainNameRecordRecordTypeEnum.IPSECKEY;
        case r'RRSIG': return DomainNameRecordRecordTypeEnum.RRSIG;
        case r'NSEC': return DomainNameRecordRecordTypeEnum.NSEC;
        case r'DNSKEY': return DomainNameRecordRecordTypeEnum.DNSKEY;
        case r'DHCID': return DomainNameRecordRecordTypeEnum.DHCID;
        case r'NSEC3': return DomainNameRecordRecordTypeEnum.nSEC3;
        case r'NSEC3PARAM': return DomainNameRecordRecordTypeEnum.nSEC3PARAM;
        case r'TLSA': return DomainNameRecordRecordTypeEnum.TLSA;
        case r'SMIMEA': return DomainNameRecordRecordTypeEnum.SMIMEA;
        case r'HIP': return DomainNameRecordRecordTypeEnum.HIP;
        case r'NINFO': return DomainNameRecordRecordTypeEnum.NINFO;
        case r'RKEY': return DomainNameRecordRecordTypeEnum.RKEY;
        case r'TALINK': return DomainNameRecordRecordTypeEnum.TALINK;
        case r'CDS': return DomainNameRecordRecordTypeEnum.CDS;
        case r'CDNSKEY': return DomainNameRecordRecordTypeEnum.CDNSKEY;
        case r'OPENPGPKEY': return DomainNameRecordRecordTypeEnum.OPENPGPKEY;
        case r'CSYNC': return DomainNameRecordRecordTypeEnum.CSYNC;
        case r'ZONEMD': return DomainNameRecordRecordTypeEnum.ZONEMD;
        case r'SVCB': return DomainNameRecordRecordTypeEnum.SVCB;
        case r'HTTPS': return DomainNameRecordRecordTypeEnum.HTTPS;
        case r'SPF': return DomainNameRecordRecordTypeEnum.SPF;
        case r'UINFO': return DomainNameRecordRecordTypeEnum.UINFO;
        case r'UID': return DomainNameRecordRecordTypeEnum.UID;
        case r'GID': return DomainNameRecordRecordTypeEnum.GID;
        case r'UNSPEC': return DomainNameRecordRecordTypeEnum.UNSPEC;
        case r'NID': return DomainNameRecordRecordTypeEnum.NID;
        case r'L32': return DomainNameRecordRecordTypeEnum.l32;
        case r'L64': return DomainNameRecordRecordTypeEnum.l64;
        case r'LP': return DomainNameRecordRecordTypeEnum.LP;
        case r'EUI48': return DomainNameRecordRecordTypeEnum.eUI48;
        case r'EUI64': return DomainNameRecordRecordTypeEnum.eUI64;
        case r'TKEY': return DomainNameRecordRecordTypeEnum.TKEY;
        case r'TSIG': return DomainNameRecordRecordTypeEnum.TSIG;
        case r'IXFR': return DomainNameRecordRecordTypeEnum.IXFR;
        case r'AXFR': return DomainNameRecordRecordTypeEnum.AXFR;
        case r'MAILB': return DomainNameRecordRecordTypeEnum.MAILB;
        case r'MAILA': return DomainNameRecordRecordTypeEnum.MAILA;
        case r'ANY': return DomainNameRecordRecordTypeEnum.ANY;
        case r'URI': return DomainNameRecordRecordTypeEnum.URI;
        case r'CAA': return DomainNameRecordRecordTypeEnum.CAA;
        case r'AVC': return DomainNameRecordRecordTypeEnum.AVC;
        case r'DOA': return DomainNameRecordRecordTypeEnum.DOA;
        case r'AMTRELAY': return DomainNameRecordRecordTypeEnum.AMTRELAY;
        case r'TA': return DomainNameRecordRecordTypeEnum.TA;
        case r'DLV': return DomainNameRecordRecordTypeEnum.DLV;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DomainNameRecordRecordTypeEnumTypeTransformer] instance.
  static DomainNameRecordRecordTypeEnumTypeTransformer? _instance;
}


