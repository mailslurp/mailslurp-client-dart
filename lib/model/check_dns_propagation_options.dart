//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CheckDnsPropagationOptions {
  /// Returns a new [CheckDnsPropagationOptions] instance.
  CheckDnsPropagationOptions({
    required this.host,
    required this.recordType,
    this.expectedValue,
    this.captchaToken,
  });

  String host;

  /// Domain Name Server Record Types
  CheckDnsPropagationOptionsRecordTypeEnum recordType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? expectedValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? captchaToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CheckDnsPropagationOptions &&
     other.host == host &&
     other.recordType == recordType &&
     other.expectedValue == expectedValue &&
     other.captchaToken == captchaToken;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (host.hashCode) +
    (recordType.hashCode) +
    (expectedValue == null ? 0 : expectedValue!.hashCode) +
    (captchaToken == null ? 0 : captchaToken!.hashCode);

  @override
  String toString() => 'CheckDnsPropagationOptions[host=$host, recordType=$recordType, expectedValue=$expectedValue, captchaToken=$captchaToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'host'] = this.host;
      json[r'recordType'] = this.recordType;
    if (this.expectedValue != null) {
      json[r'expectedValue'] = this.expectedValue;
    } else {
      json[r'expectedValue'] = null;
    }
    if (this.captchaToken != null) {
      json[r'captchaToken'] = this.captchaToken;
    } else {
      json[r'captchaToken'] = null;
    }
    return json;
  }

  /// Returns a new [CheckDnsPropagationOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CheckDnsPropagationOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CheckDnsPropagationOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CheckDnsPropagationOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CheckDnsPropagationOptions(
        host: mapValueOfType<String>(json, r'host')!,
        recordType: CheckDnsPropagationOptionsRecordTypeEnum.fromJson(json[r'recordType'])!,
        expectedValue: mapValueOfType<String>(json, r'expectedValue'),
        captchaToken: mapValueOfType<String>(json, r'captchaToken'),
      );
    }
    return null;
  }

  static List<CheckDnsPropagationOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CheckDnsPropagationOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CheckDnsPropagationOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CheckDnsPropagationOptions> mapFromJson(dynamic json) {
    final map = <String, CheckDnsPropagationOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CheckDnsPropagationOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CheckDnsPropagationOptions-objects as value to a dart map
  static Map<String, List<CheckDnsPropagationOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CheckDnsPropagationOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CheckDnsPropagationOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'host',
    'recordType',
  };
}

