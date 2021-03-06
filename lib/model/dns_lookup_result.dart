part of mailslurp.api;

class DNSLookupResult {
  
  String name = null;
  
  List<String> recordEntries = [];
  
  String recordType = null;
  //enum recordTypeEnum {  A,  NS,  MD,  MF,  CNAME,  SOA,  MB,  MG,  MR,  NULL,  WKS,  PTR,  HINFO,  MINFO,  MX,  TXT,  RP,  AFSDB,  X25,  ISDN,  RT,  NSAP,  NSAP_PTR,  SIG,  KEY,  PX,  GPOS,  AAAA,  LOC,  NXT,  EID,  NIMLOC,  SRV,  ATMA,  NAPTR,  KX,  CERT,  A6,  DNAME,  SINK,  OPT,  APL,  DS,  SSHFP,  IPSECKEY,  RRSIG,  NSEC,  DNSKEY,  DHCID,  NSEC3,  NSEC3PARAM,  TLSA,  SMIMEA,  HIP,  NINFO,  RKEY,  TALINK,  CDS,  CDNSKEY,  OPENPGPKEY,  CSYNC,  ZONEMD,  SVCB,  HTTPS,  SPF,  UINFO,  UID,  GID,  UNSPEC,  NID,  L32,  L64,  LP,  EUI48,  EUI64,  TKEY,  TSIG,  IXFR,  AXFR,  MAILB,  MAILA,  ANY,  URI,  CAA,  AVC,  DOA,  AMTRELAY,  TA,  DLV,  };{
  
  int ttl = null;
  DNSLookupResult();

  @override
  String toString() {
    return 'DNSLookupResult[name=$name, recordEntries=$recordEntries, recordType=$recordType, ttl=$ttl, ]';
  }

  DNSLookupResult.fromJson(Map<String, dynamic> json) {
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

  static List<DNSLookupResult> listFromJson(List<dynamic> json) {
    return json == null ? List<DNSLookupResult>() : json.map((value) => DNSLookupResult.fromJson(value)).toList();
  }

  static Map<String, DNSLookupResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DNSLookupResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DNSLookupResult.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DNSLookupResult-objects as value to a dart map
  static Map<String, List<DNSLookupResult>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DNSLookupResult>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DNSLookupResult.listFromJson(value);
       });
     }
     return map;
  }
}

