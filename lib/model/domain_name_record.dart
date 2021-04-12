part of mailslurp.api;

class DomainNameRecord {
  
  String name = null;
  
  List<String> recordEntries = [];
  
  String recordType = null;
  //enum recordTypeEnum {  A,  NS,  MD,  MF,  CNAME,  SOA,  MB,  MG,  MR,  NULL,  WKS,  PTR,  HINFO,  MINFO,  MX,  TXT,  RP,  AFSDB,  X25,  ISDN,  RT,  NSAP,  NSAP_PTR,  SIG,  KEY,  PX,  GPOS,  AAAA,  LOC,  NXT,  EID,  NIMLOC,  SRV,  ATMA,  NAPTR,  KX,  CERT,  A6,  DNAME,  SINK,  OPT,  APL,  DS,  SSHFP,  IPSECKEY,  RRSIG,  NSEC,  DNSKEY,  DHCID,  NSEC3,  NSEC3PARAM,  TLSA,  SMIMEA,  HIP,  NINFO,  RKEY,  TALINK,  CDS,  CDNSKEY,  OPENPGPKEY,  CSYNC,  ZONEMD,  SVCB,  HTTPS,  SPF,  UINFO,  UID,  GID,  UNSPEC,  NID,  L32,  L64,  LP,  EUI48,  EUI64,  TKEY,  TSIG,  IXFR,  AXFR,  MAILB,  MAILA,  ANY,  URI,  CAA,  AVC,  DOA,  AMTRELAY,  TA,  DLV,  };{
  
  int ttl = null;
  DomainNameRecord();

  @override
  String toString() {
    return 'DomainNameRecord[name=$name, recordEntries=$recordEntries, recordType=$recordType, ttl=$ttl, ]';
  }

  DomainNameRecord.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    recordEntries = (json['recordEntries'] == null) ?
      null :
      (json['recordEntries'] as List).cast<String>();
    recordType = json['recordType'];
    ttl = json['ttl'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (recordEntries != null)
      json['recordEntries'] = recordEntries;
    if (recordType != null)
      json['recordType'] = recordType;
    if (ttl != null)
      json['ttl'] = ttl;
    return json;
  }

  static List<DomainNameRecord> listFromJson(List<dynamic> json) {
    return json == null ? List<DomainNameRecord>() : json.map((value) => DomainNameRecord.fromJson(value)).toList();
  }

  static Map<String, DomainNameRecord> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DomainNameRecord>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DomainNameRecord.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DomainNameRecord-objects as value to a dart map
  static Map<String, List<DomainNameRecord>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DomainNameRecord>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DomainNameRecord.listFromJson(value);
       });
     }
     return map;
  }
}