/// Domain Name Server Record Types
class CheckDnsPropagationOptionsRecordTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CheckDnsPropagationOptionsRecordTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const A = CheckDnsPropagationOptionsRecordTypeEnum._(r'A');
  static const NS = CheckDnsPropagationOptionsRecordTypeEnum._(r'NS');
  static const MD = CheckDnsPropagationOptionsRecordTypeEnum._(r'MD');
  static const MF = CheckDnsPropagationOptionsRecordTypeEnum._(r'MF');
  static const CNAME = CheckDnsPropagationOptionsRecordTypeEnum._(r'CNAME');
  static const SOA = CheckDnsPropagationOptionsRecordTypeEnum._(r'SOA');
  static const MB = CheckDnsPropagationOptionsRecordTypeEnum._(r'MB');
  static const MG = CheckDnsPropagationOptionsRecordTypeEnum._(r'MG');
  static const MR = CheckDnsPropagationOptionsRecordTypeEnum._(r'MR');
  static const NULL = CheckDnsPropagationOptionsRecordTypeEnum._(r'NULL');
  static const WKS = CheckDnsPropagationOptionsRecordTypeEnum._(r'WKS');
  static const PTR = CheckDnsPropagationOptionsRecordTypeEnum._(r'PTR');
  static const HINFO = CheckDnsPropagationOptionsRecordTypeEnum._(r'HINFO');
  static const MINFO = CheckDnsPropagationOptionsRecordTypeEnum._(r'MINFO');
  static const MX = CheckDnsPropagationOptionsRecordTypeEnum._(r'MX');
  static const TXT = CheckDnsPropagationOptionsRecordTypeEnum._(r'TXT');
  static const RP = CheckDnsPropagationOptionsRecordTypeEnum._(r'RP');
  static const AFSDB = CheckDnsPropagationOptionsRecordTypeEnum._(r'AFSDB');
  static const x25 = CheckDnsPropagationOptionsRecordTypeEnum._(r'X25');
  static const ISDN = CheckDnsPropagationOptionsRecordTypeEnum._(r'ISDN');
  static const RT = CheckDnsPropagationOptionsRecordTypeEnum._(r'RT');
  static const NSAP = CheckDnsPropagationOptionsRecordTypeEnum._(r'NSAP');
  static const NSAP_PTR = CheckDnsPropagationOptionsRecordTypeEnum._(r'NSAP_PTR');
  static const SIG = CheckDnsPropagationOptionsRecordTypeEnum._(r'SIG');
  static const KEY = CheckDnsPropagationOptionsRecordTypeEnum._(r'KEY');
  static const PX = CheckDnsPropagationOptionsRecordTypeEnum._(r'PX');
  static const GPOS = CheckDnsPropagationOptionsRecordTypeEnum._(r'GPOS');
  static const AAAA = CheckDnsPropagationOptionsRecordTypeEnum._(r'AAAA');
  static const LOC = CheckDnsPropagationOptionsRecordTypeEnum._(r'LOC');
  static const NXT = CheckDnsPropagationOptionsRecordTypeEnum._(r'NXT');
  static const EID = CheckDnsPropagationOptionsRecordTypeEnum._(r'EID');
  static const NIMLOC = CheckDnsPropagationOptionsRecordTypeEnum._(r'NIMLOC');
  static const SRV = CheckDnsPropagationOptionsRecordTypeEnum._(r'SRV');
  static const ATMA = CheckDnsPropagationOptionsRecordTypeEnum._(r'ATMA');
  static const NAPTR = CheckDnsPropagationOptionsRecordTypeEnum._(r'NAPTR');
  static const KX = CheckDnsPropagationOptionsRecordTypeEnum._(r'KX');
  static const CERT = CheckDnsPropagationOptionsRecordTypeEnum._(r'CERT');
  static const a6 = CheckDnsPropagationOptionsRecordTypeEnum._(r'A6');
  static const DNAME = CheckDnsPropagationOptionsRecordTypeEnum._(r'DNAME');
  static const SINK = CheckDnsPropagationOptionsRecordTypeEnum._(r'SINK');
  static const OPT = CheckDnsPropagationOptionsRecordTypeEnum._(r'OPT');
  static const APL = CheckDnsPropagationOptionsRecordTypeEnum._(r'APL');
  static const DS = CheckDnsPropagationOptionsRecordTypeEnum._(r'DS');
  static const SSHFP = CheckDnsPropagationOptionsRecordTypeEnum._(r'SSHFP');
  static const IPSECKEY = CheckDnsPropagationOptionsRecordTypeEnum._(r'IPSECKEY');
  static const RRSIG = CheckDnsPropagationOptionsRecordTypeEnum._(r'RRSIG');
  static const NSEC = CheckDnsPropagationOptionsRecordTypeEnum._(r'NSEC');
  static const DNSKEY = CheckDnsPropagationOptionsRecordTypeEnum._(r'DNSKEY');
  static const DHCID = CheckDnsPropagationOptionsRecordTypeEnum._(r'DHCID');
  static const nSEC3 = CheckDnsPropagationOptionsRecordTypeEnum._(r'NSEC3');
  static const nSEC3PARAM = CheckDnsPropagationOptionsRecordTypeEnum._(r'NSEC3PARAM');
  static const TLSA = CheckDnsPropagationOptionsRecordTypeEnum._(r'TLSA');
  static const SMIMEA = CheckDnsPropagationOptionsRecordTypeEnum._(r'SMIMEA');
  static const HIP = CheckDnsPropagationOptionsRecordTypeEnum._(r'HIP');
  static const NINFO = CheckDnsPropagationOptionsRecordTypeEnum._(r'NINFO');
  static const RKEY = CheckDnsPropagationOptionsRecordTypeEnum._(r'RKEY');
  static const TALINK = CheckDnsPropagationOptionsRecordTypeEnum._(r'TALINK');
  static const CDS = CheckDnsPropagationOptionsRecordTypeEnum._(r'CDS');
  static const CDNSKEY = CheckDnsPropagationOptionsRecordTypeEnum._(r'CDNSKEY');
  static const OPENPGPKEY = CheckDnsPropagationOptionsRecordTypeEnum._(r'OPENPGPKEY');
  static const CSYNC = CheckDnsPropagationOptionsRecordTypeEnum._(r'CSYNC');
  static const ZONEMD = CheckDnsPropagationOptionsRecordTypeEnum._(r'ZONEMD');
  static const SVCB = CheckDnsPropagationOptionsRecordTypeEnum._(r'SVCB');
  static const HTTPS = CheckDnsPropagationOptionsRecordTypeEnum._(r'HTTPS');
  static const SPF = CheckDnsPropagationOptionsRecordTypeEnum._(r'SPF');
  static const UINFO = CheckDnsPropagationOptionsRecordTypeEnum._(r'UINFO');
  static const UID = CheckDnsPropagationOptionsRecordTypeEnum._(r'UID');
  static const GID = CheckDnsPropagationOptionsRecordTypeEnum._(r'GID');
  static const UNSPEC = CheckDnsPropagationOptionsRecordTypeEnum._(r'UNSPEC');
  static const NID = CheckDnsPropagationOptionsRecordTypeEnum._(r'NID');
  static const l32 = CheckDnsPropagationOptionsRecordTypeEnum._(r'L32');
  static const l64 = CheckDnsPropagationOptionsRecordTypeEnum._(r'L64');
  static const LP = CheckDnsPropagationOptionsRecordTypeEnum._(r'LP');
  static const eUI48 = CheckDnsPropagationOptionsRecordTypeEnum._(r'EUI48');
  static const eUI64 = CheckDnsPropagationOptionsRecordTypeEnum._(r'EUI64');
  static const TKEY = CheckDnsPropagationOptionsRecordTypeEnum._(r'TKEY');
  static const TSIG = CheckDnsPropagationOptionsRecordTypeEnum._(r'TSIG');
  static const IXFR = CheckDnsPropagationOptionsRecordTypeEnum._(r'IXFR');
  static const AXFR = CheckDnsPropagationOptionsRecordTypeEnum._(r'AXFR');
  static const MAILB = CheckDnsPropagationOptionsRecordTypeEnum._(r'MAILB');
  static const MAILA = CheckDnsPropagationOptionsRecordTypeEnum._(r'MAILA');
  static const ANY = CheckDnsPropagationOptionsRecordTypeEnum._(r'ANY');
  static const URI = CheckDnsPropagationOptionsRecordTypeEnum._(r'URI');
  static const CAA = CheckDnsPropagationOptionsRecordTypeEnum._(r'CAA');
  static const AVC = CheckDnsPropagationOptionsRecordTypeEnum._(r'AVC');
  static const DOA = CheckDnsPropagationOptionsRecordTypeEnum._(r'DOA');
  static const AMTRELAY = CheckDnsPropagationOptionsRecordTypeEnum._(r'AMTRELAY');
  static const TA = CheckDnsPropagationOptionsRecordTypeEnum._(r'TA');
  static const DLV = CheckDnsPropagationOptionsRecordTypeEnum._(r'DLV');

  /// List of all possible values in this [enum][CheckDnsPropagationOptionsRecordTypeEnum].
  static const values = <CheckDnsPropagationOptionsRecordTypeEnum>[
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

  static CheckDnsPropagationOptionsRecordTypeEnum? fromJson(dynamic value) => CheckDnsPropagationOptionsRecordTypeEnumTypeTransformer().decode(value);

  static List<CheckDnsPropagationOptionsRecordTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CheckDnsPropagationOptionsRecordTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CheckDnsPropagationOptionsRecordTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CheckDnsPropagationOptionsRecordTypeEnum] to String,
/// and [decode] dynamic data back to [CheckDnsPropagationOptionsRecordTypeEnum].
class CheckDnsPropagationOptionsRecordTypeEnumTypeTransformer {
  factory CheckDnsPropagationOptionsRecordTypeEnumTypeTransformer() => _instance ??= const CheckDnsPropagationOptionsRecordTypeEnumTypeTransformer._();

  const CheckDnsPropagationOptionsRecordTypeEnumTypeTransformer._();

  String encode(CheckDnsPropagationOptionsRecordTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CheckDnsPropagationOptionsRecordTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CheckDnsPropagationOptionsRecordTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'A': return CheckDnsPropagationOptionsRecordTypeEnum.A;
        case r'NS': return CheckDnsPropagationOptionsRecordTypeEnum.NS;
        case r'MD': return CheckDnsPropagationOptionsRecordTypeEnum.MD;
        case r'MF': return CheckDnsPropagationOptionsRecordTypeEnum.MF;
        case r'CNAME': return CheckDnsPropagationOptionsRecordTypeEnum.CNAME;
        case r'SOA': return CheckDnsPropagationOptionsRecordTypeEnum.SOA;
        case r'MB': return CheckDnsPropagationOptionsRecordTypeEnum.MB;
        case r'MG': return CheckDnsPropagationOptionsRecordTypeEnum.MG;
        case r'MR': return CheckDnsPropagationOptionsRecordTypeEnum.MR;
        case r'NULL': return CheckDnsPropagationOptionsRecordTypeEnum.NULL;
        case r'WKS': return CheckDnsPropagationOptionsRecordTypeEnum.WKS;
        case r'PTR': return CheckDnsPropagationOptionsRecordTypeEnum.PTR;
        case r'HINFO': return CheckDnsPropagationOptionsRecordTypeEnum.HINFO;
        case r'MINFO': return CheckDnsPropagationOptionsRecordTypeEnum.MINFO;
        case r'MX': return CheckDnsPropagationOptionsRecordTypeEnum.MX;
        case r'TXT': return CheckDnsPropagationOptionsRecordTypeEnum.TXT;
        case r'RP': return CheckDnsPropagationOptionsRecordTypeEnum.RP;
        case r'AFSDB': return CheckDnsPropagationOptionsRecordTypeEnum.AFSDB;
        case r'X25': return CheckDnsPropagationOptionsRecordTypeEnum.x25;
        case r'ISDN': return CheckDnsPropagationOptionsRecordTypeEnum.ISDN;
        case r'RT': return CheckDnsPropagationOptionsRecordTypeEnum.RT;
        case r'NSAP': return CheckDnsPropagationOptionsRecordTypeEnum.NSAP;
        case r'NSAP_PTR': return CheckDnsPropagationOptionsRecordTypeEnum.NSAP_PTR;
        case r'SIG': return CheckDnsPropagationOptionsRecordTypeEnum.SIG;
        case r'KEY': return CheckDnsPropagationOptionsRecordTypeEnum.KEY;
        case r'PX': return CheckDnsPropagationOptionsRecordTypeEnum.PX;
        case r'GPOS': return CheckDnsPropagationOptionsRecordTypeEnum.GPOS;
        case r'AAAA': return CheckDnsPropagationOptionsRecordTypeEnum.AAAA;
        case r'LOC': return CheckDnsPropagationOptionsRecordTypeEnum.LOC;
        case r'NXT': return CheckDnsPropagationOptionsRecordTypeEnum.NXT;
        case r'EID': return CheckDnsPropagationOptionsRecordTypeEnum.EID;
        case r'NIMLOC': return CheckDnsPropagationOptionsRecordTypeEnum.NIMLOC;
        case r'SRV': return CheckDnsPropagationOptionsRecordTypeEnum.SRV;
        case r'ATMA': return CheckDnsPropagationOptionsRecordTypeEnum.ATMA;
        case r'NAPTR': return CheckDnsPropagationOptionsRecordTypeEnum.NAPTR;
        case r'KX': return CheckDnsPropagationOptionsRecordTypeEnum.KX;
        case r'CERT': return CheckDnsPropagationOptionsRecordTypeEnum.CERT;
        case r'A6': return CheckDnsPropagationOptionsRecordTypeEnum.a6;
        case r'DNAME': return CheckDnsPropagationOptionsRecordTypeEnum.DNAME;
        case r'SINK': return CheckDnsPropagationOptionsRecordTypeEnum.SINK;
        case r'OPT': return CheckDnsPropagationOptionsRecordTypeEnum.OPT;
        case r'APL': return CheckDnsPropagationOptionsRecordTypeEnum.APL;
        case r'DS': return CheckDnsPropagationOptionsRecordTypeEnum.DS;
        case r'SSHFP': return CheckDnsPropagationOptionsRecordTypeEnum.SSHFP;
        case r'IPSECKEY': return CheckDnsPropagationOptionsRecordTypeEnum.IPSECKEY;
        case r'RRSIG': return CheckDnsPropagationOptionsRecordTypeEnum.RRSIG;
        case r'NSEC': return CheckDnsPropagationOptionsRecordTypeEnum.NSEC;
        case r'DNSKEY': return CheckDnsPropagationOptionsRecordTypeEnum.DNSKEY;
        case r'DHCID': return CheckDnsPropagationOptionsRecordTypeEnum.DHCID;
        case r'NSEC3': return CheckDnsPropagationOptionsRecordTypeEnum.nSEC3;
        case r'NSEC3PARAM': return CheckDnsPropagationOptionsRecordTypeEnum.nSEC3PARAM;
        case r'TLSA': return CheckDnsPropagationOptionsRecordTypeEnum.TLSA;
        case r'SMIMEA': return CheckDnsPropagationOptionsRecordTypeEnum.SMIMEA;
        case r'HIP': return CheckDnsPropagationOptionsRecordTypeEnum.HIP;
        case r'NINFO': return CheckDnsPropagationOptionsRecordTypeEnum.NINFO;
        case r'RKEY': return CheckDnsPropagationOptionsRecordTypeEnum.RKEY;
        case r'TALINK': return CheckDnsPropagationOptionsRecordTypeEnum.TALINK;
        case r'CDS': return CheckDnsPropagationOptionsRecordTypeEnum.CDS;
        case r'CDNSKEY': return CheckDnsPropagationOptionsRecordTypeEnum.CDNSKEY;
        case r'OPENPGPKEY': return CheckDnsPropagationOptionsRecordTypeEnum.OPENPGPKEY;
        case r'CSYNC': return CheckDnsPropagationOptionsRecordTypeEnum.CSYNC;
        case r'ZONEMD': return CheckDnsPropagationOptionsRecordTypeEnum.ZONEMD;
        case r'SVCB': return CheckDnsPropagationOptionsRecordTypeEnum.SVCB;
        case r'HTTPS': return CheckDnsPropagationOptionsRecordTypeEnum.HTTPS;
        case r'SPF': return CheckDnsPropagationOptionsRecordTypeEnum.SPF;
        case r'UINFO': return CheckDnsPropagationOptionsRecordTypeEnum.UINFO;
        case r'UID': return CheckDnsPropagationOptionsRecordTypeEnum.UID;
        case r'GID': return CheckDnsPropagationOptionsRecordTypeEnum.GID;
        case r'UNSPEC': return CheckDnsPropagationOptionsRecordTypeEnum.UNSPEC;
        case r'NID': return CheckDnsPropagationOptionsRecordTypeEnum.NID;
        case r'L32': return CheckDnsPropagationOptionsRecordTypeEnum.l32;
        case r'L64': return CheckDnsPropagationOptionsRecordTypeEnum.l64;
        case r'LP': return CheckDnsPropagationOptionsRecordTypeEnum.LP;
        case r'EUI48': return CheckDnsPropagationOptionsRecordTypeEnum.eUI48;
        case r'EUI64': return CheckDnsPropagationOptionsRecordTypeEnum.eUI64;
        case r'TKEY': return CheckDnsPropagationOptionsRecordTypeEnum.TKEY;
        case r'TSIG': return CheckDnsPropagationOptionsRecordTypeEnum.TSIG;
        case r'IXFR': return CheckDnsPropagationOptionsRecordTypeEnum.IXFR;
        case r'AXFR': return CheckDnsPropagationOptionsRecordTypeEnum.AXFR;
        case r'MAILB': return CheckDnsPropagationOptionsRecordTypeEnum.MAILB;
        case r'MAILA': return CheckDnsPropagationOptionsRecordTypeEnum.MAILA;
        case r'ANY': return CheckDnsPropagationOptionsRecordTypeEnum.ANY;
        case r'URI': return CheckDnsPropagationOptionsRecordTypeEnum.URI;
        case r'CAA': return CheckDnsPropagationOptionsRecordTypeEnum.CAA;
        case r'AVC': return CheckDnsPropagationOptionsRecordTypeEnum.AVC;
        case r'DOA': return CheckDnsPropagationOptionsRecordTypeEnum.DOA;
        case r'AMTRELAY': return CheckDnsPropagationOptionsRecordTypeEnum.AMTRELAY;
        case r'TA': return CheckDnsPropagationOptionsRecordTypeEnum.TA;
        case r'DLV': return CheckDnsPropagationOptionsRecordTypeEnum.DLV;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CheckDnsPropagationOptionsRecordTypeEnumTypeTransformer] instance.
  static CheckDnsPropagationOptionsRecordTypeEnumTypeTransformer? _instance;
}


